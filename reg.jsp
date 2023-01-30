
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.util.*"%>

<%

    String name = request.getParameter("fn");
    session.setAttribute("name",name);  
    String phone =request.getParameter("phno");
      session.setAttribute("phone",phone);  

    String branch = request.getParameter("br");
session.setAttribute("branch",branch);  
    String s1 = request.getParameter("s1");
session.setAttribute("s1",s1);  
    String s2 = request.getParameter("s2");session.setAttribute("s2",s2); 
     String s3 = request.getParameter("s3");session.setAttribute("s3",s3); 

   

    

    String password = request.getParameter("p"); 

    try {

        Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "system");

        PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?,?,?,?)");

        ps.setString(1, name);

        ps.setString(2, phone);

        ps.setString(3, branch);
        ps.setString(4,s1);

        ps.setString(5,s2);

        ps.setString(6,s3);

        ps.setString(7,password);

        ps.executeUpdate();

        response.sendRedirect("timetable.jsp");

    } catch (Exception e) {

        out.println(e);

    } 

%>