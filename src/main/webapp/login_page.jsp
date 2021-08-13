<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript"
    src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
		<style>
			h1 {text-align: center; 
				color: #8B0000;
				font-family: Impact, fantasy;}
			p {text-align: center;}
			div {text-align: center;}
			body{margin:0 auto;}
		</style>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>LOGIN PAGE</title>
	</head>
	
	<body>
		<p style="text-align: center; font-size:50px; font-family: Impact, fantasy;">WELCOME TO</p>
		<h1 style="font-size:100px;">THE SILK ROAD</h1>
		LOGIN PAGE <!-- the usual HTML way -->
	
	<br>
		<form action="login_page" method="post">
            <label for="username">Username:</label>
            <input name="username" size="30" />
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            <br><br>           
            <button type="submit">Login</button>
        </form>
	<br>
	
	
		To create a new account, fill the form and click the button below!
		<br>
			<form method="get" action="create_account.jsp">
			<table>
				<tr>    
					<td>New Username</td><td><input type="text" name="new_username"></td>
				</tr>
				<tr>
					<td>New Password</td><td><input type="text" name="new_password"></td>
				</tr>
			</table>
			<input type="submit" value="Create New Account">
		</form>
		<br>

</body>
</html>