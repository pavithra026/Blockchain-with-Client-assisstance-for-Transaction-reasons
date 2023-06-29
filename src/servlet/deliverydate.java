package servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.deliverbean;

/**
 * Servlet implementation class deliverydate
 */
@WebServlet("/deliverydate")
public class deliverydate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deliverydate() {
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
		
		String id=request.getParameter("id");
		System.out.println("id"+id);
		
		String email=request.getParameter("email");
		System.out.println("email"+email);
		
		String filename=request.getParameter("amount");
		System.out.println("filename"+filename);
		
		String apply=request.getParameter("app");
		System.out.println("APPLIED DATe:"+apply);
		
		String deliver=request.getParameter("deli");
		System.out.println("Delivery Date"+deliver);
		
		deliverbean d=new deliverbean();
		d.setId(id);
		d.setEmail(email);
		d.setFilename(filename);
		d.setApply(apply);
		d.setDelivery(deliver);
		
		inter b=new imple();
		int v=b.del(d);
		if(v==1){
			
		response.sendRedirect("reply.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
	}

}
