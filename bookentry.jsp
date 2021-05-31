<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Entery</title>
</head>
<body>
<h1>Book Entry</h1>
<form action="booklib.jsp" method="post">
			<table style="with: 50%">
				<tr>
					<td>BookName:</td>
					<td><input type="text" name="book_name" /></td>
				</tr>
				<tr>
					<td>Author:</td>
					<td><input type="text" name="author" /></td>
				</tr>
                <tr>
                    <td><label for="book_type">BookType:</label></td>
                    <td><select id="book_type" name="book_type">
                        <option value="1">For Digital</option>
                        <option value="2">For Paper</option>
                    </select></td>
                </tr>
			</table>
			<input type="submit" value="Submit" /></form>
		</table>
		<table><tr>
			<td></td><td><td>  </td><td><a href = "bookstore.jsp">Back</a></td>
		</tr></table>
</body>
</html>