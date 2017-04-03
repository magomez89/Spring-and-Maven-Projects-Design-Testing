<%--
 * layout.jsp
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%-- /Getting-Started-Menu/src/main/webapp/views/master-page/layout.jsp --%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<base
	href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="shortcut icon" href="favicon.ico"/> 

<script type="text/javascript" src="scripts/jquery.js"></script>
<script type="text/javascript" src="scripts/jquery-ui.js"></script>

<%-- SUSTITUIR aqu� el JQERY FILE --%> 

<%-- <script type="text/javascript" src="scripts/jmenu.js"></script> --%>
<script type="text/javascript" src="scripts/jquery.mnmenu.js"></script>

<link rel="stylesheet" href="styles/common.css" type="text/css">

<%-- SUSTITUIR aqu� el CSS jmenu por el NUEVO --%>

<%-- <link rel="stylesheet" href="styles/jmenu.css" media="screen"
	type="text/css" /> --%>
	
<link rel="stylesheet" href="styles/styleIE.css" media="screen"
	type="text/css" />
	
<link rel="stylesheet" href="styles/displaytag.css" type="text/css">

<title><tiles:insertAttribute name="title" ignore="true" /></title>

<%-- SUSTITUIR aqu� el NOW, CALL THE MMENU PLUGIN --%> 
<%-- <script type="text/javascript">
	$(document).ready(function() {
		$("#jMenu").jMenu();
	});--%>
	
	<script type="text/javascript">
	$(document).ready(function() {
		$("#mnmenu").mnmenu();
	});

	function askSubmission(msg, form) {
		if (confirm(msg))
			form.submit();
	}
</script>

</head>

<body>

	<div>
		<tiles:insertAttribute name="header" />
	</div>
	<div>
		<h1>
			<tiles:insertAttribute name="title" />
		</h1>
		<tiles:insertAttribute name="body" />	
		<jstl:if test="${message != null}">
			<br />
			<span class="message"><spring:message code="${message}" /></span>
		</jstl:if>	
	</div>
	<div>
		<tiles:insertAttribute name="footer" />
	</div>

</body>
</html>