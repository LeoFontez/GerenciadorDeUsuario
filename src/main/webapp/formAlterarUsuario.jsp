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

<%Usuario usuario = (Usuario)request.getAttribute("usuario"); %>

<h1>Alterar Dados do Usuário</h1>
	
	<form method="post" action="alterar">
	Código: <input type="text" name="txtcodigo" value="<%=usuario.getCodigo()%>"readonly><br><br>
	Nome: <input type="text" name="txtnome" value="<%=usuario.getNome()%>" required><br><br>
	Data Nascimento: <input type="date" name="txtdatanascimento" 
		value="<%=new SimpleDateFormat("dd-MM-yyyy").format(usuario.getDataNascimento())%>" required><br><br>
	Usuário: <input type="text" name="txtusuario" value="<%=usuario.getUsuario()%>" required><br><br>
	Senha: <input type="password" name="txtsenha" value="<%=usuario.getSenha()%>" required><br><br>
	
	<input type="submit" value="Salvar">
	</form>
</body>
</html>