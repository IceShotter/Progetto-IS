package model;

public class TutorBean {

	private String matricola;
	private String nome;
	private String cognome;
	private String dataNascita;
	private String email;
	private String password;
	private String amministratore;
	
	public TutorBean(String matricola, String nome, String cognome, String dataNascita, String email, String password, String amministratore) {
		this.matricola=matricola;
		this.nome=nome;
		this.cognome=cognome;
		this.dataNascita=dataNascita;
		this.email=email;
		this.password=password;
		this.amministratore=amministratore;
	}
	
	public String getAmministratore() {
		return amministratore;
	}

	public void setAmministratore(String amministratore) {
		this.amministratore = amministratore;
	}

	public TutorBean() {
		//empty constructor
	}
	public String getMatricola() {
		return matricola;
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
	public void setMatricola(String matricola) {
		this.matricola = matricola;
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
