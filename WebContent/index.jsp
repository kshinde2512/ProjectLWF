<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
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
                <li><a href="Logout.jsp" name="logout">Logout</a></li>
            </ul>
        </nav>
  </header>  	

<br>
<br>
<br>
<br>
<br> 
  <body bgcolor="lightgreen">
  <form method=post action="Logout.jsp">
    <div class="slidershow middle">

      <div class="slides">
        <input type="radio" name="r" id="r1" checked>
        <input type="radio" name="r" id="r2">
        <input type="radio" name="r" id="r3">
        
        <div class="slide s1">
        <a href="BigSmall.html">
          <img src="SPG/Same.png" style="border-radius: 15px;" alt="">
          </a>
        </div>
        <div class="slide">
          <img src="SPG/maxresdefault.jpg" style="border-radius: 15px;" alt="">
        </div>
        <div class="slide">
          <img src="SPG/g.jpg" style="border-radius: 15px;" alt="">
        </div>
       
      </div>

      <div class="navigation">
        <label for="r1" class="bar"></label>
        <label for="r2" class="bar"></label>
        <label for="r3" class="bar"></label>
        
      </div>
    </div>
    </form>
    <%
    String check=request.getParameter("logout");
    if(check!=null)
    {
    int a=0;
	session.setAttribute("token", a);  
	
    }
    else
    {
    	
    }
    %>
  </body>
</html>

</html>