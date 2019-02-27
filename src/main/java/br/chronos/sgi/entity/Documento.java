package br.chronos.sgi.entity;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity(name = "documento")
@Table(name = "documento")

public class Documento {

	@Id
	@GeneratedValue
	private Integer id;

	@Column(name = "tx_descricao", nullable = false)
	private String descricao;

	@Column(name = "dt_documento")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Calendar dtDocumento;

	@Column(name = "tx_tipo", nullable = false)
	private String tipoArquivo;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Calendar getDtDocumento() {
		return dtDocumento;
	}

	public void setDtDocumento(Calendar dtDocumento) {
		this.dtDocumento = dtDocumento;
	}

	public String getTipoArquivo() {
		return tipoArquivo;
	}

	public void setTipoArquivo(String tipoArquivo) {
		this.tipoArquivo = tipoArquivo;
	}

}
