package br.chronos.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import br.chronos.admin.entity.Role;
import br.chronos.admin.repository.RoleRepository;

@Service
public class RoleService {
	private static final int PAGESIZE = 1000;

	@Autowired
	private RoleRepository roleRepository;

	public Page<Role> findAll(Integer pageNumber) {
		PageRequest request = new PageRequest(pageNumber, PAGESIZE);
		return roleRepository.findAll(request);
	}

	public Role findOne(int id) {
		return roleRepository.findOne(id);
	}

	public void save(Role role) {
		roleRepository.save(role);
	}

	public Role findByName(String name) {
		return roleRepository.findByName(name);
	}

	public List<Role> findByIdIn(List<Integer> idRoles) {
		return roleRepository.findByIdIn(idRoles);
	}

}
