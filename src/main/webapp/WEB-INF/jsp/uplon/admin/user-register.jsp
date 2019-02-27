<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<script>
	$(document).ready(function() {
		$('.select2').select2()
	});
</script>

<div class="wrapper">
	<div class="container">
	<br> <br>
		<h4 class="page-title" style="color: #fff;">Usuarios</h4>

		<div class="card-box">
			<form:form
				action="${pageContext.request.contextPath}/user-register.html"
				method="post" modelAttribute="user">
				<div class="row">
					<form:hidden path="id" />
<%-- 					<form:hidden path="dtCadastro" /> --%>
					<form:hidden path="firstTimeLogin" />
					<form:hidden path="password" />
					<div class="col-md-4">
						<div class="form-group">
							<label>Nome:</label> <br>
							<form:input type="text" path="name" id="name" name="name"
								class="form-control" />
						</div>
					</div>

					<div class="col-md-4">
						<div class="form-group">
							<label>CPF/CNPJ:</label> <br>
							<form:input type="number" path="idLegal" id="idLegal"
								name="idLegal" class="form-control" required="required" />
						</div>
					</div>

					<div class="col-md-4">
						<div class="form-group">
							<label>Email:</label> <br>
							<form:input type="email" path="email" id="email" name="email"
								class="form-control" required="required" />
						</div>
					</div>

					<div class="col-md-4">
						<div class="form-group">
							<label>Senha:</label> <br> <input type="password"
								id="psWord" name="psWord" class="form-control">
						</div>
					</div>

					<div class="col-md-4">
						<div class="form-group">
							<label>Ativo: </label> <br>
							<form:select path="enabled" id="enabled" name="enabled"
								class="form-control"  required="required">
								<option value="true"
									${user.enabled == true ? 'selected="true"' : '' }>Ativo</option>
								<option value="false"
									${user.enabled == false ? 'selected="true"' : '' }>Inativo</option>
							</form:select>
						</div>
					</div>

					<div class="col-md-4">
						<div class="form-group">
							<label>Roles:</label> <br> <select id="idRoles"
								name="idRoles" class="form-control select2" style="width: 100%" multiple="multiple"
								 required="required">
								<option></option>
								<c:forEach items="${roles.getContent() }" var="role">
									<option value="${role.id }"
										${user.roles.contains(role) ? 'selected="selected"' : '' }>${role.name }</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="col-md-12">
						<button class="btn btn-primary">${user.id == null ?
								'Cadastrar' : 'Atualizar' }</button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>