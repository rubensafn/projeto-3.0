package br.chronos.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import br.chronos.admin.entity.Role;
import br.chronos.admin.entity.User;
import br.chronos.admin.repository.UserRepository;
import br.util.Pagination;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public Page<User> findAll(Integer pageNumber) {
		PageRequest request = new PageRequest(pageNumber, Pagination.getBgpagesize());
		return userRepository.findAll(request);
	}

	public User findOne(int id) {
		return userRepository.findOne(id);
	}

	public void save(User user) {
		userRepository.save(user);
	}

	public List<User> findByRoles(Role role) {
		return userRepository.findByRoles(role);
	}

	public User findByIdLegal(String idLegal) {
		return userRepository.findByIdLegal(idLegal);
	}

	public List<User> findByRolesNameIn(List<String> roles) {
		return userRepository.findByRolesNameIn(roles);
	}

	public User findByEmail(String email) {
		return userRepository.findByEmail(email);
	}
}
