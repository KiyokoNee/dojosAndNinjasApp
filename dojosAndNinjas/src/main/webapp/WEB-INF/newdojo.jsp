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
		<title>New Dojo</title>
	</head>
	<body>
		<div class="header">
			<h1>New Dojo</h1>
			<a href="/">Go Back</a>
		</div>
		<form:form action="/dojos" method="post" modelAttribute="dojo">
			<div class="entries">	
				<span class="errors"><form:errors path="name" /></span>
				<div>
					<form:label path="name">Name: </form:label>
					<form:input path="name" />
				</div>
				<button type="submit">Create Dojo</button>
			</div>
		</form:form>
	</body>
</html>