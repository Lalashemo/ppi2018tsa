<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Contatos</title>
</head>
<body>

<h1>Lista de Contatos</h1>
<table border= "1">
<tr>
<th>Nome</th>
<th>Email</th>
<th>Rua</th>
<th>Data de Nascimento</th>
</tr>
<c:forEach var="contato" items="${contatos}">
<tr>
<td>${contato.nome}</td>
<td>${contato.email}</td>
<td>${contato.endereco}</td>
<td><fmt:formatDate value="${contato.dataNascimento.time}"
pattern="dd/MM/yyyy" /></td>
</tr>
</c:forEach>
</table>

</body>
</html>