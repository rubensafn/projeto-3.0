package br.chronos.admin.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.chronos.admin.entity.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {

	Role findByName(String name);

	List<Role> findByIdIn(List<Integer> idRoles);
}
