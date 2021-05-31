<%@ page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<body>

<h1>Book STOCK Details</h1>
<table>    
    <tr>
        <td><table>Book Details</table></td>
        <td>
    <table>
    <form action="value.jsp" method="post">
    <tr>
        <td><label for="book_type">BookType:</label></td>
        <td><select id="book_type" name="book_type">
            <option>--Select--</option> 
            <option value="1">For Digital</option>
            <option value="2">For Paper</option>
        </select></td>
        <td><input type="submit" value="Submit" /></form></td>
    </tr>
    </table>
    </td>
    <td><table>
        <tr><form action="value.jsp" method="post">
            <td><label for="auth_chr">Author name starts with:</label></td>
            <td><select id="auth_chr" name="auth_chr">
                <option>--Select--</option> 
                <option value="a">A</option>
                <option value="b">B</option>
                <option value="c">C</option>
                <option value="d">D</option>
                <option value="e">E</option>
                <option value="f">F</option>
                 <option value="g">G</option>
                  <option value="h">H</option>
                  <option value="i">I</option>
                  <option value="r">R</option>
                  <option value="l">L</option>
                  <option value="m">M</option>
		<option value="s">S</option>
            </select></td>
            <td><input type="submit" value="Submit" /></form></td>
            </tr>
    </table></td>
    
</tr> 


<%
try{
    String v1 = String.valueOf(session.getAttribute("val1"));
    String v2 = String.valueOf(session.getAttribute("val2"));
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sql6400624", "root", "root");
    Statement st = con.createStatement();
    ResultSet rst = st.executeQuery("select * from books ORDER BY BookName"); %>
    <tr><td>
    <table border="1">
        <tr>
        <td>BookName</td>
        <td>Author</td>
        <td>BookType</td>
        </tr>
   <% while(rst.next()){   %>
    <tr>
    <td><%=rst.getString("BookName") %></td>
    <td><%=rst.getString("AuthorName") %></td>
    <td><%=rst.getString("BookType") %></td>
    </tr>
<% } %>
    </table></td>
    <%if(v1 != null) {
        ResultSet rss = st.executeQuery("select * from Books where BookType = '" +v1+"' "); %>
        <td><center>
        <table border="1">
            <tr>
                <td><b>BookName</b></td>
            </tr>
        <%while(rss.next()){%>
            <tr>
                <td><%=rss.getString("BookName") %></td>
            </tr> 
    <% } %>
    </table>
    </center></td>
    <td><center>
    <table border="1">
    <%}
    if(v2 != null) {
        
        ResultSet rs = st.executeQuery("select AuthorName from books where AuthorName LIKE '"+v2+"%'"); %>
        
            <tr>
                <td><b>Author</b></td>
            </tr>
        <%while(rs.next()){ %>       
            <tr>
                <td><%=rs.getString("AuthorName") %></td>
            </tr>
        
<%
        }
    }
} catch (Exception e) {
e.printStackTrace();
}
%>
</table></center></td></tr>
</table>

<table><tr>
    <td></td><td><td>  </td><td><a href = "bookstore.jsp">Back</a></td>
</tr></table>
</body>
</html>