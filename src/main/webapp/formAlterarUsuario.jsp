<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.com.turma.modelo.Usuario" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterar</title>
</head>
<body>


<h1>Alterar Dados do Usu�rio</h1>
	
	<form method="post" action="alterar">
	C�digo: <input type="text" name="txtcodigo" value="${usuario.codigo }"readonly><br><br>
	Nome: <input type="text" name="txtnome" value="${usuario.nome }" required><br><br>
	Data Nascimento: <input type="date" name="txtdatanascimento" value="${usuario.dataNascimento }" required><br><br>
	Usu�rio: <input type="text" name="txtusuario" value="${usuario.usuario }" required><br><br>
	Senha: <input type="password" name="txtsenha" value="${usuario.senha }" required><br><br>
	
	<input type="submit" value="Salvar">
	</form>
</body>
</html>