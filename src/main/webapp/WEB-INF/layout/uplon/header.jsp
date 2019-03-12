<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript">
	$(document).ready(function() {
		$('#tagOptUser').click();
		$('#tagOptUser').click();
	});
</script>




<header id="topnav">
	<div class="topbar-main">
		<div class="container">
			<!-- LOGO -->
			<div class="topbar-left">
				<a href='<spring:url value="/home.html"/>' class="logo"> <img
					alt="Logo"
					src="${pageContext.request.contextPath}/resources/images/LOGOJOACIR.png"
					style="width: 150px; height: 100px;"'> &nbsp; <span
					style="margin-top: 100px; margin-bottom: 45px; vertical-align: middle;">WORKPLAN
				</span>
				</a>
			</div>
			<br>

			<div class="menu-extras navbar-topbar">
				<!-- 			      <div class="btn btn-custom" style="background-color: #2D328B;"> -->


				<ul class="list-inline float-right mb-0">
					<security:authorize access="!hasAuthority('ROLE_ADMIN')">
						<a href='<spring:url value="/login.html"/>'
							class="btn btn-primary waves-effect"
							style="margin-right: 20px; background-color: #fff; border-color: #2D328B; margin-top: 4px;">
							<span style="color: #06104B; font-size: 15px; font-weight: 600;"">Acesso
								Admin</span>
						</a>
					</security:authorize>

					<li class="list-inline-item"><a class="navbar-toggle">
							<div class="lines">
								<span></span> <span></span> <span></span>
							</div>
					</a></li>
					<security:authorize access="hasAuthority('ROLE_ADMIN')">
						<li class="list-inline-item dropdown notification-list"><a
							class="nav-link dropdown-toggle waves-effect waves-light nav-user"
							data-toggle="dropdown" href="#" role="button"
							aria-haspopup="false" aria-expanded="false" id="tagOptUser">
								<i class="zmdi zmdi-account-circle"
								style="color: #129bb4; font-size: 50px; margin-top: 2px; vertical-align: middle;""> </i>

								<div class="dropdown-menu dropdown-menu-right profile-dropdown "
									aria-labelledby="Preview">
									<!-- 							<a href="#" class="dropdown-item notify-item"> <i -->
									<!-- 								class="zmdi zmdi-account-circle"></i> <span>Perfil</span>  </a> -->
									<a href='<spring:url value="/logout.html" />'
										class="dropdown-item notify-item"> <i
										class="zmdi zmdi-power"></i> <span>Logout</span>
									</a>

								</div>
						</a></li>
					</security:authorize>

<!-- 					<li class="list-inline-item dropdown notification-list"><a -->
<!-- 						class="nav-link dropdown-toggle waves-effect waves-light nav-user" -->
<!-- 						data-toggle="dropdown" href="#" role="button" -->
<!-- 						aria-haspopup="false" aria-expanded="false" id="tagOptUser"> <i -->
<!-- 							class="zmdi zmdi-account-circle" -->
<!-- 							style="color: #fff; font-size: 50px; margin-top: 18px;" -->
<!-- 							align="bottom"> </i>  -->
<%-- 							<security:authorize --%>
<%-- 								access="hasAuthority('ROLE_ADMIN')"> --%>
<!-- 								<div class="dropdown-menu dropdown-menu-right profile-dropdown " -->
<!-- 									aria-labelledby="Preview"> -->
<!-- 																<a href="#" class="dropdown-item notify-item"> <i -->
<!-- 																	class="zmdi zmdi-account-circle"></i> <span>Perfil</span>  </a> -->
<%-- 									<a href='<spring:url value="/logout.html" />' --%>
<!-- 										class="dropdown-item notify-item"> <i -->
<!-- 										class="zmdi zmdi-power"></i> <span>Logout</span> -->
<!-- 									</a> -->

<!-- 								</div> -->
<%-- 							</security:authorize> --%>
<!-- 					</a></li> -->


				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="navbar-custom">
		<div class="container">
			<div id="navigation">
				<!-- Navigation Menu-->
				<ul class="navigation-menu">
					<security:authorize access="hasAuthority('ROLE_ADMIN')">
						<li class="has-submenu"><a href="#"><i
								class="fa fa-gears"></i> <span> Admin </span> </a>
							<ul class="submenu megamenu">
								<li>
									<ul>
										<li><a href='<spring:url value="/users.html"/>'>Admin</a></li>
										<li><a href='<spring:url value="/roles.html"/>'>Roles</a></li>
										<%-- 									<li><a href='<spring:url value="/logs.html"/>'>Logs</a></li> --%>
									</ul>
								</li>
							</ul></li>
					</security:authorize>



					<security:authorize access="hasAuthority('ROLE_ADMIN')">
						<li class="has-submenu"><a
							href='<spring:url value="/uploadarquivos.html"/>'><i
								class="fa fa-upload"></i> <span> Upload de Arquivos </span> </a></li>
					</security:authorize>

					<!-- 			RESERVAS SERÃO INSERIDAS DEPOIS -->

					<!-- 					<li class="has-submenu"><a href="#"><i -->
					<!-- 							class="fa fa-chain-broken"></i> <span> Reservas </span> </a> -->
					<!-- 						<ul class="submenu megamenu"> -->
					<!-- 							<li> -->
					<!-- 								<ul> -->
					<%-- 									<li><a href='<spring:url value="#"/>'>Realizar --%>
					<!-- 											reservas</a></li> -->
					<%-- 									<security:authorize access="hasAuthority('ROLE_ADMIN')"> --%>
					<%-- 										<li><a href='<spring:url value="#"/>'>Verificar --%>
					<!-- 												reservas</a></li> -->
					<%-- 									</security:authorize> --%>
					<!-- 								</ul> -->
					<!-- 						</ul></li> -->


					<li class="has-submenu"><a href="#"><i
							class="ion-help-buoy ion-help-buoy-assignment"></i> <span>
								Brainiac </span> </a>
						<ul class="submenu megamenu">
							<li>
								<ul>
									<li><a target="_blank"
										href="http://192.168.200.239/Login.aspx" />Ir para chamados</a></li>
									<li><a
										href="\\192.168.200.104\Publica\TI\Rubens\Abertura de chamado - Gestão X - SD.mp4" />Baixar
										vídeo instrutivo</a></li>
								</ul>
							</li>
						</ul></li>

					<li class="has-submenu"><a href="#"><i
							class="ion-locked ion-locked-assignment"></i> <span>
								MasterSaf </span> </a>
						<ul class="submenu megamenu">
							<li>
								<ul>
									<li><a target="_blank"
										href="https://p.dfe.mastersaf.com.br/mvc/login" />Produção</a></li>
									<li><a target="_blank"
										href="https://h.dfe.mastersaf.com.br/mvc/login" />Homologação</a></li>
								</ul>
							</li>
						</ul></li>

					<li class="has-submenu"><a href="#"><i
							class="ion-filing ion-filing-assignment"></i> <span> RH </span> </a></li>



					<li class="has-submenu"><a href="#"><i
							class="ti-email ti-email-assignment"></i> <span> E-mail </span> </a>
						<ul class="submenu megamenu">
							<li>
								<ul>
									<li><a target="_blank"
										href="https://outlook.live.com/" />Webmail</a></li>
									<li><a target="_blank"
										href="https://outlook.live.com/" />Webmail Interno</a></li>
								</ul>
							</li>
						</ul></li>


					<li class="has-submenu"></li>



				</ul>
			</div>
		</div>
	</div>



</header>


