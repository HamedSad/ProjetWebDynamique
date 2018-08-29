<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
	try {
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String adresse = request.getParameter("adresse_postale");

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/bibliotheque3";
		String user = "root";
		String pwd = "System84";

		Connection con = DriverManager.getConnection(url, user, pwd);

		PreparedStatement ps = con.prepareStatement("insert into contact values(?,?,?,?)");
		ps.setString(1, nom);
		ps.setString(2, prenom);
		ps.setString(3, email);
		ps.setString(4, adresse);

		int s = ps.executeUpdate();
		if (s > 0) {
%>
<jsp:forward page="contact.jsp"></jsp:forward>
<%
	} else {
			out.print("Erreur sur contact");
		}
	} catch (Exception e) {
		e.printStackTrace();
		out.print("Erreur sur contact");
	}
%>