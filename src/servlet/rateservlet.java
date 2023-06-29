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

/**
 * Servlet implementation class clientreg
 */
@WebServlet("/clientreg")
public class rateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rateservlet() {
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
		String rat=request.getParameter("rat");
		System.out.println("name"+rat);
		
		String email=request.getParameter("email");
		System.out.println("email"+email);
		
		String exp=request.getParameter("exp");
		System.out.println("Description"+exp);
		
		
		
		clientbean c=new clientbean();
		c.setName(rat);
		c.setEmail(email);
		c.setMobile(exp);
		
		
		
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
