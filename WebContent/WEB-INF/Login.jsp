`<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="Navbar.css">
</head>
<header>
	<h2>
		LEARN<span>WITH</span><span style="color: yellow">FUN</span>
	</h2>
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
<body background="background/children.jpg">
	<center>
	
		<fieldset
			style="width: 400px; height: 320px; background-color:#F0F8FF; border-radius: 10px; border-bottom-left-radius: 50px; border-top-right-radius: 50px">
			<legend style="font:25px cursive; color: green; font-weight: bold;">LOGIN</legend>
			<form method=post action="login">
				<br>

				<h4
					style="font-family: cursive; color: red; font-weight: bold; margin-top: 4px"">
					Username :
					</h3>
					<input type=text name="new" id="txtNewPassword" value=""
						style="color: Blue; font: 15px cursive; text-align: center"
						required><br>
					<br>
					<h4 style="font-family: cursive; color: red; font-weight: bold">
						Password :
						</h3>
						<input type=password name="Conf" id="txtConfirmPassword" value=""
							style="color: Blue; font: 15px cursive; text-align: center"
							required><br>
						<br> <input type=submit value="Login" name="Submit1"
							style="height: 30px; font: 15px cursive; font-weight: bold" /> <br>
						<br> <br>
			</form>

		</fieldset>
	</center>
	
</body>
</html>