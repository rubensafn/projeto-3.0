package br.chronos.admin.entity;

import java.util.Calendar;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "ADM_USERS")
@Table(name = "ADM_USERS")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	@Column(name = "tx_nome")
	private String name;

	@Column(unique = true, name = "id_legal")
	private String idLegal;

	@Column(name = "tx_email")
	private String email;

	@Column(name = "tx_password")
	private String password;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "dt_cadastro")
	private Calendar dtCadastro;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "dt_alteracao")
	private Calendar dtAlteracao;

	@Column(name = "bl_enabled")
	private Boolean enabled;

	@Column(name = "bl_first_time_login")
	private Boolean firstTimeLogin;

	@Column(name = "tx_token")
	private Integer token;

	@JsonIgnore
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable
	private List<Role> roles;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIdLegal() {
		return idLegal;
	}

	public void setIdLegal(String idLegal) {
		this.idLegal = idLegal;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Calendar getDtCadastro() {
		return dtCadastro;
	}

	public void setDtCadastro(Calendar dtCadastro) {
		this.dtCadastro = dtCadastro;
	}

	public Calendar getDtAlteracao() {
		return dtAlteracao;
	}

	public void setDtAlteracao(Calendar dtAlteracao) {
		this.dtAlteracao = dtAlteracao;
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public Boolean getFirstTimeLogin() {
		return firstTimeLogin;
	}

	public void setFirstTimeLogin(Boolean firstTimeLogin) {
		this.firstTimeLogin = firstTimeLogin;
	}

	public Integer getToken() {
		return token;
	}

	public void setToken(Integer token) {
		this.token = token;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

}
