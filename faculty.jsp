<%@ page language="java" import="java.lang.*" %>
<%@ page language="java" import="java.sql.*" %>
<%
       String day = request.getParameter("day");
       session.putValue("day",day);
   
        
        String section = request.getParameter("section");

    session.putValue("section",section);
        int year =Integer.parseInt(request.getParameter("year"));
        
        String p=(String)(request.getParameter("period"));
    
      Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "system");
       String sqlSelectRecord="";
        
 switch(p){
case "period1":
     sqlSelectRecord="SELECT s.facultyname, s.phno"+ " FROM indivualtt s ,faculty f" +" where (s.facultyname =f.facultyname AND s.phno=f.phno) AND (f.section='"+section+"' AND f.year="+year+") AND (s.day='"+day+"' AND s.period1 IS NULL)";
    break;
case "period2":
    sqlSelectRecord="SELECT s.facultyname, s.phno"+ " FROM indivualtt s ,faculty f" +" where (s.facultyname =f.facultyname AND s.phno=f.phno) AND (f.section='"+section+"' AND f.year="+year+") AND (s.day='"+day+"' AND s.period2 IS NULL)";
    break;
case "period3":
     sqlSelectRecord="SELECT s.facultyname, s.phno"+ " FROM indivualtt s ,faculty f" +" where (s.facultyname =f.facultyname AND s.phno=f.phno) AND (f.section='"+section+"' AND f.year="+year+") AND (s.day='"+day+"' AND s.period3 IS NULL)";
    break;
case "period4":
     sqlSelectRecord="SELECT s.facultyname, s.phno"+ " FROM indivualtt s ,faculty f" +" where (s.facultyname =f.facultyname AND s.phno=f.phno) AND (f.section='"+section+"' AND f.year="+year+") AND (s.day='"+day+"' AND s.period4 IS NULL)";
    break;
case "period5":
     sqlSelectRecord="SELECT s.facultyname, s.phno"+ " FROM indivualtt s ,faculty f" +" where (s.facultyname =f.facultyname AND s.phno=f.phno) AND (f.section='"+section+"' AND f.year="+year+") AND (s.day='"+day+"' AND s.period5 IS NULL)";
    break;
case "period6":
     sqlSelectRecord="SELECT s.facultyname, s.phno"+ " FROM indivualtt s ,faculty f" +" where (s.facultyname =f.facultyname AND s.phno=f.phno) AND (f.section='"+section+"' AND f.year="+year+") AND (s.day='"+day+"' AND s.period6 IS NULL)";
    break;
    
case "period7":
     sqlSelectRecord="SELECT s.facultyname, s.phno"+ " FROM indivualtt s ,faculty f" +" where (s.facultyname =f.facultyname AND s.phno=f.phno) AND (f.section='"+section+"' AND f.year="+year+") AND (s.day='"+day+"' AND s.period7 IS NULL)";
    break;
    
case "period8":
     sqlSelectRecord="SELECT s.facultyname, s.phno"+ " FROM indivualtt s ,faculty f" +" where (s.facultyname =f.facultyname AND s.phno=f.phno) AND (f.section='"+section+"' AND f.year="+year+") AND (s.day='"+day+"' AND s.period8 IS NULL)";
    break;
case "period9":
     sqlSelectRecord="SELECT s.facultyname, s.phno"+ " FROM indivualtt s ,faculty f" +" where (s.facultyname =f.facultyname AND s.phno=f.phno) AND (f.section='"+section+"' AND f.year="+year+") AND (s.day='"+day+"' AND s.period9 IS NULL)";
    break;
    
   
    }
             Statement s = con.createStatement();

       
        ResultSet rsSelectRecord = s.executeQuery(sqlSelectRecord);

 
%>
<html>
<head>
<title>SubQuery  in JDBC Query</title>
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
    <th>phonenumber</th>
  
  </tr>
  <%
  int cnt=1;
  while(rsSelectRecord.next())
  {
  %>
  <tr>
    <td><%=rsSelectRecord.getString("facultyname")%>&nbsp;</td>
    <td><%=rsSelectRecord.getString("phno")%>&nbsp;</td>
   
  </tr>
  <%
   cnt++;   /// increment of counter
  } /// End of while loop
  %>
</table>

</body>
</html>

<%
try{
        
          if(rsSelectRecord!=null)
          {
            rsSelectRecord.close();
          }
          
          
          if(con!=null)
          {
           con.close();
          }
        }
        catch(Exception e)
        {
          e.printStackTrace(); 
        }
%>