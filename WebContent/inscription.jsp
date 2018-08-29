<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page d'inscription</title>
</head>

<body>

<jsp:include page="header.html"></jsp:include>


<H1><strong>Formulaire d'inscription</strong></H1>


<P> Pour mieux vous connaitre, merci d'entrer quelques informations vous concernant

   <form action="inscriptionSave.jsp">
    
        <table><tr><td>Nom:</td><td><input type="text" name="nom"></td></tr>
        <tr><td>Prenom:</td><td><input type="text" name="prenom"></td></tr>
        <tr><td>Email:</td><td><input type="text" name="email"></td></tr>
        <tr><td> Preference de lecture </td><td><select name="preference_de_lecture">
            <option>Romans</option>
            <option>Nouvelles</option>
            <option>Biographies</option>
            <option>Educatif</option>
            <option>Sciences</option>
        </select> <br/></td></tr>
        <tr><td><input type="submit" value="Je m'inscris"></td></tr>
        </table>
    
    </form>
    
    <jsp:include page="footer.html"></jsp:include>
            
</body>
</html>