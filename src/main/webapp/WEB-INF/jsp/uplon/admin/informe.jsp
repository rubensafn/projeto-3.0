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
								<th style="min-width: 70%">Informe Cereal</th>
								<th style="width: 30%">Baixar</th>
							</tr>
						</thead>

						<tbody>


							<div class="col-12">
								<br> <br>

								<tr>
									<td class="align-middle">Grupo Cereal - ANO VI - Nº 25 -
										Março 2018</td>
									<td>
										<!-- 									<a target="_blank" --> <!-- 										href="https://drive.google.com/file/d/1Fn-BKJvMYLumVCMHkfFYlNSguPCIsu7O/view" -->
										<!-- 										class="btn btn-custom waves-effect"> <i --> <!-- 											class="zmdi zmdi-download"></i></a></td> -->

										<button class="btn btn-primary waves-effect"
											data-toggle="modal" data-target=".bs-example-modal-sm">
											<i class="zmdi zmdi-download"></i>
										</button>
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



<div id="modalsm" class="modal fade bs-example-modal-sm">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Atenção</h5>
				<i class="fa fa-exclamation-triangle"
					style="color: orange; font-size: 20px; margin-left: 6px; margin-top: 8px;"></i>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span id="fechamodal" aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<p>Tem certeza que deseja realizar o download?
				<p>Ao clicar em continuar você será redirecionado para outra
					página onde irá realizar o download. Caso não deseje mais realizar
					o mesmo, clique em cancelar</p>


			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="fecharModal">Cancelar</button>
				<a href="#"
					onclick="window.open('https://drive.google.com/file/d/1Fn-BKJvMYLumVCMHkfFYlNSguPCIsu7O/view', '_blank');">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Continuar</button>
				</a>
			</div>
		</div>
	</div>
</div>
