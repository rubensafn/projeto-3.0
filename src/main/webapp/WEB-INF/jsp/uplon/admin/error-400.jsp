<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="wrapper-page">
	<div class="account-bg">
		<div class="card-box mb-0">
			<p class="login-box-msg">
				<b>Houve um formato errado de dados. Verifique os campos e tente
					novamente.</b>
			</p>
			<a href='<spring:url value="/login.html"/>'><button
					class="btn btn-primary btn-round btn-lg btn-block">Pagina
					Inicial</button></a>
			<div class="clearfix"></div>
		</div>
	</div>
</div>