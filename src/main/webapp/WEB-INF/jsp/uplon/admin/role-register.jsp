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
	<br> <br>
		<h4 class="page-title" style="color: #fff;">Roles</h4>

		<div class="card-box">
			<form:form
				action="${pageContext.request.contextPath}/role-register.html"
				method="post" modelAttribute="role">
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label>Nome:</label> <br>
							<form:input type="text" path="name" id="name" name="name"
								value="ROLE_" class="form-control" required="required" />
						</div>
					</div>
					<div class="col-md-12">
						<button class="btn btn-primary">Cadastrar</button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>