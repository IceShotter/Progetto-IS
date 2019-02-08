package controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.StudenteBean;
import model.StudenteBeanDao;
import model.TutorBean;
import model.TutorBeanDao;

@WebServlet("/AggiuntaTutor")
public class AggiuntaTutor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome= request.getParameter("nome1");
		String cognome= request.getParameter("cognome1");
		String matricola= request.getParameter("matricola1");
		String data= request.getParameter("dataNascita1");
		String email= request.getParameter("email1");
		String password= request.getParameter("password1");
		
		boolean verificaNome=Checker("^[A-Z]+[a-z]+\\s*[A-Z]*[a-z]*",nome);
		boolean verificaCognome=Checker("^[A-Z]+[a-z]+",cognome);
		boolean verificaMatricola=Checker("^[0-9]{10}$",matricola);
		boolean verificaData=Checker("^[0-9]{4}\\-[0-9]{2}\\-[0-9]{2}$",data);
		boolean verificaEmail=Checker("^\\w+([\\.-]?\\w+)*@\\w+([\\.-]?\\w+)*(\\.\\w+)+$",email);
		boolean verificaPassword=Checker("(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,}",password);
		
		
		if(verificaNome==true)
		{
			if(verificaCognome==true)
			{
				if(verificaMatricola==true)
				{
					if(verificaData==true)
					{
						if(verificaEmail==true)
						{
							if(verificaPassword==true)
							{
								TutorBean tutorAgg=new TutorBean(matricola,nome,cognome,data,email,password,"d.cesarano@unisa.it");
									TutorBeanDao tutor=new TutorBeanDao();
									if(tutor.doSave(tutorAgg))
										request.getSession().setAttribute("esitoAggiuntaT",true);
									else
										request.getSession().setAttribute("esitoAggiuntaT",false);
									response.sendRedirect("AggiungiTutor.jsp");
								
								}else {
									System.out.println("verifica password fallita");
								}
							}else {
								System.out.println("verifica emailfallita");
							}
						}else {
							System.out.println("verifica data fallita");
						}
					}else {
						System.out.println("verifica matricola fallita");
					}
				}else {
					System.out.println("verifica cognome fallita");
				}
			}else {
				System.out.println("verifica nome fallita");
			}
	
	}
	
	public static boolean Checker(String reg,String check)
	{
		Pattern checkaggt=Pattern.compile(reg);
		Matcher aggtmatcher=checkaggt.matcher(check);
		boolean ritorno=false;
		while(aggtmatcher.find()) {
			if(aggtmatcher.group().length()!=0) {
				System.out.println(aggtmatcher.group().trim());
				ritorno=true;
			}
		}
		return ritorno;
	}
	

}
