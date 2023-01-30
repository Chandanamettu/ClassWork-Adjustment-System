
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
function validLogin(){
if (document.form.fn.value == ""){
alert ( "Please enter Login Name." );
return false;
}
if (document.form.p.value == ""){
alert ( "Please enter password." );
return false;
}
alert ( "Welcome " +  document.form.fn.value);
return true;
}
</script>
<link rel="stylesheet" type="text/css" href="home.css">
    </head>
    <body>
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
                  
                    <form name="form" class="login-form" method="post" onsubmit="return validLogin();" action="log.jsp">
                            <input type="text" placeholder="username" name="fn" value="">
                            <input type="number" placeholder="phononumber" name="ph" value="">
                           <input type="password" placeholder="password" name="p" value="">
                           <input type="submit"  value="login">
                      
                        
                    </form>
                    
                </div>
            </div>
        </header>   
<div class="footer">
  <h2> Copyright &copy; 2018 SNIST. All Rights Reserved. </h2>
</div>
            
    </body>
</html>
