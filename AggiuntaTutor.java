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

@WebServlet("/inserimentoTutor")
public class AggiuntaTutor extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		String matricola= request.getParameter("matricola");
		String nome= request.getParameter("nome");
		String cognome= request.getParameter("cognome");
		String data= request.getParameter("dataNascita");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		
		TutorBean t= new TutorBean();
		
		t.setMatricola(matricola);
		t.setNome(nome);
		t.setCognome(cognome);
		t.setDataNascita(data);
		t.setEmail(email);
		t.setPassword(password);
		
		TutorBeanDao tb= new TutorBeanDao();
		
		request.setAttribute("ins", tb.doSave(t));
		
		RequestDispatcher view= request.getRequestDispatcher("AggiungiTutor.jsp");
		view.forward(request, response);
		
	
	
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doGet(request,response);
		
	}
	

}
