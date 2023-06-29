package servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.aplicationbean;

/**
 * Servlet implementation class forms
 */
@WebServlet("/forms")
public class forms extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forms() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("cname");
		String email=request.getParameter("email");
		String contact=request.getParameter("tel");
		String add=request.getParameter("address");
		String services=request.getParameter("cate");
		String date=request.getParameter("date");
		String cate=request.getParameter("service");
		String a=request.getParameter("");
		
		aplicationbean ap=new aplicationbean();
		ap.setName(name);
		ap.setEmail(email);
		ap.setContact(contact);
		ap.setAddress(add);
		ap.setService(services);
		ap.setDate(date);
		ap.setCate(cate);
		
		inter n=new imple();
		int b=n.app(ap);
		if(b==1){
			response.sendRedirect("clientmain.jsp");
		}else{
			response.sendRedirect("error.jsp");
		}
	}

}
