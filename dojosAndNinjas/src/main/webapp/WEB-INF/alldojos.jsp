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
		<title>All Dojo</title>
		<link rel="stylesheet" href="/css/style.css" />
	</head>
	<body>
		<h1>All Dojos</h1>
		<div class="navlinks">
			<a href="/dojos/new">Create Dojo</a>
			<a href="/ninjas/new">Create Ninja</a>
		</div>
		<table id="dojoDisplay">
			<thead>
				<tr>
					<th>ID</th>
					<th>Dojo Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dojo" items="${dojos}">
					<tr>
						<td><c:out value="${dojo.id}"></c:out></td>
						<td><a href="/dojos/${dojo.id}"><c:out value="${dojo.name}"></c:out></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>