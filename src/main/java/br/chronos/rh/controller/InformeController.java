package br.chronos.rh.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InformeController {

	@RequestMapping(value = "/informe")
	public String showInforme(Model model, Principal principal) {

		return "informe";
	}
}