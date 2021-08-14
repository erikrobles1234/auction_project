<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1 {
  color: #8B0000;
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
</style>
</head>
<body>
    <div class="heading">
       <h1>THE SILK ROAD</h1>
   	   <p style="text-align: right">Login Username: ${user.username}</p>
   	   <p style="text-align: right">Login UserID: ${user.id}</p>
    </div>
    
	<div class="topnav">
	  <a class="active" href="home_page.jsp">Home</a>
	  <a href="buy.jsp">Buy</a>
	  <a href="sell.jsp">Sell</a>
	</div>
	
	<div class="itembox">
	<h2>LSD</h2>
	<p>Price: $29.98</p>
	<p>Strength: 8</p>
	<p>Country of Origin: Canada</p>
	<p>Natural/Synthetic: Synthetic</p>
	</div>
</body>
</html>