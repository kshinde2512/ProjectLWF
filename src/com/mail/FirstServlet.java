package com.mail;

import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;  
  
  @WebServlet("/login")
public class FirstServlet extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String n=request.getParameter("new");  
    String p=request.getParameter("Conf");  
          
    if(LoginDao.validate(n, p)){ 
    	response.sendRedirect("Homepage.jsp");
    	HttpSession session2=request.getSession();
    	session2.setAttribute("user", n);
		/*
		 * RequestDispatcher rd=request.getRequestDispatcher("homepage.html");
		 * rd.forward(request,response);
		 */
    }  
    else{  
    	out.println(
				"<html><head></head><body onload=\"alert('UserName or Password Incorrect')\"></body></html>");
		/*
		 * RequestDispatcher rd=request.getRequestDispatcher("homepage.html");
		 * rd.include(request,response);
		 */ 
    }  
          
    out.close();  
    }  

}