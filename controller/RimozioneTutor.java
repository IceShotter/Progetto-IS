package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.TutorBean;
import model.TutorBeanDao;

@WebServlet("/RimozioneTutor")
public class RimozioneTutor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String emailT=request.getParameter("emailTutor");
		
		TutorBeanDao td=new TutorBeanDao();
		  ArrayList<TutorBean> lista=td.doRetrieve();
		  for(int i=0;i<lista.size();i++)
		  {
			  TutorBean tb=lista.get(i);
			  if(tb.getEmail().equals(emailT)) {
				  td.doDelete(tb.getEmail());
				  response.sendRedirect("RimuoviTutor.jsp");
			  }
			  
		  }
	}
	
	
	

}
