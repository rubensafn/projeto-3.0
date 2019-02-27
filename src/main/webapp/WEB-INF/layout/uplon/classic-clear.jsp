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

<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/LOGOJOACIR.png">
<title>WorkPlan</title>

<c:forEach var="css" items="${stylesheets}">
	<link href="<c:url value="${css}"/>" rel="stylesheet">
</c:forEach>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/resources/images/FUNDOJOACIR.png')">
<!-- 	<div class="account-pages" ></div> -->
	<div class="clearfix"></div>
	<tiles:insertAttribute name="body" />

	<c:forEach var="script" items="${javascripts}">
		<script src="<c:url value="${script}"/>"></script>
	</c:forEach>
</body>
</html>