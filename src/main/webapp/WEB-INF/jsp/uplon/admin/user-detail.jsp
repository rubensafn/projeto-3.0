<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<div class="wrapper">
	<div class="container">
		<h4 class="page-title">Perfil</h4>

		<div class="card-box" align="center">
			<img class="profile-user-img img-responsive img-circle"
				src="${pageContext.request.contextPath}/resources/images/default-user.png" alt="User profile picture">
			<h3 class="profile-username text-center">${user.name }</h3>

		</div>
	</div>
</div>