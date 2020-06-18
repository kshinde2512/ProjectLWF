<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="java.sql.PreparedStatement"%>
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

 <script>
 /* function checkEmail(theForm) {
	    if (theForm.txtNewPassword.value != theForm.txtConfirmPassword.value)
	    {
	        alert('Passwords don\'t match!');
	        return false;
	    } else {
	    	alert('Update successful');
	        return true;
	    }
	} */
</script> 
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
<fieldset style="width:400px;height:300px;background-color:lightyellow;border-radius:10px">
<form method=post">
<br>
	
<h4 style="font-family: cursive; color: red; font-weight: bold">New Password : </h3><input type=text name="new" id="txtNewPassword" value="" style=" color:Blue;font:15px cursive;text-align:center" required><br><br>
<h4 style="font-family: cursive; color: red; font-weight: bold">Confirm Password : </h3><input type=text name="Conf" id="txtConfirmPassword" value="" style=" color:Blue;font:15px cursive;text-align:center"required><br><br>
	
	<input type=submit value="Submit" name="Submit1" style="height:30px; font:15px cursive; font-weight:bold" />
</form>
</fieldset>
</center>
</body>
</html>
<%

Object a=session.getAttribute("mailabc");
String abcdmail=a.toString();

try
{
String newp=request.getParameter("new");
String confirm=request.getParameter("Conf");
Connection con=null;
if(newp==null&&confirm==null)
{
}
else{	
String url = "jdbc:mysql://localhost:3306/LWF";
String user = "root";
String password = "prachi";
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url, user, password);
PreparedStatement ps=con.prepareStatement("Update users set password=? where email=?");
ps.setString(1,newp);
ps.setString(2,abcdmail);

int count=0;

count=ps.executeUpdate();
if(count>0)
{
	out.println("<html><head></head><body onload=\"alert('Update successfull')\"></body></html>");
	
}
else if(count<=0)
{
	out.println(
			"<html><head></head><body onload=\"alert('not updated')\"></body></html>");
			
}

}
}
catch(Exception r)
{
	System.out.print(r);
}



%>


