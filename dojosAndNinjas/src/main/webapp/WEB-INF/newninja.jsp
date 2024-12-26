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
		<title>New Ninja</title>
		<link rel="stylesheet" href="/css/style.css" />
	</head>
	<body>
		<div class="header">
			<h1>New Ninja</h1>
			<a href="/">Go Back</a>
		</div>
		<form:form action="/ninjas" method="post" modelAttribute="ninja">
			<div class="entries">	
				<span class="errors"><form:errors path="dojo" /></span>
				<div class="row">
					<form:label path="dojo">Dojo:</form:label>
					<form:select path="dojo">
						<c:forEach var="dojo" items="${dojos}">
							<form:option value="${dojo.id}" path="dojo">
								<c:out value="${dojo.name}" />
							</form:option>
						</c:forEach>
					</form:select>
				</div>	
				<span class="errors"><form:errors path="fname" /></span>
				<div class="row">
					<form:label path="fname">First Name:</form:label>
					<form:input path="fname" />
				</div>	
				<span class="errors"><form:errors path="lname" /></span>
				<div class="row">
					<form:label path="lname">Last Name:</form:label>
					<form:input path="lname" />
				</div>	
				<span class="errors"><form:errors path="age" /></span>
				<div class="row">
					<form:label path="age">Age:</form:label>
					<form:input path="age" />
				</div>
				<button type="submit">Create Ninja</button>
			</div>
		</form:form>
	</body>
</html>