<%@ page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String book_name = request.getParameter("book_name");    
    String author = request.getParameter("author"); 
    String book_type = request.getParameter("book_type");
    int b_type = Integer.parseInt(book_type);
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sql6400624", "root", "root");
        Statement st = con.createStatement();
        //ResultSet rs;
        int i = st.executeUpdate("insert into books(BookName,AuthorName,BookType) values ('" + book_name + "','" + author + "','" + b_type + "')");
        if (i > 0) {
            response.sendRedirect("bookentry.jsp");
        } else {
            response.sendRedirect("bookentry.jsp");
        }
    }
    catch(SQLException e) {
        out.println("SQLException caught: " +e.getMessage());
    }
%>