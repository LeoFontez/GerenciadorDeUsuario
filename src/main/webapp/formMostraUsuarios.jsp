<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usu�rio</title>
</head>
<body>
	
	<h1>Lista de Usu�rios</h1>
	
	<a href="formCadastro.html"><button>Cadastrar Usu�rio</button></a><br><br>

	<c:if test="${not empty usuarios}">
		<table border="1" style="width: 60%">
			<thead>
				<tr style="background-color: PowderBlue;color:black">
					<th>C�digo</th>
					<th>Nome</th>
					<th>Data de Nascimento</th>
					<th>Usu�rio</th>
					<th>Senha</th>
					<th colspan="2">A��o</th>
				</tr>
			</thead>
			<tbody>

			<c:forEach var="usuario" items="${usuarios}">
				<tr>
					<td>${usuario.codigo}</td>
					<td>${usuario.nome}</td>
					<td><fmt:formatDate value="${usuario.dataNascimento}" pattern="dd/MM/yyyy"/></td>
					<td>${usuario.usuario}</td>
					<td>${usuario.senha}</td>
					<td><a href="alterar?codigo=${usuario.codigo }">Alterar</a></td>
					<td><a href="excluir?codigo=${usuario.codigo }">Excluir</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</c:if>
	<c:if test="${empty  usuarios}">
		<h4>Nenhum Usu�rio Cadastrado!</h4>
	</c:if>
</body>
</html>