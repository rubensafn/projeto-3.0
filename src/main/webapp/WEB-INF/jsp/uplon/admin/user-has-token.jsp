<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<script type="text/javascript">
	$(function() {
		$('.select2').select2()
	});

	$(document)
			.ready(
					function() {
						var password = document.getElementById("password"), confirm_password = document
								.getElementById("confPassword");

						function validatePassword() {
							if (password.value != confirm_password.value) {
								confirm_password
										.setCustomValidity("Senhas diferentes!");
							} else {
								confirm_password.setCustomValidity('');
							}
						}

						password.onchange = validatePassword;
						confirm_password.onkeyup = validatePassword;
					});
</script>

<div class="wrapper-page">

	<c:if test="${param.tokenWrong eq true}">
		<div class="alert alert-warning alert-dismissible">
			<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
			<h4>
				<i class="icon fa fa-warning"></i> Atenção!
			</h4>
			O token inserido é invalido!
		</div>
	</c:if>


	<div class="account-bg">
		<div class="card-box mb-0">
			<div class="text-center m-t-20">
				<a href="index.html" class="logo"> <img alt="Logo"
	src="${pageContext.request.contextPath}/resources/images/interworks_logo.png"
					style="width: 325px; height: 75px;">
				</a>
			</div>
			<div class="m-t-10 p-20">
				<div class="row">
					<div class="col-12 text-center">
						<h6 class="text-muted text-uppercase m-b-0 m-t-0">Recuperação
							de senha</h6>
					</div>
				</div>
				<form action='<spring:url value="/user-has-token.html"/>'
					method="post">
					<div class="form-group has-feedback">
						<label>CPF/CNPJ:</label> <input type="number" step="1"
							id="idLegal" name="idLegal" class="form-control"
							required="required"> <span
							class="fa fa-key form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<label>Token:</label> <input type="number" step="1" id="token"
							name="token" class="form-control" required="required"> <span
							class="fa fa-unlock-alt form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<label>Senha:</label> <br> <input type="password"
							id="password" name="password" class="form-control"><span
							class="fa fa-key form-control-feedback"></span>
					</div>

					<div class="form-group has-feedback">
						<label>Confirm. Senha:</label> <br> <input type="password"
							id="confPassword" name="confPassword" class="form-control"><span
							class="fa fa-key form-control-feedback"></span>
					</div>
					<div class="row">
						<div class="pull-right">
							<button type="submit" class="btn btn-primary btn-block btn-flat">Enviar</button>
						</div>
					</div>
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
