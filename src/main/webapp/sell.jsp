<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script src="//ajax.googleapis.com/ajax/libs/jquery/[jquery version here]/jquery.min.js"
language="javascript" type="text/javascript"></script>

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
      <h3>Create Product</h3>
      <p>Select the category of product you wish to put on auction</p>
      <p style="padding-bottom:10px"> 
    </div>
  </div>
</div>

<!-- change action_page.php to the .jsp page you want to send inputs to -->
<form action="sell_checkpoint.jsp">
  <p><b>Product Category</b></p>
    <select id="cat" name="cat" required>
      <option value="Cannabis">Cannabis</option>
      <option value="Analgesics">Analgesics</option>
      <option value="Hallucinogens">Hallucinogens</option>
    </select>
  <p><b>Name of Product</b></p>
    <input type="text" id="dname" name="dname" required><br>
  <p><b>Application</b></p>
    <input type="radio" id="smoke" name="app" value="Smokable" required>
    <label for="smoke">Smokable</label><br>
    <input type="radio" id="inhale" name="app" value="Inhalable" required>
    <label for="inhale">Inhalable</label><br>
    <input type="radio" id="edible" name="app" value="Edible" required>
    <label for="edible">Edible</label><br>
    <input type="radio" id="inject" name="app" value="Injectable" required>
    <label for="inject">Injectable</label>
  <p><b>Country of Origin</b></p>
    <input type="radio" id="us" name="country" value="US" required>
    <label for="us">United States</label><br>
    <input type="radio" id="canada" name="country" value="Canada" required>
    <label for="canada">Canada</label><br>
    <input type="radio" id="mexico" name="country" value="Mexico" required>
    <label for="mexico">Mexico</label>
  <p><b>Reserve Price</b> (USD)</p>
    <input type="number" name="reserve" min="1.00" max="10000.00" step="0.01" required/>
  <p><b>Description</b></p>
    <textarea rows = "5" cols = "60" name = "description" required>
    </textarea>
  <br>
  <br>
  <input type="submit" value="Submit">
</form>

</body>

</html>