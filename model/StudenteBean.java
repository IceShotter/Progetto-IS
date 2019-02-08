package model;

public class StudenteBean {
private String matricola;
private String nome;
private String cognome;
private String data;
private String email;
private String password;


public StudenteBean()
{
	
}
public StudenteBean(String matricola,String nome,String cognome,String data,String email,String password)
{
	this.matricola=matricola;
	this.nome=nome;
	this.cognome=cognome;
	this.data=data;
	this.email=email;
	this.password=password;
	
}
public String getMatricola() {
	return matricola;
}
public void setMatricola(String matricola) {
	this.matricola = matricola;
}
public String getNome() {
	return nome;
}
public void setNome(String nome) {
	this.nome = nome;
}
public String getCognome() {
	return cognome;
}
public void setCognome(String cognome) {
	this.cognome = cognome;
}
public String getData() {
	return data;
}
public void setData(String data) {
	this.data = data;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}



}
