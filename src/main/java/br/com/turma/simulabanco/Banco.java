package br.com.turma.simulabanco;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.com.turma.modelo.Usuario;

public class Banco {

	public static List<Usuario> usuarios = new ArrayList<>();
	private static Integer codigo = 0;
	
	static {
		Usuario usuario1 = new Usuario("Maria Silva",new Date(846295200000L),"msilva","m123");
		Usuario usuario2 = new Usuario("Pedro Ramos",new Date(962506800000L),"pramos","p123");
		Usuario usuario3 = new Usuario("Jonas Castro",new Date(399524400000L),"jcasto","j123");
		Banco.adiciona(usuario1);
		Banco.adiciona(usuario2);
		Banco.adiciona(usuario3);
	}
	
	public static void adiciona(Usuario usuario) {
		usuario.setCodigo(++codigo);
		Banco.usuarios.add(usuario);
	}
	
	public static List<Usuario> getUsuarios(){
		return Banco.usuarios;
	}
}