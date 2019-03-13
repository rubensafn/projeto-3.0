<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:importAttribute name="javascripts" />
<tiles:importAttribute name="stylesheets" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Grupo Cereal">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">

<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/logocloud.jpg">
<title>InterWorks</title>

<c:forEach var="css" items="${stylesheets}">
	<link href="<c:url value="${css}"/>" rel="stylesheet">
</c:forEach>
<!-- Modernizr js -->
<script
	src="${pageContext.request.contextPath}/resources/uplon/assets/js/modernizr.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/uplon/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/uplon/assets/js/popper.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/uplon/assets/js/bootstrap.min.js"></script>
</head>

<body style="background-image: url('${pageContext.request.contextPath}/resources/images/FUNDOJOACIR3.jpeg')">

<%-- 	<div style="background-size: 100% 100%; background-repeat : no-repeat; background-image: url('${pageContext.request.contextPath}/resources/images/graos3.jpg')" --%>
	<tiles:insertAttribute name="header" />

	<tiles:insertAttribute name="body" />
<!-- 			</div> -->
	<tiles:insertAttribute name="footer" />

	<c:forEach var="script" items="${javascripts}">
		<script src="<c:url value="${script}"/>"></script>
	</c:forEach>

</body>
</html>