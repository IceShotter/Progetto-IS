package model;

public class AmministratoreBean {
	
	private String nome;
	private String cognome;
	private String dataNascita;
	private String email;
	private String password;
	
	
	public AmministratoreBean() {
		
	}
	public AmministratoreBean(String nome, String cognome, String dataNascita, String email, String password) {
		this.nome=nome;
		this.cognome=cognome;
		this.dataNascita=dataNascita;
		this.email=email;
		this.password=password;
	}

	public String getNome() {
		return nome;
	}

	public String getCognome() {
		return cognome;
	}

	public String getDataNascita() {
		return dataNascita;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public void setDataNascita(String dataNascita) {
		this.dataNascita = dataNascita;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}