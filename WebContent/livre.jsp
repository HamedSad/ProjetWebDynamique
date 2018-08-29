<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page d'inscription</title>
</head>

<body>

<jsp:include page="header.html"></jsp:include>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	String url = "jdbc:mysql://localhost:3306/bibliotheque3";
	String user = "root";
	String pwd = "System84";

	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>

<h2 align="center"><font><strong>Nos ouvrages</strong></font></h2>

<table align="center" cellpadding="4" cellspacing="4">
	
	<tr>
		<td><b>Nom</b></td>
		<td><b>Prenom</b></td>
		<td><b>Titre</b></td>	
	</tr>
	<%
		try {
			connection = DriverManager.getConnection(url, user, pwd);
			statement = connection.createStatement();
			String sql = "SELECT * FROM livre";

			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
	%>
	<tr>
		<td><%=resultSet.getString("nom_auteur")%></td>
		<td><%=resultSet.getString("prenom_auteur")%></td>
	
		<td><%=resultSet.getString("titre")%></td>
	</tr>
	<%	}

		} catch (Exception e) {
			e.printStackTrace();
		}
	
	
	%>
	

<table/>

<jsp:include page="footer.html"></jsp:include>