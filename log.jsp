<%-- 
    Document   : log.jsp
    Created on : 18 Oct, 2018, 7:11:22 PM
    Author     : chand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page language="java" import="java.sql.*"%>

<%

    String name = request.getParameter("fn");

    String phone =request.getParameter("ph");
      session.setAttribute("phone",phone);  

    

   
    String password = request.getParameter("p"); 
   

    try {

        Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "system");
        Statement st=con.createStatement();
       
        ResultSet rs=st.executeQuery("select * from register where facultyname='"+name+"'"); 
        if(rs.next()) {
            if(rs.getString(7).equals(password))
        { 
              response.sendRedirect("display.jsp");
        } 
else
        { 
            out.println("Invalid password try again and phno");
              response.sendRedirect("login.jsp");
        } 
}  
    } catch (Exception e) {

        out.println(e);

    } 

%>