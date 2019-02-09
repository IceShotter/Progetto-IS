package model;

import java.sql.Date;
import java.sql.Time;

public class AccompagnamentoBean {
	private int id;
	private String descrizione;
	private String ora;
	private String data;
	private String studente;
	private String tutor;
	private Boolean effettuato;
	
	public void Accompagnamento() {
		//empty constructor
	}
	public boolean getEffettuato() {
		return effettuato;
	}
	
	
	
	public void Accompagnamento(int id, String descrizione, String ora, String data, String studente, String tutor) {
		this.id=id;
		this.descrizione=descrizione;
		this.ora=ora;
		this.data=data;
		this.studente=studente;
		this.tutor=tutor;
		
	}
	
	


	public void setEffettuato(Boolean effettuato) {
		this.effettuato = effettuato;
	}

	public int getId() {
		return id;
	}

	public String getDescrizione() {
		return descrizione;
	}

	
	
	

	public String getStudente() {
		return studente;
	}

	public String getTutor() {
		return tutor;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	

	public String getOra() {
		return ora;
	}



	public void setOra(String ora) {
		this.ora = ora;
	}



	public String getData() {
		return data;
	}



	public void setData(String data) {
		this.data = data;
	}



	public void setStudente(String studente) {
		this.studente = studente;
	}

	public void setTutor(String tutor) {
		this.tutor = tutor;
	}
	
	
}
