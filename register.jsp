<%-- 
    Document   : register
    Created on : 16 Oct, 2018, 8:41:27 PM
    Author     : chand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <style>
* {
    box-sizing: border-box;
}

/* Style the body */
body {
    font-family: Arial, Helvetica, sans-serif;
    margin: 0;
background-color: #ddd;
}

/* Header/logo Title */
.header {
    padding: 80px;
    text-align: center;
    background-image:url(snist1.jpg);
    color: white;
}

/* Increase the font size of the heading */
.header h1 {
    font-size: 40px;
}

/* Style the top navigation bar */
.navbar {
    overflow: hidden;
    background-color: #333;
}

/* Style the navigation bar links */
.navbar a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
    float: right;
}

/* Change color on hover */
.navbar a:hover {
    background-color: #ddd;
    color: black;
}

/* Column container */

/* Create two unequal columns that sits next to each other */

img {
    display: block;
    margin-left: auto;
    margin-right: auto;
}
.footer {
    padding: 20px;
    text-align: center;
    background: #ddd;
}



/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
    .navbar a {
        float: none;
        width: 100%;
    }
}
.logo img
{
    float:center;
    width:150px;
    height:auto;
}
</style>

       <script>
function validReg(){
if (document.form.fn.value == ""){
alert ( "Please enter user Name." );
return false;
}
if (document.form.ph.value == ""){
alert ( "Please enter phone number." );
return false;
}
if (document.form.br.value == ""){
alert ( "Please enter branch" );
return false;
}
if (document.form.s1.value == ""){
alert ( "Please enter subject1" );
return false;
}
if (document.form.p.value == ""){
alert ( "Please enter password" );
return false;
}
alert ( "Welcome User"+ document.form.fn.value  );
return true;
}
</script>
        <link rel="stylesheet" type="text/css" href="home.css">
               
    </head>
    <div class="header">
    <div class="logo">
                    <img src="logo.png">
                </div>
  <h1>SREENIDHI INSTITUTE OF SCIENCE AND TECHNOLOGY</h1>
  <p> CLASS WORK ADJUSTMENT</p>
</div>

<div class="navbar">
  <a href="home.jsp">HOME</a>
  <a href="register.jsp">REGISTER</a>
  <a href="login.jsp">LOGIN</a>
  <a href="home.jsp" class="right">LOGOUT</a>
</div>
               <div class="login-page">
                
                <div class="form">
                    <form class="register-form" id="myForm" action="reg.jsp"  name="form"  onsubmit="return validReg();" >
                        <input type="text" placeholder="username" name="fn">
                         <input type="text" placeholder="phonenumber" name="phno">
                         <input type="text" placeholder="branch" name="br">
                          <input type="text" placeholder="subject1" name="s1">
                          <input type="text" placeholder="subject2" name="s2">
                          <input type="text" placeholder="subject3" name="s3">
                           <input type="password" placeholder="password" name="p">
                            
                            <input type="submit" value="create">
                         

                    </form>

                    
                </div>
            </div>     
        <div class="footer">
  <h2> Copyright &copy; 2018 SNIST. All Rights Reserved. </h2>
</div>
  
    </body>
</html>

