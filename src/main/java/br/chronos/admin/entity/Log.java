package br.chronos.admin.entity;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name = "sys_log")
@Table(name = "sys_log")
public class Log {
	@Id
	@GeneratedValue
	private Integer id;

	@Column(name = "tx_tipo")
	private String tipo;

	@Column(name = "tx_resumo")
	private String resumo;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "dt_evento")
	private Calendar dtEvento;

	@Column(name = "tx_user")
	private String user;

	@Column(name = "tx_ip")
	private String ip;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getResumo() {
		return resumo;
	}

	public void setResumo(String resumo) {
		this.resumo = resumo;
	}

	public Calendar getDtEvento() {
		return dtEvento;
	}

	public void setDtEvento(Calendar dtEvento) {
		this.dtEvento = dtEvento;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

}
