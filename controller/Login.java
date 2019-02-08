package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AmministratoreBean;
import model.AmministratoreBeanDao;
import model.StudenteBean;
import model.StudenteBeanDao;
import model.TutorBean;
import model.TutorBeanDao;

@WebServlet("/Accedi")
public class Login extends HttpServlet{

	  private static final long serialVersionUID = 1L;
	  protected  void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		 
		  
		  boolean studente=false;
		  boolean tutor=false;
		  boolean amministratore=false;
		  
			    StudenteBeanDao d=new StudenteBeanDao();
			    StudenteBean sb=d.doRetrieveByKey(request.getParameter("email1"), request.getParameter("password1"));
			    
			    TutorBeanDao td=new TutorBeanDao();
			    TutorBean tb=td.doRetrieveByKey(request.getParameter("email1"), request.getParameter("password1"));
			    
			    AmministratoreBeanDao ad=new AmministratoreBeanDao();
			    AmministratoreBean ab=ad.doRetrieveByKey(request.getParameter("email1"), request.getParameter("password1"));
			    
			    if(sb!=null) 
			    {
			    	studente=true;
			      request.getSession().setAttribute("stBean",sb);
			      response.sendRedirect("HomeStudente.jsp");
			      
			    }else if(tb!=null) 
			    {
			    	tutor=true;
			      request.getSession().setAttribute("tuBean",tb);
			      response.sendRedirect("HomeTutor.jsp");
			      
			    }else if(ab!=null) {
			    	amministratore=true;
				      request.getSession().setAttribute("amBean",ab);
				      response.sendRedirect("HomeAmministratore.jsp");
			    }else if(studente==false || tutor==false || amministratore==false) {
			    	request.getSession().setAttribute("esitoAccesso",false);
				    response.sendRedirect("Login.jsp");
			    }
			    
			 
			    
			    
	
		  
	  }
}







