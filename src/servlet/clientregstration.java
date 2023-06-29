package servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.clientbean;
import bean.clientregbean;

/**
 * Servlet implementation class clientreg
 */
@WebServlet("/clientregstration")
public class clientregstration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clientregstration() {
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
		String date=request.getParameter("date");
		System.out.println("date"+date);
		
		String email=request.getParameter("email");
		System.out.println("email"+email);
		
		String pass=request.getParameter("pass");
		System.out.println("pass"+pass);
		
		String cpass=request.getParameter("cpass");
		System.out.println("cpass"+cpass);
		
		clientregbean c=new clientregbean();
		c.setDate(date);
		c.setEmail(email);
		c.setPass(pass);
		c.setCpass(cpass);
		
		
		inter e =new imple();
		int n=e.creg(c);
		if(n==1){
			response.sendRedirect("client.jsp");
			
		}
		else{
			response.sendRedirect("error.jsp");
		}
	}

}
