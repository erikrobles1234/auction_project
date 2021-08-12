<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
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
		<form method="get" action="login_check2.jsp">
			<table>
				<tr>    
					<td>Username</td><td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password</td><td><input type="text" name="password"></td>
				</tr>
			</table>
			<input type="submit" value="Login">
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