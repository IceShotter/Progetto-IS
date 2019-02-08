package model;


public class LezioneBean {
private int idLezione;	
private String data;
private String materia;
private String nomeTutor;
private String nomeStudente;
private String ora;
private String aula;
private String descrizione;
private Boolean effettuato;




public LezioneBean() {
	
}






	public Boolean getEffettuato() {
	return effettuato;
}






public void setEffettuato(Boolean effettuato) {
	this.effettuato = effettuato;
}






	public String getNomeStudente() {
	return nomeStudente;
}


public void setNomeStudente(String nomeStudente) {
	this.nomeStudente = nomeStudente;
}


	public int getIdLezione() {
	return idLezione;
}


public void setIdLezione(int idLezione) {
	this.idLezione = idLezione;
}






	public String getData() {
		return data;
	}


	public void setData(String data) {
		this.data = data;
	}


	public String getMateria() {
		return materia;
	}


	public void setMateria(String materia) {
		this.materia = materia;
	}


	public String getNomeTutor() {
		return nomeTutor;
	}


	public void setNomeTutor(String nomeTutor) {
		this.nomeTutor = nomeTutor;
	}





	public String getOra() {
		return ora;
	}


	public void setOra(String ora) {
		this.ora = ora;
	}


	public String getAula() {
		return aula;
	}


	public void setAula(String aula) {
		this.aula = aula;
	}


	public String getDescrizione() {
		return descrizione;
	}


	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	
	
	
	
}
