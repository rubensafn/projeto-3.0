<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


<div class="wrapper">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="card-box">
					<table class="table table-striped mb-0">
						<thead>
							<tr>
								<th style="min-width: 70%">Filtro de arquivos</th>
								<th style="width: 30%">Acessar</th>
							</tr>
						</thead>

						<button type="hidden" style="display: none"
							class="btn btn-custom waves-effect waves-light btn-sm"
							id="sa-success"></button>

						<tbody>


							<div class="col-12">
								<br> <br>

								<tr>
									<td class="align-middle">Notas 5S</td>
									<td>
										<!-- 											<a target="_blank" href="https://drive.google.com/file/d/1f390vjwclxNzbZFQ_9NRTSVnt1twr1lV/view" class="btn btn-custom waves-effect"> -->
										<!-- 											<i class="zmdi zmdi-download"></i></a> --> <a
										href='<spring:url value="/notas.html"/>'>

											<!-- 												onclick="$('#sa-success').click();"> --> <i
											class="fa fa-chevron-circle-right" style="font-size: 30px; color: #06104B;"></i>

									</a>



									</td>
								</tr>
							</div>



						</tbody>
					</table>



					<table class="table table-striped mb-0">
						<thead>
							<tr>
								<th style="min-width: 70%"></th>
								<th style="width: 30%"></th>
							</tr>
						</thead>

						<tbody>


							<div class="col-12">

								<tr>
									<td class="align-middle">Auditoria de Segurança</td>
									<td>
										<!-- 											<a target="_blank" href="https://drive.google.com/file/d/1f390vjwclxNzbZFQ_9NRTSVnt1twr1lV/view" class="btn btn-custom waves-effect"> -->
										<!-- 											<i class="zmdi zmdi-download"></i></a> --> <a
										href='<spring:url value="/auditoria.html"/>'>
											<i class="fa fa-chevron-circle-right" style="font-size: 30px; color: #06104B;"></i>
									</a>


									</td>
								</tr>
							</div>



						</tbody>
					</table>



					<table class="table table-striped mb-0">
						<thead>
							<tr>
								<th style="min-width: 70%"></th>
								<th style="width: 30%"></th>
							</tr>
						</thead>

						<tbody>


							<div class="col-12">

								<tr>
									<td class="align-middle">Acidentes de Trabalho</td>
									<td>
										<!-- 											<a target="_blank" href="https://drive.google.com/file/d/1f390vjwclxNzbZFQ_9NRTSVnt1twr1lV/view" class="btn btn-custom waves-effect"> -->
										<!-- 											<i class="zmdi zmdi-download"></i></a> --> <a
										href='<spring:url value="/acidentes.html"/>'>
											<i class="fa fa-chevron-circle-right" style="font-size: 30px; color: #06104B;"></i>
									</a>



									</td>
								</tr>
							</div>


						</tbody>
					</table>




				</div>
			</div>
		</div>
	</div>
</div>