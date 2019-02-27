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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.chronos.admin.entity.Log;
import br.chronos.admin.service.LogService;
import br.util.DateConverter;

@Controller
public class LogController {
	@Autowired
	private LogService logService;

	@RequestMapping(value = "logs")
	public String showLogs(Model model, Principal principal, HttpServletRequest request, Authentication authentication,
			@RequestParam(defaultValue = "0") Integer pageNumber, @RequestParam(required = false) String dtInicial,
			@RequestParam(required = false) String dtFinal) {
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
			Calendar dataInicial = Calendar.getInstance();
			Calendar dataFinal = Calendar.getInstance();
			if (dtInicial != null) {
				dataInicial = DateConverter.stringTimeToCalendar(dtInicial.replace("T", " "));
			} else {
				dataInicial.set(Calendar.HOUR_OF_DAY, 0);
				dataInicial.set(Calendar.MINUTE, 0);
			}
			if (dtFinal != null) {
				dataFinal = DateConverter.stringTimeToCalendar(dtFinal.replace("T", " "));
			} else {
				dataFinal.set(Calendar.HOUR_OF_DAY, 23);
				dataFinal.set(Calendar.MINUTE, 59);
			}

			model.addAttribute("dtInicial", DateConverter.calendarToStringTime(dataInicial));
			model.addAttribute("dtFinal", DateConverter.calendarToStringTime(dataFinal));

			Log log = new Log();
			log.setTipo("READ");
			log.setResumo("ENTRANDO NA PAGINA DE LOGS");
			log.setUser(principal.getName());
			log.setIp(request.getRemoteAddr());
			log.setDtEvento(Calendar.getInstance());

			logService.save(log);

			model.addAttribute("logs", logService.findByDtEventoBetween(pageNumber, dataInicial, dataFinal));
			model.addAttribute("pgNumber", pageNumber);

			return "logs";
		} catch (Exception e) {
			e.printStackTrace();
			return "error-404";
		}
	}
}
