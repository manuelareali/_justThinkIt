<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beanweb.CreaNecessitaBoundary"%>

<%
Class.forName("com.mysql.jdbc.Driver");
	if(request.getParameter("CREA ANNUNCIO")!=null){
		if (CreaNecessitaBoundary.getInstance().creaAnnuncioPressed(request.getParameter("tipologia"),request.getParameter("urgenza"), request.getParameter("richiesta")) == true){
%>
	<jsp:forward page="bachecaNecessitaCaritas.jsp"/>
<%			
	}
	}
	
	if(request.getParameter("indietro") != null){
%>
	<jsp:forward page="bachecaNecessitaCaritas.jsp"/>
<%
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREA NECESSITA'</title>
<link rel="stylesheet" href ="../css/creaNecessita.css">
<link rel="icon" sizes="64x64" href="../img/favicon.png">
</head>
<body>
	<form action = "creaNecessitaCaritas.jsp" name = "reg" method = "POST">
	 <div class = "header">
        <h2>JUST THINK IT</h2>
    </div>
	<h1>CREA NECESSITA'</h1>
	<div class = "pt1">
	<textarea id = "richiesta" name= "richiesta" placeholder="Scrivi qui le esigenze."/></textarea>
	</div>
	<div class = "tipo">
		<select id = "tipologia" name="tipologia" >
		<option id = "Vestiti" value="Vestiti" selected="selected">Vestiti</option>
		<option id = "Cibo" value= "Cibo" selected= "selected">Cibo</option>
	</select>
	</div>
	<div class = "grado">
		<select id = "urgenza" name="urgenza" >
		<option id = "Alta" value="Alta" selected="selected">Alta</option>
		<option id = "Normale" value="Normale" selected="selected">Normale</option>
		<option id = "Bassa" value="Bassa" selected="selected">Bassa</option>
	</select>
	</div>
	<div class = "invia">
		<button type="submit" name = "CREA ANNUNCIO" value = "CREA ANNUNCIO">CREA ANNUNCIO</button>
	</div>
	<div class = "ind">
		<button type = "submit" name = "indietro" value = "indietro">INDIETRO</button>
	</div>
	</form>
</body>
</html>