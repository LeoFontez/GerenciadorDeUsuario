<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.com.turma.modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usu�rio</title>
</head>
<body>
	<%List <Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios"); %>
	
	<h1>Lista de Usu�rios</h1>
	
	<a href="formCadastro.html"><button>Cadastrar Usu�rio</button></a><br><br>
	<%if (!usuarios.isEmpty()){%>
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
		<%for (Usuario usuario:usuarios){ %>
			<tr>
				<td><%=usuario.getCodigo() %></td>
				<td><%=usuario.getNome() %></td>
				<td><%=new SimpleDateFormat("dd/MM/yyyy").format(usuario.getDataNascimento()) %></td>
				<td><%= usuario.getUsuario() %></td>
				<td><%=usuario.getSenha() %></td>
				<td><a href="alterar?codigo=<%=usuario.getCodigo() %>">Alterar</a></td>
				<td><a href="excluir?codigo=<%=usuario.getCodigo() %>">Excluir</a></td>
				</tr>
				<%} %>
		</tbody>
	</table>
	<%}else{ %>
		<h4>Nenhum Usu�rio Cadastrado!</h4>
		<%} %>
</body>
</html>