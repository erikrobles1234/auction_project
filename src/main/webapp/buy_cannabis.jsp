<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
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
/* Float four columns side by side */
.column {
  float: left;
  width: 300px;
  padding: 0 10px;
}
.spec_col {
  float: center;
  width: 100%;
  padding: 0 10px;
}
/* Remove extra left and right margins, due to padding in columns */
.row {margin: 0 0px;}
/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
  padding: 40px;
  text-align: center;
  background-color: #f1f1f1;
}
.spec_card {

  padding: 40px;

  background-color: #8B0000;
}
/* Responsive columns - one column layout (vertical) on small screens */
</style>
</head>

<body>

<h1>THE SILK ROAD</h1>

<div class="topnav">
  <a href="home_page.jsp">Home</a>
  <a class="active" href="buy.jsp">Buy</a>
  <a href="sell.jsp">Sell</a>
</div>

<h2 style="color:black">Products On Auction</h2>

<div class="row">
  <div class="spec_col">
    <div class="spec_card">
      <form action="buy_cannabis.jsp">
        <input id="page_type" name="page_type" type="hidden" value="Cannabis">
        <p><b>Quality</b></p>
          <select name="quality" id="quality" required>
            <option value="Poor">Poor</option>
            <option value="Ok">Ok</option>
            <option value="Good">Good</option>
            <option value="Premium">Premium</option>
          </select>
        <p><b>Name of Strain</b></p>
          <input type="text" id="strain" name="strain" required><br>
        <p><b>THC %</b></p>
          <input name="thc" type="number" min="0.00" max="100.00" step="0.01" required/>
        <br>
        <br>
        <input type="submit" value="Filter">
    </form>
    </div>
  </div>
</div>
<br>
<br>

<%
     List<String> list = new ArrayList<String>();

     try {

             //Get the database connection
             ApplicationDB db = new ApplicationDB();
             Connection con = db.getConnection();   

             //Create a SQL statement
             Statement stmt = con.createStatement();
             //Get the combobox from the index.jsp
             String entity = request.getParameter("price");
             //Make a SELECT query from the sells table with the price range specified by the 'price' parameter at the index.jsp
             String str = "SELECT * FROM ebay.auction JOIN ebay.narcotics ON auction.drug_id = narcotics.drug_id JOIN ebay.cannabis ON narcotics.drug_id = cannabis.drug_id";
             //Run the query against the database.
             ResultSet result = stmt.executeQuery(str);

             //Make an HTML table to show the results in:
             out.print("<table>");

             //make a row
             out.print("<tr>");
             //make a column
             out.print("<td>");
             //print out column header
             out.print("Drug Name");
             out.print("</td>");
             //make a column
             out.print("<td>");
             out.print("Application");
             out.print("</td>");
             //make a column
             out.print("<td>");
             out.print("Country");
             out.print("</td>");
             //make a column
             out.print("<td>");
             out.print("Description");
             out.print("</td>");
             //make a column
             out.print("<td>");
             out.print("Quality");
             out.print("</td>");
             //make a column
             out.print("<td>");
             out.print("Strain");
             out.print("</td>");
             //make a column
             out.print("<td>");
             out.print("THC");
             out.print("</td>");
             //make a column
             out.print("<td>");
             out.print("Current Bid");
             out.print("</td>");
             //make a column
             out.print("<td>");
             out.print("Close Date");
             out.print("</td>");
             out.print("</tr>");


             //parse out the results
             while (result.next()) {
                     //make a row
                     out.print("<tr>");
                     //make a column
                     out.print("<td>");
                     //Print out current bar name:
                     out.print(result.getString("dname"));
                     out.print("</td>");
                     out.print("<td>");
                     //Print out current beer name:
                     out.print(result.getString("application"));
                     out.print("</td>");
                     out.print("<td>");
                     //Print out current price
                     out.print(result.getString("country"));
                     out.print("</td>");
                     out.print("</tr>");
                     //Print out current price
                     out.print(result.getString("description"));
                     out.print("</td>");
                     out.print("</tr>");
                     //Print out current price
                     out.print(result.getString("quality"));
                     out.print("</td>");
                     out.print("</tr>");
                     //Print out current price
                     out.print(result.getString("strain"));
                     out.print("</td>");
                     out.print("</tr>");
                     //Print out current price
                     out.print(result.getString("thc"));
                     out.print("</td>");
                     out.print("</tr>");
                     //Print out current price
                     out.print(result.getString("current_bid"));
                     out.print("</td>");
                     out.print("</tr>");
                     //Print out current price
                     out.print(result.getString("closing_date"));
                     out.print("</td>");
                     out.print("</tr>");


             }
             out.print("</table>");

             //close the connection.
             con.close();

     } catch (Exception e) {
     }
%>


</body>

</html>