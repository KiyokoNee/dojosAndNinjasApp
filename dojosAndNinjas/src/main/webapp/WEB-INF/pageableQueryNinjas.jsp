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
<title>Insert title here</title>
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="/css/style.css" />
    	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div id="ninjas">
    <h1>Ninjas</h1>
    <c:forEach begin="1" end="${totalPages}" var="index">
        <a href="/query/pages/${index}">${index}</a>
    </c:forEach>
    <table class="table">
        <thead>
            <th>Dojo Name</th>
            <th>Ninja First Name</th>
            <th>Ninja Last Name</th>
        </thead>
        	<tbody>
            <c:forEach var="ninja" items="${ninjas.content}">                 
            <tr>
                <td><c:out value="${ninja[0].name}"></c:out></td>
                <td><c:out value="${ninja[1].fname}"></c:out></td>
                <td><c:out value="${ninja[1].lname}"></c:out></td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>