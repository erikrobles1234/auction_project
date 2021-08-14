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
  <a class="active" href="home_page.jsp">Home</a>
  <a href="#buy">Buy</a>
  <a href="#sell">Sell</a>
</div>

<h2 style="color:black">Products On Auction</h2>

<div class="row">
  <div class="spec_col">
    <div class="spec_card">
      <form action="sell_checkpoint_2.jsp">
        <input id="page_type" name="page_type" type="hidden" value="Hallucinogens">
        <p><b>Hallucinogenic Strength</b></p>
          <select name="hstr" id="hstr" >
            <option value="Cannabis">Very Weak</option>
            <option value="Hallucinogens">Weak</option>
            <option value="Analgesics">Average</option>
            <option value="Cannabis">Bad Trip</option>
          </select>
        <p><b>Natural or Synthetic?</b></p>
          <select name="natsynth" id="natsynth" >
            <option value="Natural">Natural</option>
            <option value="Synthetic">Synthetic</option>
            <option value="Both">Both</option>
          </select>
        <p><b>Type</b></p>
          <input type="radio" id="Psychedelics" name="type" value="Psychedelics" >
          <label for="Psychedelics">Psychedelics</label><br>
          <input type="radio" id="Dissociatives" name="type" value="Dissociatives" >
          <label for="Dissociatives">Dissociatives</label><br>
          <input type="radio" id="Deliriants" name="type" value="Deliriants" >
          <label for="Deliriants">Deliriants</label><br>
          <input type="radio" id="Designer Drugs" name="type" value="Designer Drugs" >
          <label for="Designer Drugs">Designer Drugs</label>
        <br>
        <br>
        <input type="submit" value="Filter">
    </form>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="column">
    <div class="card">
      <h3>Card 1</h3>
      <p>Some text</p>
      <p>Some text</p>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <h3>Card 2</h3>
      <p>Some text</p>
      <p>Some text</p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Card 3</h3>
      <p>Some text</p>
      <p>Some text</p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Card 4</h3>
      <p>Some text</p>
      <p>Some text</p>
    </div>
  </div>
</div>

</body>

</html>