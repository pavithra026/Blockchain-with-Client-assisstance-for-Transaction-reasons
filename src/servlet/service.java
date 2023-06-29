package servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.serbean;

/**
 * Servlet implementation class service
 */
@WebServlet("/service")
public class service extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public service() {
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
		
		String cname=request.getParameter("cname");
		System.out.println("cname"+cname); 
		
		String cemail=request.getParameter("cemail");
		System.out.println("cemail"+cemail);
		
		String cnumber=request.getParameter("cnumber");
		System.out.println("cnumber"+cnumber);
		
		String service=request.getParameter("cservice");
		System.out.println("service"+service);
		
		String specfy=request.getParameter("types");
		System.out.println("types"+specfy);
		
		String payment=request.getParameter("amount");
		System.out.println("payment"+payment);
		
		String pay=request.getParameter("pay");
		System.out.println("pay"+pay);
		
		
		serbean n=new serbean();
		n.setCname(cname);
		n.setCmail(cemail);
		n.setCnumber(cnumber);
		n.setService(service);
	
		n.setSpecfy(specfy);
		n.setPayment(payment);
n.setPay(pay);
		inter b=new imple();
		int c=b.ser(n);
		if(c==1){
			response.sendRedirect("sus.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
	}

}
