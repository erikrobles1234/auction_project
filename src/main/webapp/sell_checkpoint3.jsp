<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>

<head>
<style>
h1 {
  color: #8B0000;
  font-family: Impact, fantasy;
  font-size: 300%;
  margin: 5px;
  padding: 10px;
}
.heading {
  display: flex;
  justify-content: space-between;
}
.itembox {
  background-color: white;
  color: black;
  border: 2px solid black;
  margin: 20px;
  padding: 20px;
}
.topnav {
  background-color: #333;
  overflow: hidden;
}
/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  width: 100px;
}
/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
/* Add a color to the active/current link */
.topnav a.active {
  background-color: #8B0000;
  color: white;
}
* {
  box-sizing: border-box;
}
body {
  font-family: Arial, Helvetica, sans-serif;
}
.card {
  /* Add shadows to create the "card" effect */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  background-color: #f1f1f1;
}
/* Add some padding inside the card container */
.container {
  padding: 2px 16px;
}
</style>
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
		result.next();
		
		//user_id already made
        String drug_id = String.valueOf(result.getInt("drug_id"));
		String reserve = request.getParameter("reserve");
		String current_bid = "1";
		String closing_date = request.getParameter("daytime");
		
        //System.out.println("Before Formatting: " + closing_date);  
        //DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");  
        //String formatDateTime = closing_date.format(format);  
		
		//Make an insert statement for the Sells table:
		String insert = "INSERT INTO auction (drug_id, seller_id, reserve, current_bid, closing_date) "
				+ "VALUES(?, ?, ?, ?, ?)";
		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		PreparedStatement ps2 = con.prepareStatement(insert);

		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
		ps2.setString(1, drug_id);
		ps2.setString(2, user_id);
		ps2.setString(3, reserve);
		ps2.setString(4, current_bid);
		ps2.setString(5, closing_date);
		
		//Run the query against the DB
		ps2.executeUpdate();
		out.print("It fucking worked! ;D");
		
		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();
		
		
	} catch (Exception ex) {
		out.print(ex);
		out.print("New product could not be added, shits fucked.");
	}
%>


<div class="heading">
       <h1>THE SILK ROAD</h1>
   	   <p style="text-align: right">Login Username: ${user.username}</p>
</div>

<div class="topnav">
  <a href="home_page.jsp">Home</a>
  <a href="#buy">Buy</a>
  <a class="active" href="sell.jsp">Sell</a>
</div>

<h2 style="color:black">Auction Off Product</h2>

<div class="row">
  <div class="column">
    <div class="card">
      <h3>Success!</h3>
      <p>Product has been successfully registered and put up for auction.</p>
      <p style="padding-bottom:10px"> 
    </div>
  </div>
</div>

<form action="home_page.jsp">
  <input type="submit" value="Return to home page">
</form>

</body>
</html>
