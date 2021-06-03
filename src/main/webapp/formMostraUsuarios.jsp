<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.com.turma.modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuário</title>
</head>
<body>
	<%List <Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios"); %>
	
	<h1>Lista de Usuários</h1>
	
	<a href="formCadastro.html"><button>Cadastrar Usuário</button></a><br><br>
	<%if (!usuarios.isEmpty()){%>
	<table border="1" style="width: 60%">
		<thead>
			<tr style="background-color: PowderBlue;color:black">
				<th>Código</th>
				<th>Nome</th>
				<th>Data de Nascimento</th>
				<th>Usuário</th>
				<th>Senha</th>
				<th colspan="2">Ação</th>
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
		<h4>Nenhum Usuário Cadastrado!</h4>
		<%} %>
</body>
</html>