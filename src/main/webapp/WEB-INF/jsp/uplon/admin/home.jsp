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
					<br> <br> <br> <br> <br> <br>
					<div class="card-box">
						<div class="row">
							<div class="col-lg-12">

								<div id="carouselExampleCaptions" class="carousel slide"
									style="" data-ride="carousel">
<!-- 									<ol class="carousel-indicators"> -->
<!-- 										<li data-target="#carouselExampleCaptions" data-slide-to="0" -->
<!-- 											class="active"></li> -->
<!-- 										<li data-target="#carouselExampleCaptions" data-slide-to="1"></li> -->
<!-- 										<li data-target="#carouselExampleCaptions" data-slide-to="2"></li> -->
<!-- 									</ol> -->
									<div class="carousel-inner" role="listbox">
										<div class="carousel-item active">
											<img class="d-block img-fluid"
												src="resources/images/imagem1.jpg"
												style="height: 350px; width: 1800px" alt="First slide" />
											<div class="carousel-caption d-none d-md-block">
<!-- 												<h3>1º</h3> -->
<!-- 												<p>Colocar texto aqui</p> -->
											</div>
										</div>
<!-- 										<div class="carousel-item"> -->
<!-- 											<img class="d-block img-fluid" src="resources/images/3.jpg" -->
<!-- 												style="height: 350px; width: 1800px" alt="Second slide" /> -->
<!-- 											<div class="carousel-caption d-none d-md-block"> -->
<!-- 												<h3>2º</h3> -->
<!-- 												<p>Colocar texto aqui</p> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 										<div class="carousel-item"> -->
<!-- 											<img class="d-block img-fluid" -->
<!-- 												src="resources/images/logo2.png" -->
<!-- 												style="height: 350px; width: 1800px" alt="Third slide" /> -->
<!-- 											<div class="carousel-caption d-none d-md-block"> -->
<!-- 												<h3>3º</h3> -->
<!-- 												<p>Colocar texto aqui</p> -->
<!-- 											</div> -->
<!-- 										</div> -->
									</div>
<!-- 									<a class="carousel-control-prev" -->
<!-- 										href="#carouselExampleCaptions" role="button" -->
<!-- 										data-slide="prev"> <span -->
<!-- 										class="carousel-control-prev-icon" aria-hidden="true"></span> -->
<!-- 										<span class="sr-only">Previous</span> -->
<!-- 									</a> <a class="carousel-control-next" -->
<!-- 										href="#carouselExampleCaptions" role="button" -->
<!-- 										data-slide="next"> <span -->
<!-- 										class="carousel-control-next-icon" aria-hidden="true"></span> -->
<!-- 										<span class="sr-only">Next</span> -->
<!-- 									</a> -->
								</div>
							</div>
						</div>
					</div>



					<!-- START carousel-->
					<!--  			<div id="carouselExample" class="carousel slide"
								data-ride="carousel">
								<ol class="carousel-indicators">
									<li data-target="#carouselExample" data-slide-to="0"
										class="active"></li>
									<li data-target="#carouselExample" data-slide-to="1"></li>
									<li data-target="#carouselExample" data-slide-to="2"></li>
								</ol>
								<div class="carousel-inner" role="listbox">
									<div class="carousel-item active">
										<img class="d-block img-fluid" src="resources/images/images.jpg"
											alt="First slide" />
									</div>
									<div class="carousel-item">
										<img class="d-block img-fluid" src="resources/images/arq1.png"
											alt="Second slide" />
									</div>
									<div class="carousel-item">
										<img class="d-block img-fluid" src="resources/images/logo2.png"
											alt="Third slide" />
									</div>
								</div>
						</div>
						</div>
						</div>
							<!-- END carousel-->


					<br>

					<!-- Page-Title -->
					<div class="row">
						<div class="col-sm-12">
							<div class="page-title-box">
								<div class="btn-group float-right m-t-15">
									<div class="dropdown-divider"></div>
								</div>

							</div>
						</div>
					</div>
					<!-- end row -->


					<div class="row">

						<div class="col-md-4">
							<br>

							<!-- Simple card -->
							<div class="card m-b-20">

								<img class="card-img-top img-fluid"
									src="resources/images/rh2.jpg" alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">FORMULÁRIOS</h5>
									<p class="card-text">Neste campo você encontrará todos os
										formulários para realizar
										movimentações de cargos e salários, férias, descontos em folha
										de pagamento, requisição de seleção de novos colaboradores
										etc., para maior comodidade e rapidez nos processos</p>
									<a href='<spring:url value="/formulario.html"/>' class="btn btn-primary">Ler mais
										<i class="ti-arrow-circle-right ti-arrow-circle-right""></i>
									</a>
								</div>
							</div>
						</div>


						<div class="col-md-4">

							<br>

							<div class="card m-b-20">
								<img class="card-img-top img-fluid"
									src="resources/images/DOCUMENTOSJOACIR.jpg" alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">DOCUMENTOS</h5>
									<p class="card-text">Neste campo você encontrará, as notas
										das Auditorias do Comitê, e as Auditorias de Segurança do
										Trabalho.</p>
									<a href='<spring:url value="/sgi.html"/>' class="btn btn-primary">Ler mais <i
										class="ti-arrow-circle-right ti-arrow-circle-right""></i></a>
								</div>

							</div>
						</div>

						<div class="col-md-4">

							<br>

							<div class="card m-b-20">
								<img class="card-img-top img-fluid"
									src="resources/images/INFORMEJOACIR.jpg" alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">INFORME</h5>
									<p class="card-text">História, objetivos alcançados e metas
										para 2019!</p>
									<a href='<spring:url value="informe.html"/>' class="btn btn-primary">Ler mais <i
										class="ti-arrow-circle-right ti-arrow-circle-right""></i></a>
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>

	</div>
</div>






<!-- jQuery  -->
