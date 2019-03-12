package br.chronos.admin.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


import br.chronos.admin.entity.Role;
import br.chronos.admin.entity.User;
import br.chronos.admin.repository.RoleRepository;
import br.chronos.admin.repository.UserRepository;

@Transactional
@Service
public class InitDbService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;




	@PostConstruct
	public void init() {
		System.setProperty("javax.net.ssl.keyStore",
				"C:/Users/kcosta/git/chronos/src/main/webapp/resources/CEREAL COMERCIO EXPORTACAO E REPRESENTACAO AGROPE00012377000160.pfx");
		System.setProperty("javax.net.ssl.keyStorePassword", "Cereal@123");



		if (userRepository.findAll().isEmpty())
			usersTest();

	}

	private void usersTest() {
		Role adminRole;
		adminRole = new Role();
		adminRole.setName("ROLE_ADMIN");
		roleRepository.save(adminRole);

		List<Role> rolesAdmin = new ArrayList<Role>();
		rolesAdmin.add(adminRole);
		
		
		
		Role userRole;
		userRole = new Role();
		userRole.setName("ROLE_USER");
		roleRepository.save(userRole);

		List<Role> rolesUser = new ArrayList<Role>();
		rolesUser.add(userRole);
		
		

		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

		
		User rubens = new User();
		rubens.setName("Rubens Alves de Freitas Neto");
		rubens.setDtCadastro(Calendar.getInstance());
		rubens.setIdLegal("03893872159");
		rubens.setEmail("rubensafn@outlook.com");
		rubens.setEnabled(true);
		rubens.setFirstTimeLogin(true);
		rubens.setPassword(encoder.encode("08178379"));
		rubens.setRoles(rolesAdmin);

		userRepository.save(rubens);
		
		
		User teste = new User();
		teste.setName("Teste 1");
		teste.setDtCadastro(Calendar.getInstance());
		teste.setIdLegal("00000000191");
		teste.setEmail("rubensafn@outlook.com");
		teste.setEnabled(true);
		teste.setFirstTimeLogin(true);
		teste.setPassword(encoder.encode("1234"));
		teste.setRoles(rolesAdmin);

		userRepository.save(teste);

	}

}
