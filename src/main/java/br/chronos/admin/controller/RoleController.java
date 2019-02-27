package br.chronos.admin.controller;

import java.security.Principal;
import java.util.Calendar;
import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.chronos.admin.entity.Log;
import br.chronos.admin.entity.Role;
import br.chronos.admin.service.LogService;
import br.chronos.admin.service.RoleService;

@Controller
public class RoleController {
	@Autowired
	private RoleService roleService;

	@Autowired
	private LogService logService;

	@RequestMapping(value = "/roles")
	public String showRoles(Model model, Principal principal, HttpServletRequest request, Authentication authentication,
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
			model.addAttribute("roles", roleService.findAll(pageNumber));

			Log log = new Log();
			log.setTipo("READ");
			log.setResumo("ENTRANDO NA PAGINA DE ROLES");
			log.setUser(principal.getName());
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "roles";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}

	@RequestMapping(value = "/role-register", method = RequestMethod.GET)
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
			model.addAttribute("role", new Role());

			Log log = new Log();
			log.setTipo("CREATE");
			log.setResumo("ENTRANDO NA PAGINA DE CADASTRO DE ROLES");
			log.setUser(principal.getName());
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "role-register";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}

	@RequestMapping(value = "/role-register", method = RequestMethod.POST)
	public String doRegister(Model model, Principal principal, HttpServletRequest request,
			Authentication authentication, @ModelAttribute("role") Role role) {
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
			roleService.save(role);

			Log log = new Log();
			log.setTipo("CREATE");
			log.setResumo("CADASTRANDO ROLE (" + role.getId() + ")");
			log.setUser(principal.getName());
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			return "redirect:/roles.html";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}
}
