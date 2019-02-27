<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<div class="wrapper">
	<div class="container">
		<h4 class="page-title">Logs</h4>


		<div class="card-box">
			<form action='<spring:url value="/logs.html"/>' method="post"
				id="formLogs">
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label>Data Inicial </label><br> <input
								type="datetime-local" id="dtInicial" name="dtInicial"
								class="form-control" value="${dtInicial.replace(' ','T') }" />
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label>Data Final</label><br> <input type="datetime-local"
								id="dtFinal" name="dtFinal" class="form-control"
								value="${dtFinal.replace(' ','T')  }" />
						</div>
					</div>
					<div class="col-md-12">
						<button type="submit" class="btn btn-primary">Buscar</button>
					</div>
				</div>
			</form>
		</div>


		<div class="card-box">
			<table id="example1"
				class="table table-bordered dt-responsive nowrap">
				<thead>
					<tr>
						<th>ID</th>
						<th>Resumo</th>
						<th>Tipo</th>
						<th>Usuario</th>
						<th>IP</th>
						<th>Data</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${logs.getContent() }" var="log">
						<tr>
							<td>${log.id }</td>
							<td>${log.resumo }</td>
							<td>${log.tipo }</td>
							<td>${log.user }</td>
							<td>${log.ip }</td>
							<td><fmt:formatDate value="${log.dtEvento.getTime() }"
									pattern="dd/MM/yyyy HH:mm" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
