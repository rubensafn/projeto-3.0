package br.chronos.admin.repository;

import java.util.Calendar;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.chronos.admin.entity.Log;

@Repository
public interface LogRepository extends JpaRepository<Log, Integer> {

	Page<Log> findByDtEventoBetween(Calendar dataInicial, Calendar dataFinal, Pageable p);

}
