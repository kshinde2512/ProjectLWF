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
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="Navbar.css">
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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

<br>
<br>
<br>
<br>
<br> 
<body background="background/background.jpg" style="height:100%;">

<form method="post">

<center>
<table border="0" cellspacing="5" cellpadding="5" style="border-radius:5px; border-color:gray">
	<tr>
		<td>
		<h1 style="font-family : cursive; color:green">A</h1>
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">B</h1>
		</td>
		<td>	
		<input type=text name="C" maxlength="1" value="" style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold">
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">D</h1>
		</td>
		<td>
		<input type=text name="E"  style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="1" value="" >
		</td>
		<td>
		<input type=text name="F"  style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="1" value="" >
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">G</h1>
		</td>
		<td>
		<input type=text name="H" style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="1" value="">
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">I</h1>
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">J</h1>
		</td>
	</tr>
	<tr>
		<td>
		<input type=text name="K" style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="1" value="">
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">L</h1>
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">M</h1>
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">N</h1>
		</td>
		<td>
		<input type=text name="O" style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="1" value="">
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">P</h1>
		</td>
		<td>
		<input type=text name="Q" style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="1" value="">
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">R</h1>
		</td>
		<td>
		<input type=text name="S" style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="1" value="">
		</td>
		<td>
		<input type=text name="T" style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="2" value="">
		</td>
	</tr >
	<tr>
	<td>
		<h1 style="font-family : cursive; color:green">U</h1>
		</td>
		<td>
		<input type=text name="V"  style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="2" value="" >
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">W</h1>
		</td>
		<td>
		<input type=text name="X" style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="2" value="">
		</td>
		<td>
		<input type=text name="Y" style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="1" value="">
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">Z</h1>
		</td>
	</tr >
		<td colspan="10" align="center">
		<input type=submit value="Submit" name="Submit" style="height:30px; font:15px cursive; font-weight:bold	">
		</td>
	</tr>
</table>
</center>
</form>
</body>
<%

/* response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
     		 if(session.getAttribute("user")==null)
     			{
     			response.sendRedirect("Login.jsp");
     			}  */
     		
 
int id=0;
String missing[]= new String[12];
 missing[0] = request.getParameter("C");
 missing[1] = request.getParameter("E");
 missing[2] = request.getParameter("F");
 missing[3] = request.getParameter("H");
 missing[4] = request.getParameter("K");
 missing[5] = request.getParameter("O");
 missing[6] = request.getParameter("Q");
 missing[7] = request.getParameter("S");
 missing[8] = request.getParameter("T");
 missing[9] = request.getParameter("V");
 missing[10] = request.getParameter("X");
 missing[11] = request.getParameter("Y");


try
{
String url = "jdbc:mysql://localhost:3306/LWF";
String user = "root";
String password = "prachi";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url, user, password);
 Statement ps = con.createStatement();
 ResultSet rs = ps.executeQuery("select * from missingletter;");
List<String> list = new ArrayList();
while (rs.next()) {
	list.add(rs.getString(2));
}
Iterator<String> it = list.iterator();
String letter[]= new String[12];
for(int i=0; i<12; i++)
{
	letter[i]=it.next();
}


for(int j=0;j<12;j++)
{
	if(missing[j].equals(letter[j]) )
	{
		out.println("<audio autoplay>"); 
		out.println("<source src=Audio/Correct.mp3>");
	}
	else
	{
		out.println("<audio autoplay>"); 
		out.println("<source src=Audio/incorrect.mp3>");
	}
}
}
catch(Exception e) {
	System.out.print(e);
  }
%>
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        