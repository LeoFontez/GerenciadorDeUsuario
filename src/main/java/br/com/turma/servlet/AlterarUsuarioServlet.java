package br.com.turma.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.turma.modelo.Usuario;
import br.com.turma.simulabanco.Banco;

@WebServlet("/alterar")
public class AlterarUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Usuario usuario = null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Integer codigo = Integer.valueOf(request.getParameter("codigo"));
		List<Usuario> usuarios = Banco.getUsuarios();
		
		
		for(int i=0; i<usuarios.size();i++) {
			
			Integer codigoDoVetor = usuarios.get(i).getCodigo();
			
			if(codigo.equals(codigoDoVetor)) {
				usuario = usuarios.get(i);
					break;
			}
		}
		
		request.setAttribute("usuario", usuario);
		RequestDispatcher rd = request.getRequestDispatcher("/formAlterarUsuario.jsp");
		rd.forward(request,response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("txtnome");
		Date dataNascimento = converterParaDate(request.getParameter("txtdatanascimento"));
		String user = request.getParameter("txtusuario");
		String senha = request.getParameter("txtsenha");
		
		usuario.setNome(nome);
		usuario.setDataNascimento(dataNascimento);
		usuario.setUsuario(user);
		usuario.setSenha(senha);
		
		response.sendRedirect("mostrar");
	}
	
	private Date converterParaDate(String dataComoString) {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date dataFormatada = null;
		
		try {
			dataFormatada = sdf.parse(dataComoString);
			} catch(ParseException e) {
				e.printStackTrace();
			}
		return dataFormatada;
	}
}
