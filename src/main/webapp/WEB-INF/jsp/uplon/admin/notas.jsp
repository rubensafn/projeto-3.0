<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<div class="wrapper">
	<div class="container">
		<div class="row">
			<div class="col-12">


				<form:form action="notas.html" method="post">

					<div class="card-box">
						<table class="table table-striped mb-0">
							<thead>
								<tr>
									<th style="min-width: 70%">Selecione o mês referente aos
										arquivos desejado:</th>


								</tr>
							</thead>

							<button type="hidden" style="display: none"
								class="btn btn-custom waves-effect waves-light btn-sm"
								id="sa-success"></button>

							<tbody>


								<br>
								<br>

								<tr>
									<td>
										<!-- 									<td class="align-middle">ACIDENTES-DE-TRABALHO-E-TRAJETO-1.pdf</td> -->
										<!-- 									<td> --> <!-- 																					<a target="_blank" href="https://drive.google.com/file/d/1f390vjwclxNzbZFQ_9NRTSVnt1twr1lV/view" class="btn btn-custom waves-effect"> -->
										<!-- 																					<i class="zmdi zmdi-download"></i></a> <a -->
										<!-- 										target="_blank" href="http://192.168.200.237/?download=88"> -->
										<!-- 											<button class="btn btn-primary waves-effect" -->
										<!-- 												onclick="$('#sa-success').click();"> --> <!-- 												<i class="zmdi zmdi-download"></i> -->
										<!-- 											</button> --> <!-- 									</a> -->
										<div class="form-group">
											<div class="date">
												<input type="date" id="dataCarregamento"
													name="dataCarregamento" class="form-control"
													required="required" />
											</div>
										</div> <br>
										<div align="center">

											<a href='<spring:url value="#"/>'>
												<button type="submit"
													class="btn btn-primary waves effect waves-light" id="#">
													Buscar <i class="fa fa-search" style="color: #129bb4;"></i>

												</button>
											</a> <a href='<spring:url value="/sgi.html"/>'>
												<button type="submit"
													class="btn btn-primary waves effect waves-light" id="#">
													Voltar <i class="fa fa-backward" style="color: #129bb4;"></i>

												</button>
											</a> <br> <br>
										</div>

									</td>
								</tr>



							</tbody>
						</table>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>