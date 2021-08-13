<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>param sender</title>
</head>
<body>
	<%
	try {

		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		//Create a SQL statement
		Statement stmt = con.createStatement();

		//Get parameters from the HTML form at the HelloWorld.jsp
		String user_id = String.valueOf(session.getAttribute("userID"));
		String dname = request.getParameter("dname");
		String app = request.getParameter("app");
		String country = request.getParameter("country");
		String reserve = request.getParameter("reserve");
		String description = request.getParameter("description");

		//Make an insert statement for the Sells table:
		String insert = "INSERT INTO users (user_id, dname, app, country, reserve, description)"
				+ "VALUES (?, ?, ?, ?, ?, ?)";
		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		PreparedStatement ps = con.prepareStatement(insert);

		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
		ps.setString(1, user_id);
		ps.setString(2, dname);
		ps.setString(3, app);
		ps.setString(4, country);
		ps.setString(5, reserve);
		ps.setString(6, description);
		//Run the query against the DB
		ps.executeUpdate();

		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();

		out.print("New product successfully added! :D");
		
	} catch (Exception ex) {
		out.print(ex);
		out.print("New product could not be added, shits fucked");
	}
%>

			<br>
			<form method="get" action="home_page.jsp">
				<input type="submit" value="Return to home">
			</form>
			<br>
</body>
</html>
