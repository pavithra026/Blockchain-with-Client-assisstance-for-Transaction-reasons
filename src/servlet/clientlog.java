package servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.clientbean;

/**
 * Servlet implementation class clientlog
 */
@WebServlet("/clientlog")
public class clientlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clientlog() {
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
	
		PrintWriter out=response.getWriter();
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		System.out.println("email"+email);
		
		HttpSession session=request.getSession();
		session.setAttribute("uname", email);
		
		String pass=request.getParameter("pass");
		System.out.println("pass"+pass);
		
		clientbean d=new clientbean();
		d.setEmail(email);
		d.setPass(pass);
		
		inter n=new imple();
			boolean b=n.clog(d)	;
			if(b==true){
				response.sendRedirect("clientmain.jsp");
			}else{
			
			
			response.sendRedirect("error.jsp");
	}

}
}
