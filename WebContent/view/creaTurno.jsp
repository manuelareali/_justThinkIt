<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beanweb.CreaTurnoBoundary"%>
<%
Class.forName("com.mysql.jdbc.Driver");
	if(request.getParameter("creaTurno") != null){
		if(CreaTurnoBoundary.getInstance().creaTurnoPressed(request.getParameter("nome_giorno"),request.getParameter("oraInizio"),request.getParameter("oraFine"),request.getParameter("numMaxParte"),request.getParameter("note")) == true){
%>
	<jsp:forward page="gestisciTurniCaritas.jsp"/>
<%
			
		}
	}
	
	if(request.getParameter("indietro") != null){
%>
	<jsp:forward page="gestisciTurniCaritas.jsp"/>
<%
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREA TURNO</title>
<link rel="stylesheet" href ="../css/creaTurno.css">
<link rel="icon" sizes="64x64" href="../img/favicon.png">
</head>
<body>
	<form action = "creaTurno.jsp" name = "reg" method = "POST">
	 <div class = "header">
        <h2>JUST THINK IT</h2>
    </div>
	<h1>CREA TURNO LAVORATIVO</h1>
	<div class = "pt1">
	<div class = "giorni">
			<h3>Che giorno?</h3>
			<select id = "nome_giorno" name="nome_giorno" >
			<option  value="Lunedì">Lunedì</option>
			<option  value= "Martedì" >Martedì</option>
			<option  value="Mercoledì" >Mercoledì</option>
			<option  value= "Giovedì">Giovedì</option>
			<option  value="Venerdì" ">Venerdì</option>
			<option  value= "Sabato" >Sabato</option>
			<option  value="Domenica" >Domenica</option>
			</select>
	</div>
	
	<div class = "orarioInizio">
	 <h3>Orario di inizio turno</h3>
	 <input type="text" id="oraInizio" name= "oraInizio" placeholder="es 12:00"/>
	</div>
	</div>
	<div class = "pt2">
	 <h3>Orario fine turno</h3>
	 <input type="text" id= "oraFine" name= "oraFine" placeholder="es 12:00"/>
	 <h3>Numero massimo di partecipanti</h3>
	 <input type="text" id= "numMaxParte" name= "numMaxParte" placeholder="es 340"/>
	</div>
	<div class = "note">
	 <h3>Note</h3>
	 <textarea id = "note" name= "note" placeholder = "Bisogna essere puntuali"></textarea>
	</div>
	<div class = "crea">
	 <button type = "submit" name = "creaTurno" value = "creaTurno">Crea Turno</button>
	 </div>
	 <div class = "ind">
	<button type = "submit" name = "indietro" value = "indietro">INDIETRO</button>
	</div>
	 </form>
</body>
</html>