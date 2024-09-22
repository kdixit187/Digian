package com.serv;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.CustRegDAO;
import dto.CustRegDTO;

@WebServlet("/CustReg")
public class CustReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CustRegDTO reg1=new CustRegDTO();
		reg1.setCname(request.getParameter("cname"));	
		reg1.setCadd(request.getParameter("cadd"));
		reg1.setMob(Integer.parseInt(request.getParameter("mob")));
		reg1.setUnm(request.getParameter("unm"));
		reg1.setPw(request.getParameter("pw"));
		CustRegDAO data=new CustRegDAO();
		int x=data.save1(reg1);
		if(x!=0)
		{
			response.sendRedirect("login.jsp");
		}else {
			response.sendRedirect("reg.jsp");
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
