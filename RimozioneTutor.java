package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.TutorBean;
import model.TutorBeanDao;

@WebServlet("/rimozioneTutor")
public class RimozioneTutor extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		
		String matricola = request.getParameter("In sospeso, qui ci va il campo della colonna matricola generato dinamicamente");
		
		TutorBean t= new TutorBean();
		
		t.setMatricola(matricola);
		
		TutorBeanDao d= new TutorBeanDao();
		
		request.setAttribute("rem", d.doDelete(t.getMatricola()));
		
		RequestDispatcher view= request.getRequestDispatcher("Rimozione.jsp");
		view.forward(request, response);
	}
	
	
	

}
