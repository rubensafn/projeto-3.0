package br.chronos.manutencao.controller;


import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManutencaoController {

	@RequestMapping(value = "/manutencao")
	public String showManutencao(Model model, Principal principal) {

		return "manutencao";
	}
}