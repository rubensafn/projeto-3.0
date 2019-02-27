package br.chronos.escolha.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EscolhaController {

	@RequestMapping(value = "/escolha")
	public String showEscolha(Model model, Principal principal) {
		return "escolha";
	}
}
