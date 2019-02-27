package br.chronos.admin.service;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import br.chronos.admin.entity.Log;
import br.chronos.admin.repository.LogRepository;

@Service
public class LogService {
	private static final int PAGESIZE = 1000;

	@Autowired
	private LogRepository logRepository;

	public Log save(Log log) {
		return logRepository.save(log);
	}

	public Page<Log> findAll(Integer pageNumber) {
		PageRequest request = new PageRequest(pageNumber, PAGESIZE);
		return logRepository.findAll(request);
	}

	public Page<Log> findByDtEventoBetween(Integer pageNumber, Calendar dataInicial, Calendar dataFinal) {
		PageRequest request = new PageRequest(pageNumber, PAGESIZE);
		return logRepository.findByDtEventoBetween(dataInicial, dataFinal, request);
	}
}
