package br.chronos.sgi.controller;

import java.security.Principal;
import java.util.Collection;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UploadarquivosController {

	@RequestMapping(value = "/uploadarquivos")
	public String showUploadarquivos(Model model, Principal principal, Authentication authentication) {
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

		return "uploadarquivos";
	}
}