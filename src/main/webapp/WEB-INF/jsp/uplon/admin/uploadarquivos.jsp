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

			<div class="col-sm-12">
				<br> <br>

				<form:form action="uploadarquivos.html" method="post">
					<div class="row">
						<div class="col-sm-12">
							<h4 class="page-title" style="color: #fff">Upload de
								Arquivos - SGI</h4>
							<!-- 					<p class="text-muted font-13 m-b-10">Favor inserir no -->
							<!-- 					campo abaixo, data referente ao arquivo que deseja realizar -->
							<!-- 					o upload.</p> -->




							<div class="card-box">

								<div class="form-group">
									<div class="col-12">
										<label>Data referência arquivo:</label>
										<!-- 									<div> -->
										<!-- 										<div class="date"> -->
										<!-- 											<input type="date" id="dataCarregamento" -->
										<!-- 												name="dataCarregamento" class="form-control" required="required" /> -->
										<!-- 										</div> -->
										<!-- 										input-group -->
										<!-- 									</div> -->
										<input type="date" id="dataCarregamento"
											name="dataCarregamento" class="form-control"
											required="required" />

									</div>
								</div>


								<br> <br> <br>

								<div class="form-group">
									<label>Nome do responsável pela importação:</label> <input
										class="form-control" type="text" placeholder="Digite aqui"
										id="example-text-input" required="required">
								</div>


								<br> <br> <br> <br>


								<!-- 								<h4 class="header-title m-t-0 m-b-30">Upload de Arquivos - SGI</h4> -->
								<label>Inserir arquivo:</label> <input type="file"
									class="dropify" data-max-file-size="1M" required="required" />
								<br> <br> <br>
								<div align="center">
									<button type="submit"
										class="btn btn-primary waves effect waves-light"
									>
										Confirmar Upload <i class="fa fa-cloud-upload"
											style="color: #FEBF0F;"></i>
									</button>

									<br> <br>
								</div>
							</div>
						</div>

					</div>
			</div>
			</form:form>

		</div>
		<!-- end row -->


	</div>
	<!-- container -->


</div>

</div>
