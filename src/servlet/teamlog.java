package servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.teambean;

/**
 * Servlet implementation class teamlog
 */
@WebServlet("/teamlog")
public class teamlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public teamlog() {
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
		System.out.println("Tname"+tname);
		
		HttpSession session=request.getSession();
		session.setAttribute("umail",tname);
		
		String pass=request.getParameter("regid");
		System.out.println("id"+pass);
		
		teambean h=new teambean();
		h.setTeam(tname);
		h.setTeamid(pass);
		
		inter n=new imple();
		boolean b=n.tlog(h);
		if(b==false){
			response.sendRedirect("teammain.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
	}

}
