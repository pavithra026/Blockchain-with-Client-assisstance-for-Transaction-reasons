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

import bean.Block;
import bean.formbean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbcon.dbcon;
/**
 * Servlet implementation class clientform
 */
@WebServlet("/clientform")
public class clientform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clientform() {
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
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String cname=request.getParameter("cname");
		System.out.println("cname"+cname);
		
	/*	String email=request.getParameter("email");
		System.out.println("email"+email);*/
		 

	
		
		String number=request.getParameter("tel");
		System.out.println("number"+number);
		
		String city=request.getParameter("city");
		System.out.println("city"+city);
		
		String state=request.getParameter("state");
		System.out.println("state"+state);
		
		String country=request.getParameter("country");
		System.out.println("country"+country);
		 
		String cate=request.getParameter("cate");
		System.out.println("cate"+cate);
		
		String desc=request.getParameter("description");
		System.out.println("desc"+desc);
		
		String date=request.getParameter("date");
		System.out.println("date"+date);
		
		String service=request.getParameter("service");
		System.out.println("service"+service);

		 String prehash="";
			String afterhash="";
			
			
			String email=request.getParameter("email");
			Connection con;
			con=dbcon  .create();
			try {
				PreparedStatement pa=con.prepareStatement("SELECT phash,ahash FROM `bc05-22`.`application` where email='"+email+"'");
				ResultSet rs=pa.executeQuery();
				while(rs.next()){
					prehash=rs.getString(1);
					afterhash=rs.getString(2);
					
				}
				 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println(afterhash);
			prehash=afterhash;

			 
			 
			 
			Block genesisBlock = new Block("Hi im the first block", "0");

			String phas=genesisBlock.hash;
			
			Block secondBlock = new Block("Yo im the second block",genesisBlock.hash);
			System.out.println("Hash for block 2 : " + secondBlock.hash);
			String aphas=secondBlock.hash; 
		
		formbean f=new formbean(); 
		f.setCname(cname);
		f.setEmail(email);
		f.setNumber(number);
		f.setCity(city);
		f.setState(state);
		f.setCountry(country);
		f.setCate(cate);
		f.setDescription(desc);
		f.setDate(date);
		f.setService(service);
		f.setPhash(phas);
		f.setAhash(aphas);
		
		
		inter n=new imple();
		int b=n.form(f);
		if(b==1){
			response.sendRedirect("formfillsuc.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
			
		}
		
	}

}
