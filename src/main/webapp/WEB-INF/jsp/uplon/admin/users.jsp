<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="wrapper">
	<div class="container">
	<br> <br>
		<h4 class="page-title" style="color: #fff;">Usuarios</h4>

		<div class="card-box">
			<a href='<spring:url value="/user-register.html"/>'>
				<button class="btn btn-primary">Novo Usuario</button>
			</a>
		</div>

		<div class="card-box table-responsive">
			<table id="example1"
				class="table table-bordered dt-responsive nowrap">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Email</th>
						<th>Roles</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users.getContent() }" var="user">
						<tr>
							<td>${user.name }</td>
							<td>${user.email }</td>
							<td>${user.roles }</td>
							<td><a
								href='<spring:url value="/user-update/${user.id}.html"/>'><span
									class="fa fa-edit"></span></a></td>
							<td><a
								href='<spring:url value="/user-detail/${user.id}.html"/>'><span
									class="fa fa-list"></span></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
