package br.chronos.sgi.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Notas5sController {

	@RequestMapping(value = "/notas")
	public String showNota5s(Model model, Principal principal) {

		return "notas";
	}
}