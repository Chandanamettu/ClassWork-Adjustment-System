<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
     <center> <h2>Dr. Aruna Varanasi</h2>
      <h5>Professor & HOD CSE Dept.</h5>
      </center>
      <div style="height:200px;"><img src="hod.jpg" alt="HOD"></div>
      
      <p>Dr. Aruna Varanasi is a hardworking and enthusiastic researcher. The Department of Computer Science and Engineering has taken leaps and bounds of progress under her headship. She is a persistent pursuer to get things done by all the faculty and staff in the department and possess very remarkable HR skills. She has got a number of research papers published in leading journals. She has rendered her services in Government sector for six years after which she shifted to teaching. She now has 14 years of teaching experience in addition to her industrial experience. She has great passion in devising solutions to security issues in Information Technology and has been doing lot of research work in Cryptography, Image cryptography, Information Security and Bioinformatics. She has 19 International Journal publications to her credit. She has also been a resource person for several other institutions for the benefit of students of those institutions. Dr. Aruna Varanasi is a self motivated and self driven leader and has taken several initiatives for the development of the department.

Dr. Aruna Varanasi has received  "Best Teacher in Computer Science and Engineering Department, AP & TS"  award by ISTE, during December, 2017.</p>
      
  

<div class="footer">
  <h2> Copyright &copy; 2018 SNIST. All Rights Reserved. </h2>
</div>

</body>
</html>
