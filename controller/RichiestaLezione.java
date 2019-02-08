package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LezioneBean;
import model.LezioneBeanDao;
import model.StudenteBean;

@WebServlet("/RichiediLezione")

public class RichiestaLezione extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException{
		String data=request.getParameter("data");
		String ora=request.getParameter("ora");
		String materia=request.getParameter("materia");
		String emailTutor=request.getParameter("tutor");
		String emailStudente=request.getParameter("emailStudente");
		Boolean effettuato=false;
		

		
		boolean verificaOra=Checker("^(([0][8-9]|[1][0-8]):[0-5][0-9])+$",ora);
		
		if(verificaOra==true) {
			LezioneBean lb=new LezioneBean();
			lb.setData(data);
			lb.setOra(ora);
			lb.setMateria(materia);
			lb.setNomeTutor(emailTutor);
			lb.setNomeStudente(emailStudente);
			lb.setEffettuato(effettuato);
			
			LezioneBeanDao ld=new LezioneBeanDao();
			if(ld.doSave(lb, emailTutor, emailStudente))
				{
				request.getSession().setAttribute("esitoRichiestaLezione",true);
				response.sendRedirect("HomeStudente.jsp");
				}
			else
				{   request.getSession().setAttribute("esitoRichiestaLezione",false);
					response.sendRedirect("RichiediLezione.jsp");
				}
		}else {
			System.out.println("Verifica ora fallita");
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

