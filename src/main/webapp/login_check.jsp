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
				//Make an HTML table to show the results in:
				out.print("<table>");
				//make a row
				out.print("<tr>");
				//make a column
				out.print("<td>");
				//print out column header
				out.print("Your role:");
				out.print("</td>");
				out.print("</tr>");

				//make a row
				out.print("<tr>");
				//make a column
				out.print("<td>");
				//Print out current bar name:
				out.print(result.getString("role"));
				out.print("</td>");
				out.print("</tr>");
				
				//parse out the results
				while (result.next()) {
					//make a row
					out.print("<tr>");
					//make a column
					out.print("<td>");
					//Print out current bar name:
					out.print(result.getString("role"));
					out.print("</td>");
					out.print("</tr>");
				}
				
				out.print("</table>");
		     }

			//close the connection.
			con.close();

		} catch (Exception e) {
			out.print("ERROR");
		}
	%>
			
			<br>
			<form method="get" action="login_page.jsp">
				<input type="submit" value="Log Out">
			</form>
			<br>

</body>
</html>