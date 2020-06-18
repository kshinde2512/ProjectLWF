<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mail.JavaMailUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="Navbar.css">

</head>

<header>
        <h2>LEARN<span>WITH</span><span style="color:yellow">FUN</span></h2>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </nav>
  </header> 
  <br><br><br>
<body background="background/background.jpg">
<center>
<fieldset style="width:400px;height:200px;background-color:lightyellow;border-radius:10px">
<form method=post>
<br>
<h3 style="font-family: cursive; color: red; font-weight: bold">Enter your email id :</h3><br><input type=text name="email" style=" color:Blue;font:15px cursive;text-align:center"><br><br>
<input type=submit value="Submit" name="Submit" style="height:30px; font:15px cursive; font-weight:bold	"/>
<br>
</form>
</fieldset>
</center>



<%
String email = request.getParameter("email");

Connection con=null;
try
{
String url = "jdbc:mysql://localhost:3306/LWF";
String user = "root";
String password = "prachi";
Class.forName("com.mysql.jdbc.Driver");
 con= DriverManager.getConnection(url, user, password);
 PreparedStatement ps = con.prepareStatement("select * from users where email = ?");
 ps.setString(1, email);
 ResultSet rs=ps.executeQuery()	;
 String l1=null;
 
 while (rs.next())
 {
		l1=rs.getString(1);		
 }

 
 if(email.equals(l1))
	{
	
	 session.setAttribute("email",l1);	
	 response.sendRedirect("UpdatePassword.jsp");
	}
 else
 {
	 out.print("Please enter correct email id");
 }
 con.close();
}
catch(Exception r)
{
	con.close();
}
finally
{
	con.close();
}
%>
</body>
</html>