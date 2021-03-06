<%--
 * edit.jsp
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<form:form action="cook/administrator/register.do"
	modelAttribute="cook">
	<!-- Para todos -->

	<form:hidden path="id" />
	<form:hidden path="version" />
	<form:hidden path="userAccount.Authorities" />

	<!-- Cook -->

	<form:hidden path="managedMasterClasses" />

	<!-- Actor -->

	<form:hidden path="folders" />
	<form:hidden path="socialIdentities" />
	<form:hidden path="masterClasses" />


	<form:label path="name">
		<spring:message code="actor.name" />:
	</form:label>
	<form:input path="name" />
	<form:errors cssClass="error" path="name" />
	<br />

	<form:label path="surname">
		<spring:message code="actor.surname" />:
	</form:label>
	<form:input path="surname" />
	<form:errors cssClass="error" path="surname" />
	<br />

	<form:label path="emailAddress">
		<spring:message code="actor.emailAddress" />:
	</form:label>
	<form:input path="emailAddress" />
	<form:errors cssClass="error" path="emailAddress" />
	<br />

	<form:label path="phoneNumber">
		<spring:message code="actor.phoneNumber" />:
	</form:label>
	<form:input path="phoneNumber" />
	<form:errors cssClass="error" path="phoneNumber" />
	<br />

	<form:label path="postalAddress">
		<spring:message code="actor.postalAddress" />:
	</form:label>
	<form:input path="postalAddress" />
	<form:errors cssClass="error" path="postalAddress" />
	<br />

	<form:label path="userAccount.username">
		<spring:message code="actor.username" />:
	</form:label>
	<form:input path="userAccount.username" />
	<br />
	<form:label path="userAccount.password">
		<spring:message code="actor.password" />:
	</form:label>
	<form:password path="userAccount.password" />

	<br /><br/>
	<td><form:errors class="error" path="userAccount.username" /></td>
	<td><form:errors class="error" path="userAccount.password" /></td>

	<input type="submit" name="register"
		value="<spring:message code="actor.save" />" />&nbsp; 
	
	<input type="button" name="cancel"
		value="<spring:message code="actor.cancel" />"
		onclick="javascript: window.location.replace('welcome/index.do');" />
	<br />

</form:form>
