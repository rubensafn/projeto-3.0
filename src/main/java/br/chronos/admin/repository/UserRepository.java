package br.chronos.admin.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.chronos.admin.entity.Role;
import br.chronos.admin.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	List<User> findByRoles(Role role);

	User findByName(String name);

	User findByIdLegal(String cpf);

	List<User> findByRolesNameIn(List<String> roles);

	User findByEmail(String email);

}
