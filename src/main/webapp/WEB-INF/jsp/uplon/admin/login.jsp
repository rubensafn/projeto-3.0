<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="wrapper-page">



	<c:if test="${param.error eq true}">
		<div class="alert alert-warning alert-dismissible">
			<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
			<h4>
				<i class="icon fa fa-warning"></i> Atenção!
			</h4>
			Usuario ou senha incorretos!
		</div>
	</c:if>

	<c:if test="${param.authenticate eq false}">
		<div class="alert alert-danger alert-dismissible">
			<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
			<h4>
				<i class="icon fa fa-warning"></i> Atenção!
			</h4>
			Você precisa estar logado para acessar o sistema!
		</div>
	</c:if>

	<c:if test="${param.passwordChange eq true}">
		<div class="alert alert-success alert-dismissible">
			<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
			<h4>
				<i class="icon fa fa-warning"></i> Sucesso!
			</h4>
			Senha alterada com sucesso!
		</div>
	</c:if>


	<div class="account-bg">
		<div class="card-box mb-0">
			<div class="text-center m-t-20">
				<a href="#" class="logo"> <img alt="Logo"
					src="${pageContext.request.contextPath}/resources/images/LOGOJOACIR.png"
					style="width: 300px; height: 200px;">
				</a>
			</div>
			<div class="m-t-10 p-20">
				<div class="row">
					<div class="col-12 text-center">
						<h6 class="text-muted text-uppercase m-b-0 m-t-0">Entrar no
							Sistema</h6>
					</div>
				</div>
				<form class="m-t-20" action='<spring:url value="/login"/>'
					method="post">

					<div class="form-group row">
						<div class="col-12">
							<input type="number" step="1" id="username" name="username"
								class="form-control" placeholder="CPF / CNPJ"
								required="required">
						</div>
					</div>

					<div class="form-group row">
						<div class="col-12">
							<input type="password" id="password" name="password"
								class="form-control" placeholder="Senha" required="required">
						</div>
					</div>


					<div class="form-group text-center row m-t-10">
						<div class="col-12">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" class="form-control" />
							<button
								class="btn btn-success btn-block waves-effect waves-light"
								type=x"submit">Entrar</button>
						</div>
					</div>

					<div class="form-group row m-t-30 mb-0">
						<div class="col-12">
							<a href='<spring:url value="/user-password-recovery.html"/>'
								class="text-muted"><i class="fa fa-lock m-r-5"></i>Esqueci
								minha senha</a>
						</div>
					</div>
					<br>
					<div align="center">
					<security:authorize access="!hasAuthority('ROLE_ADMIN')">
						<a href='<spring:url value="/home.html"/>'
							class="btn btn-primary waves-effect"
							style="margin-right: 20px; background-color: #fff; border-color: #2D328B; ">
							<span style="color: #06104B; font-size: 15px; font-weight: 600;">Acesso
								Usuário</span>
						</a>
					</security:authorize>
					</div>
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
