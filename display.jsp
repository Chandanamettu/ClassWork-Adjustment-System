<%@ page language="java" import="java.lang.*" %>
<%@ page language="java" import="java.sql.*" %>
<%
      
     String ph=(String)session.getAttribute("phone"); 
        
       
        out.println(ph);
   
    
      Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "system");
       String sqlSelectRecord="";
        sqlSelectRecord="SELECT distinct s.facultyname,s.day,s.period1,s.period2,s.period3,s.period4,s.period5,s.period6,s.period7,s.period8,s.period9"+ " FROM indivualtt s ,register f" +" where  s.phno='"+ph+"'";
       Statement s = con.createStatement();

       
        ResultSet rsSelectRecord = s.executeQuery(sqlSelectRecord);

 
%>
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


 td, th {
    border: 1px solid #ddd;
    padding: 8px;
background-color:#a8a49e;
}


 tr:hover {background-color: #ddd;}
 th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color:#af6b4c;
    color: white;
      border: 1px solid black;
    margin-top:"50%";
    margin-bottom: 50px;
    margin-right:50px;
    margin-left: 50px;
   
}

</style>

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
        <table class="login-page">
  <tr>
    <th>facultyname</th>
<th>day</th>
    <th>period1</th>
    <th>period2</th>
    <th>period3</th>
    <th>period4</th>
    <th>period5</th>
    <th>period6</th>
    <th>period7</th>
    <th>period8</th>
    <th>period9</th>
    
  </tr>
  <%
  int cnt=1;
  while(rsSelectRecord.next())
  {
  %>
  <tr>
        <td><%=rsSelectRecord.getString("facultyname")%>&nbsp;</td>
 <td><%=rsSelectRecord.getString("day")%>&nbsp;</td>
    <td><%=rsSelectRecord.getString("period1")%>&nbsp;</td>
    <td><%=rsSelectRecord.getString("period2")%>&nbsp;</td>
    <td><%=rsSelectRecord.getString("period3")%>&nbsp;</td>
    <td><%=rsSelectRecord.getString("period4")%>&nbsp;</td>
    <td><%=rsSelectRecord.getString("period5")%>&nbsp;</td>
    <td><%=rsSelectRecord.getString("period6")%>&nbsp;</td>
    <td><%=rsSelectRecord.getString("period7")%>&nbsp;</td>
    <td><%=rsSelectRecord.getString("period8")%>&nbsp;</td>
    <td><%=rsSelectRecord.getString("period9")%>&nbsp;</td>
   
  </tr>
  <%
   cnt++;   /// increment of counter
  } /// End of while loop
  %>
</table>

               <div class="login-page">
                
                <div class="form">
                    <form class="register-form" action="faculty.jsp">
       <input type="text" placeholder="enter day" name="day">
  
                         <input type="text" placeholder="enter period" name="period">
                         <input type="text" placeholder="enter section" name="section">
                          <input type="text" placeholder="enter year" name="year">
                           
                            <input type="submit" value="display">
                         

                    </form>

                    
                </div>
            </div>     
        </header>  
  <div class="footer">
  <h4> Copyright &copy; 2018 SNIST. All Rights Reserved. </h4>
</div>
    </body>
</html>
