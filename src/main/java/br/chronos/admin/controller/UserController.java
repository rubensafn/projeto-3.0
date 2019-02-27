package br.chronos.admin.controller;

import java.security.Principal;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.chronos.admin.entity.Log;
import br.chronos.admin.entity.User;
import br.chronos.admin.service.LogService;
import br.chronos.admin.service.RoleService;
import br.chronos.admin.service.UserService;
import br.util.Mail;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;

	@Autowired
	private LogService logService;

	@RequestMapping(value = "/users")
	public String showUsers(Model model, Principal principal, HttpServletRequest request, Authentication authentication,
			@RequestParam(defaultValue = "0") Integer pageNumber) {
		if (principal == null)
			return "redirect:/login.html?authenticate=false";

		boolean isAdmin = false;
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		for (GrantedAuthority grantedAuthority : authorities) {
			if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
				isAdmin = true;
				break;
			}
		}
		if (!isAdmin)
			return "redirect:/error-403.html";

		try {
			model.addAttribute("users", userService.findAll(pageNumber));
			model.addAttribute("pgNumber", pageNumber);

			Log log = new Log();
			log.setTipo("READ");
			log.setResumo("ENTRANDO NA PAGINA DE USUARIOS");
			log.setUser(principal.getName());
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "users";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}

	@RequestMapping(value = "/user-register", method = RequestMethod.GET)
	public String showRegister(Model model, Principal principal, HttpServletRequest request,
			Authentication authentication) {
		if (principal == null)
			return "redirect:/login.html?authenticate=false";

		boolean isAdmin = false;
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		for (GrantedAuthority grantedAuthority : authorities) {
			if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
				isAdmin = true;
				break;
			}
		}
		if (!isAdmin)
			return "redirect:/error-403.html";

		try {
			model.addAttribute("user", new User());
			model.addAttribute("roles", roleService.findAll(0));

			Log log = new Log();
			log.setTipo("CREATE");
			log.setResumo("ENTRANDO NA PAGINA DE CADASTRO DE USUARIOS");
			log.setUser(principal.getName());
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "user-register";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}

	@RequestMapping(value = "/user-update/{id}", method = RequestMethod.GET)
	public String showUpdate(Model model, Principal principal, HttpServletRequest request,
			Authentication authentication, @PathVariable Integer id) {
		if (principal == null)
			return "redirect:/login.html?authenticate=false";

		boolean isAdmin = false;
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		for (GrantedAuthority grantedAuthority : authorities) {
			if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
				isAdmin = true;
				break;
			}
		}
		if (!isAdmin)
			return "redirect:/error-403.html";

		try {
			model.addAttribute("user", userService.findOne(id));
			model.addAttribute("roles", roleService.findAll(0));

			Log log = new Log();
			log.setTipo("UPDATE");
			log.setResumo("ENTRANDO NA PAGINA DE ATUALIZAÇÃO DO USUARIO (" + id + ")");
			log.setUser(principal.getName());
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "user-register";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}

	@RequestMapping(value = "/user-register", method = RequestMethod.POST)
	public String doRegister(Model model, Principal principal, HttpServletRequest request,
			Authentication authentication, @ModelAttribute("user") User user,
			@RequestParam(required = false) String psWord, @RequestParam List<Integer> idRoles) {
		if (principal == null)
			return "redirect:/login.html?authenticate=false";

		boolean isAdmin = false;
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		for (GrantedAuthority grantedAuthority : authorities) {
			if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
				isAdmin = true;
				break;
			}
		}
		if (!isAdmin)
			return "redirect:/error-403.html";

		try {
			Boolean isRegister = false;
			if (user.getId() == null) {
				isRegister = true;
				user.setFirstTimeLogin(true);
				user.setDtCadastro(Calendar.getInstance());
			} else {
				user.setDtCadastro(userService.findOne(user.getId()).getDtCadastro());
				user.setDtAlteracao(Calendar.getInstance());
			}

			if (psWord != null && !psWord.isEmpty()) {
				BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
				user.setPassword(encoder.encode(psWord));
			}

			user.setRoles(roleService.findByIdIn(idRoles));
			userService.save(user);

			Log log = new Log();
			if (isRegister) {
				log.setTipo("CREATE");
				log.setResumo("CADASTRANDO USUARIO (" + user.getId() + ")");
			} else {
				log.setTipo("UPDATE");
				log.setResumo("ATUALIZANDO USUARIO (" + user.getId() + ")");
			}
			log.setUser(principal.getName());
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "redirect:/users.html";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}

	@RequestMapping(value = "/user-detail/{id}", method = RequestMethod.GET)
	public String userDetail(Model model, Principal principal, HttpServletRequest request,
			Authentication authentication, @PathVariable Integer id) {
		if (principal == null)
			return "redirect:/login.html?authenticate=false";

		boolean isAdmin = false;
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		for (GrantedAuthority grantedAuthority : authorities) {
			if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
				isAdmin = true;
				break;
			}
		}

		if (!isAdmin)
			return "redirect:/error-403.html";

		try {
			User user = userService.findOne(id);

			model.addAttribute("user", user);

			Log log = new Log();
			log.setTipo("READ");
			log.setResumo("ENTRANDO NA PAGINA DE DETALHE DO USUARIO (" + id + ")");
			log.setUser(principal.getName());
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "user-detail";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}

	@RequestMapping(value = "/user-profile", method = RequestMethod.GET)
	public String userProfile(Model model, Principal principal, HttpServletRequest request,
			Authentication authentication) {
		if (principal == null)
			return "redirect:/login.html?authenticate=false";

		try {
			User user = userService.findByIdLegal(principal.getName());
			model.addAttribute("user", user);

			Log log = new Log();
			log.setTipo("READ");
			log.setResumo("ENTRANDO NA PAGINA DE PERFIL DO USUARIO (" + principal.getName() + ")");
			log.setUser(principal.getName());
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "user-detail";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}

	@RequestMapping(value = "/user-password-recovery", method = RequestMethod.GET)
	public String showPasswordRecovery(Model model, Principal principal, HttpServletRequest request) {
		try {
			Log log = new Log();
			log.setTipo("READ");
			log.setResumo("ENTRANDO NA PAGINA DE RECUPERAÇÃO DE SENHA");

			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "user-password-recovery";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}

	@RequestMapping(value = "/user-password-recovery", method = RequestMethod.POST)
	public String doPasswordRecovery(Model model, Principal principal, HttpServletRequest request,
			@RequestParam String idLegal) {
		try {
			Integer nextInt = new Random().nextInt(1000);
			Integer randomNumber = nextInt * new Random().nextInt(1000);

			Integer token = randomNumber;

			User user = userService.findByIdLegal(idLegal);
			user.setToken(token);

			userService.save(user);

			new Mail().sendMailPasswordRecovery(user.getEmail(), token.toString());

			Log log = new Log();
			log.setTipo("UPDATE");
			log.setResumo("ENVIANDO EMAIL DE RECUPERAÇÃO DE SENHA (" + idLegal + ")");

			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "redirect:/user-has-token.html";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}

	@RequestMapping(value = "/user-has-token", method = RequestMethod.GET)
	public String showUserHasToken(Model model, Principal principal, HttpServletRequest request) {
		try {

			Log log = new Log();
			log.setTipo("UPDATE");
			log.setResumo("ENTRANDO NA PAGINA DE RECUPERAÇÃO COM TOKEN");
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "user-has-token";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}

	@RequestMapping(value = "/user-has-token", method = RequestMethod.POST)
	public String doUserHasToken(Model model, Principal principal, HttpServletRequest request,
			@RequestParam String idLegal, @RequestParam Integer token, @RequestParam String password) {
		try {

			User user = userService.findByIdLegal(idLegal);

			if (!user.getToken().equals(token))
				return "redirect:/user-has-token.html?tokenWrong=true";

			user.setPassword(new BCryptPasswordEncoder().encode(password));
			userService.save(user);

			Log log = new Log();
			log.setTipo("UPDATE");
			log.setResumo("ATUALIZANDO SENHA (" + idLegal + ")");
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "redirect:/login.html?passwordChange=true";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}
}
