package controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.StudenteBean;
import model.StudenteBeanDao;

@WebServlet("/Registrati")
public class Registrati extends HttpServlet{

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException{
		String matricola=request.getParameter("matricola1");
		String nome=request.getParameter("nome1");
		String cognome=request.getParameter("cognome1");
		String data=request.getParameter("data1");
		String email=request.getParameter("email1");
		String password=request.getParameter("password1");
		
		boolean verificaMatricola=Checker("^[0-9]{10}$",matricola);
		boolean verificaNome=Checker("^[A-Z]+[a-z]+\\s*[A-Z]*[a-z]*",nome);
		boolean verificaCognome=Checker("^[A-Z]+[a-z]+",cognome);
		boolean verificaData=Checker("^[0-9]{4}\\-[0-9]{2}\\-[0-9]{2}$",data);
		boolean verificaEmail=Checker("^\\w+([\\.-]?\\w+)*@\\w+([\\.-]?\\w+)*(\\.\\w+)+$",email);
		boolean verificaPassword=Checker("(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,}",password);
		
		
		
		if(verificaMatricola==true)
		{
			if(verificaNome==true)
			{
				if(verificaCognome==true)
				{
					if(verificaData==true)
					{
						if(verificaEmail==true)
						{
							if(verificaPassword==true)
							{
								StudenteBean studenteReg=new StudenteBean(matricola,nome,cognome,data,email,password);
									StudenteBeanDao studente=new StudenteBeanDao();
									if(studente.doSave(studenteReg))
										request.getSession().setAttribute("esitoRegistrazione",true);
									else
										request.getSession().setAttribute("esitoRegistrazione",false);
									response.sendRedirect("Registrati.jsp");
								
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
						System.out.println("verifica cognome fallita");
					}
				}else {
					System.out.println("verifica nome fallita");
				}
			}else {
				System.out.println("verifica matricola fallita");
			}
			
	}
	
	public static boolean Checker(String reg,String check)
	{
		Pattern checkreg=Pattern.compile(reg);
		Matcher regmatcher=checkreg.matcher(check);
		boolean ritorno=false;
		while(regmatcher.find()) {
			if(regmatcher.group().length()!=0) {
				System.out.println(regmatcher.group().trim());
				ritorno=true;
			}
		}
		return ritorno;
	}
}
