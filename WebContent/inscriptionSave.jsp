<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
	try {
		String a = request.getParameter("numero_abonne");
		String n = request.getParameter("nom");
		String p = request.getParameter("prenom");
		String e = request.getParameter("email");
		String l = request.getParameter("preference_de_lecture");

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/bibliotheque3";
		String user = "root";
		String pwd = "System84";

		Connection con = DriverManager.getConnection(url, user, pwd);
		PreparedStatement ps = con.prepareStatement("insert into inscription values(?,?,?,?,?)");
		
		ps.setString(1,a);
		ps.setString(2, n);
		ps.setString(3, p);
		ps.setString(4, e);
		ps.setString(5, l);

		int i = ps.executeUpdate();

		if (i > 0) {
%>
<jsp:forward page="inscription.jsp"></jsp:forward>
<%
	} else {
			out.print("Erreur sur inscription");
		}

	} catch (Exception e) {
		e.printStackTrace();
		out.print("Erreur sur inscription");
	}
%>
