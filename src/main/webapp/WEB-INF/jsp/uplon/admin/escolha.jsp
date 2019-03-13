<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


<div class="wrapper-page">

	<div class="account-bg">
		<div class="card-box mb-0">
			<div class="text-center m-t-20">
				<a href="index.html" class="logo"> <img alt="Logo"
						src="/resources/images/interworks_logo.png"
					style="width: 325px; height: 75px;">
				</a>
			</div>
			<br> <br> <br>
			<div align="center">
				<a href="/login.html">
					<button class="btn btn-primary waves effect waves-light"
						id="sa-success-upload">
						<i class="fa  fa-arrow-circle-left"
							style="color: #129bb4; margin-right: 15px"></i> Logar Novamente
					</button>
				</a>
			</div>
			<br> <br>
			<div align="center">
				<a href="/home.html">
					<button class="btn btn-primary waves effect waves-light"
						id="sa-success-upload">
						Continuar acesso usuário<i class="fa  fa-arrow-circle-right"
							style="color: #129bb4; margin-left: 15px;"></i>
					</button>
				</a>
			</div>
			<br>
			<div class="clearfix"></div>
		</div>
	</div>

</div>