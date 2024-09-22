package com.serv;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CustRegDAO;
import dto.CustRegDTO;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs= request.getSession(false);
		 if(hs!=null)
		 {
			  hs.invalidate();	
		 }
		 
		 CustRegDTO lgn=new CustRegDTO();
		 lgn.setUnm(request.getParameter("unm"));
		 lgn.setPw(request.getParameter("pw"));
		 CustRegDAO data=new CustRegDAO();
		 Vector v=data.loginChk(lgn);
		 if(v.isEmpty())
		 {
			 response.sendRedirect("login.jsp");
		 }else {
			 hs= request.getSession(true);
		   hs.setAttribute("cname", v.elementAt(1));
		   hs.setAttribute("cadd", v.elementAt(2));
		   hs.setAttribute("mob", v.elementAt(3));
		   hs.setAttribute("unm", v.elementAt(4));
		   hs.setAttribute("pw", v.elementAt(5));
		   
		   
		   response.sendRedirect("index.jsp");
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
