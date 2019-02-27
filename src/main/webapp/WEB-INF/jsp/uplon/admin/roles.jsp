<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="wrapper">
	<div class="container">
	<br> <br> 	
		<h4 class="page-title" style="color: #fff;">Roles</h4>

		<div class="card-box">
			<a href='<spring:url value="/role-register.html"/>'>
				<button class="btn btn-primary">Nova Permissão</button>
			</a>
		</div>

		<div class="card-box table-	responsive">
			<table id="example1"
				class="table table-bordered dt-responsive nowrap">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${roles.getContent()}" var="role">
						<tr>
							<td>${role.id }</td>
							<td>${role.name }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
