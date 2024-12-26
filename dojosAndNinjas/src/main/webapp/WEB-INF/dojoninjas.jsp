<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dojo Ninjas</title>
		<link rel="stylesheet" href="/css/style.css" />
	</head>
	<body>
		<div class="header">
			<h1><c:out value="${dojo.name}"></c:out> Ninjas</h1>
			<a href="/">Go Back</a>
		</div>
		<table id="ninjaDisplay">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Age</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ninja" items="${dojo.ninjas}">
					<tr>
						<td><c:out value="${ninja.fname}"></c:out></td>
						<td><c:out value="${ninja.lname}"></c:out></td>
						<td><c:out value="${ninja.age}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>