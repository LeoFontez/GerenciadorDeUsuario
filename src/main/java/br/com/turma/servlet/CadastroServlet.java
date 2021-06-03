package br.com.turma.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.turma.modelo.Usuario;
import br.com.turma.simulabanco.Banco;


@WebServlet("/cadastro")
public class CadastroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nome = request.getParameter("txtnome");
		Date dataNascimento = converterParaDate(request.getParameter("txtdatanascimento"));
		String usuario = request.getParameter("txtusuario");
		String senha = request.getParameter("txtsenha");
		
		Usuario user = new Usuario(nome,dataNascimento,usuario,senha);
		Banco.adiciona(user);
		
		response.sendRedirect("mostrar");
	}
	
	private Date converterParaDate(String dataComoString) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date dataFormatada = null;
		
		try {
			dataFormatada = (Date) sdf.parse(dataComoString);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return dataFormatada;
	}
	
}