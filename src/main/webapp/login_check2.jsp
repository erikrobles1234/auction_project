<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<String> list = new ArrayList<String>();

		label: try {
			
			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();

			//Create a SQL statement
			Statement stmt = con.createStatement();

			//Get parameters from the HTML form at the HelloWorld.jsp
			String password = request.getParameter("password");

			//Make an insert statement for the Sells table:
			String username = request.getParameter("username");
			String str = "SELECT role FROM users WHERE username = '" + username + "'" + " AND pass_word = '" + password + "'";
			//Create a Prepared SQL statement allowing you to introduce the parameters of the query
			ResultSet result = stmt.executeQuery(str);
			
			if (result.next() == false) {
				con.close();
				out.print("Incorrect username and/or password");
		        break label;
		      } else {
	%>
	<jsp:forward page="home.jsp" />
	<%
		}
			//close the connection.
			con.close();

		} catch (Exception e) {
			out.print("ERROR");
		}
	%>
			
			<br>
			<p>An error has occurred, please return to the login screen...</p>
			<form method="get" action="login_page.jsp">
				<input type="submit" value="Log Out">
			</form>
			<br>

</body>
</html>