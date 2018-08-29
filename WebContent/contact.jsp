<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact</title>
</head>
<body>

<jsp:include page="header.html"></jsp:include>


	<h2>Pour obtenir les nouveautés via notre newsletter, renseigner les champs ci-dessous</h2>

	<form action="contactSave.jsp">

		<table>
			<tr>
				<td>Nom</td>
				<td><input type="text" name="nom"></td>
			</tr>
			<tr>
				<td>Prenom</td>
				<td><input type="text" name="prenom"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Adresse Postale</td>
				<td><textarea name="adresse_postale"></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" value="Envoyer"></td>
			</tr>
		</table>
	</form>


	<jsp:include page="footer.html"></jsp:include>

</body>
</html>
