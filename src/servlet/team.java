package servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.teambean;

/**
 * Servlet implementation class team
 */
@WebServlet("/team")
public class team extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public team() {
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
		String tname=request.getParameter("team");
		System.out.println("team"+tname);
		
		String name=request.getParameter("username");
		System.out.println("Team Member"+name);
		 
		String tid=request.getParameter("regid");
		System.out.println("teamid"+tid);
		
		teambean t=new teambean();
		t.setTeam(tname);
		t.setName(name);
		t.setTeamid(tid);
		
		inter n=new imple();
		int b=n.team(t);
		if(b==1){
			
			response.sendRedirect("serteam.jsp");
		}
		else{
			response.sendRedirect("Error.jsp");
		}
	}

}
