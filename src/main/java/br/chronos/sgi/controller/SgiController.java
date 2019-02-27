package br.chronos.sgi.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SgiController {

	@RequestMapping(value = "/sgi")
	public String showSgi(Model model, Principal principal) {

		return "sgi";
	}
}