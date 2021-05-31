<%@ page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String val = request.getParameter("book_type"); 
    String val2 = request.getParameter("auth_chr");  
    if(val != null) {
        session.setAttribute("val1",val); 
        response.sendRedirect("report.jsp");
    }
    if(val2 != null) {
        session.setAttribute("val2",val2); 
        response.sendRedirect("report.jsp");
    }
%>