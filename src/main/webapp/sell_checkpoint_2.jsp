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
		
		//Make query for last drug_id made by user_id
		String user_id = String.valueOf(session.getAttribute("userID"));
		String query = "SELECT drug_id FROM ebay.narcotics WHERE user_id = ? ORDER BY drug_id DESC LIMIT 1";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, user_id);
		ResultSet result = ps.executeQuery();
        String drug_id = String.valueOf(result.getInt("drug_id"));
		
		//Check what the previous page drug type was
		String previous_page_type = request.getParameter("page_type");
		
		if (previous_page_type == "Cannabis") {
			//Get parameters from the HTML form at the HelloWorld.jsp
			String quality = request.getParameter("quality");
			String strain = request.getParameter("strain");
			String thc = request.getParameter("thc");
			
			//Make an insert statement for the Sells table:
			String insert = "INSERT INTO cannabis (drug_id, quality, strain, thc) "
					+ "VALUES(?, ?, ?, ?)";
			//Create a Prepared SQL statement allowing you to introduce the parameters of the query
			PreparedStatement ps2 = con.prepareStatement(insert);

			//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
			ps2.setString(1, drug_id);
			ps2.setString(2, quality);
			ps2.setString(3, strain);
			ps2.setString(4, thc);
			
			//Run the query against the DB
			ps2.executeUpdate();
			out.print("It fucking worked! ;D");
		}
		else if (previous_page_type == "Analgesics") {
			String strength = request.getParameter("str");
			String pharma = request.getParameter("pharma");
			String class_type = request.getParameter("class");
			
			//Make an insert statement for the Sells table:
			String insert = "INSERT INTO cannabis (drug_id, strength, class, pharma_grade) "
					+ "VALUES(?, ?, ?, ?)";
			//Create a Prepared SQL statement allowing you to introduce the parameters of the query
			PreparedStatement ps2 = con.prepareStatement(insert);

			//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
			ps2.setString(1, drug_id);
			ps2.setString(2, strength);
			ps2.setString(3, class_type);
			ps2.setString(4, pharma);
			
			//Run the query against the DB
			ps2.executeUpdate();
			out.print("It fucking worked! ;D");
		}
		else {
			String type = request.getParameter("type");
			String natsynth = request.getParameter("natsynth");
			String hallstrength = request.getParameter("hstr");
			
			//Make an insert statement for the Sells table:
			String insert = "INSERT INTO cannabis (drug_id, type, natsynth, hallstrength) "
					+ "VALUES(?, ?, ?, ?)";
			//Create a Prepared SQL statement allowing you to introduce the parameters of the query
			PreparedStatement ps2 = con.prepareStatement(insert);

			//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
			ps2.setString(1, drug_id);
			ps2.setString(2, type);
			ps2.setString(3, natsynth);
			ps2.setString(4, hallstrength);
			
			//Run the query against the DB
			ps2.executeUpdate();
			out.print("It fucking worked! ;D");
		}
		
		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();
		
		
	} catch (Exception ex) {
		out.print(ex);
		out.print("New product could not be added, shits fucked.");
	}
%>

			<br>
			<form method="get" action="home_page.jsp">
				<input type="submit" value="Return to home">
			</form>
			<br>
</body>
</html>
