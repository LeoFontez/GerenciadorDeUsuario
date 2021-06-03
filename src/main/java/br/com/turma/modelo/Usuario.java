package br.com.turma.modelo;

import java.util.Date;

public class Usuario {
	
	//Construtor com campos (Obs.: sem o cod)
	public Usuario(String nome, Date dataNascimento, String usuario, String senha) {
		this.nome = nome;
		this.dataNascimento = dataNascimento;
		this.usuario = usuario;
		this.senha = senha;
		
	// propriedades e atributos
	}
	private Integer codigo;
	private String nome;
	private Date dataNascimento;
	private String usuario;
	private String senha;
	public Integer getCodigo() {
		return codigo;
	}
	
	//Métodos Getters e Setters
	
	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Date getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	

}