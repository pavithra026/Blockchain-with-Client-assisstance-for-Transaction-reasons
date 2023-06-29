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
import bean.managebillbean;

/**
 * Servlet implementation class managebill
 */
@WebServlet("/managebill")
public class managebill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public managebill() {
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
		String idno=request.getParameter("idno");
		System.out.println("Bill no"+idno);
		
		String date=request.getParameter("date");
		System.out.println("date:"+date);
		
		String name=request.getParameter("name");
		System.out.println("name"+name);
		
		String email=request.getParameter("email");
		System.out.println("email"+email);
		
		String quantity=request.getParameter("quantity");
		System.out.println("quantity"+quantity);
		
		String costps=request.getParameter("costps");
		System.out.println("costps"+costps);
		
		String fsize=request.getParameter("fsize");
		System.out.println("fsize"+fsize);
		
		String price=request.getParameter("price");
		System.out.println("price"+price);
		
			
		managebillbean c=new managebillbean();
		c.setBill(idno);
		c.setDate(date);
		c.setName(name);
		c.setEmail(email);
		c.setQuantity(quantity);
		c.setCost(costps);
		c.setFilesize(fsize);
		c.setPrice(price);
		
		
		inter e =new imple();
		int n=e.bill(c);
		System.out.println(n);
		if(n==1){
			response.sendRedirect("addcartmanage.jsp");
			
		}
		else{
			response.sendRedirect("error.jsp");
		}
	}

}
