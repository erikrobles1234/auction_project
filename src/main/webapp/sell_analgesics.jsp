<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<div class="heading">
       <h1>THE SILK ROAD</h1>
   	   <p style="text-align: right">Login Username: ${user.username}</p>
</div>

<div class="topnav">
  <a href="home_page.jsp">Home</a>
  <a href="#buy">Buy</a>
  <a class="active" href="#sell">Sell</a>
</div>

<h2 style="color:black">Auction Off Product</h2>

<div class="row">
  <div class="column">
    <div class="card">
      <h3>Create Product (Analgesics)</h3>
      <p>Finalize the product you wish to put on auction</p>
      <p style="padding-bottom:10px"> 
    </div>
  </div>
</div>

<!-- change action_page.php to the .jsp page you want to send inputs to -->
<form action="sell_checkpoint_2.jsp">
  <input id="page_type" name="page_type" type="hidden" value="Analgesics">
  <p><b>Strength</b></p>
    <select name="str" id="str" required>
      <option value="I still feel pain">I still feel pain (weakest)</option>
      <option value="A little numb">A little numb</option>
      <option value="I can't feel anything">I can't feel anything</option>
      <option value="Possibly lethal">Possibly Lethal (strongest)</option>
    </select>
  <p><b>Pharmacuetical Grade?</b></p>
    <select name="pharma" id="pharma" required>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select>
  <p><b>Type</b></p>
    <input type="radio" id="Acetaminophens" name="class" value="Acetaminophens" required>
    <label for="Acetaminophens">Acetaminophens</label><br>
    <input type="radio" id="Opioids" name="class" value="Opioids" required>
    <label for="Opioids">Opioids</label><br>
    <input type="radio" id="NSAIDs" name="class" value="NSAIDs" required>
    <label for="NSAIDs">NSAIDs</label><br>
  <br>
  <br>
  <input type="submit" value="Submit">
</form>

</body>

</html>