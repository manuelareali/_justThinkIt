<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import = "entity.TurnoTab" %>
   
<!-- dichiarazione e instanziazione di un loginBean !-->
<jsp:useBean id="GestisciTurniBoundary" scope="application" class="beanweb.GestisciTurniBoundary"/>

<!-- mappare gli attributi di un oggetto sui campi della form -->
<jsp:setProperty name="GestisciTurniBoundary" property="*"/>

<%
Class.forName("com.mysql.jdbc.Driver");
  if (request.getParameter("modifica") != null){
	if (GestisciTurniBoundary.getInstance().ModificaTurno(request.getParameter("note"),request.getParameter("id")) == true){
		
%>	
		<jsp:forward page="homeCaritas.jsp"/>
<% 
  	}}
%>    
<%
	if(request.getParameter("crea") !=  null){
		GestisciTurniBoundary.getInstance().creaTurno();
%>
	<jsp:forward page="creaTurno.jsp"/>
<%
	}
	
	if(request.getParameter("indietro")!= null){

%>
	<jsp:forward page="homeCaritas.jsp"/>
<%
	}
 	
 	if(request.getParameter("eliminaTurno") != null){
 		if (GestisciTurniBoundary.getInstance().cancellaTurno(request.getParameter("turno")) == true){
 %>
 		<jsp:forward page="homeCaritas.jsp"/>
 <% 			
 		}
 	}
 %>
 	


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GESTISCI TURNI</title>
<link rel="stylesheet" href ="../css/gestisciTurniCaritas.css">
</head>
<body>
	<form action = "gestisciTurniCaritas.jsp" name = "reg" method = "POST">
	<div style= "position:absolute;top: 0%; left:70%">
  <img src="../img/caritas.jpg"  width= "400px" height= "250px">
	</div>
	<h1>GESTISCI TURNI</h1>
<div class = "tab">
			<table class="content-table" id = "giorno">
  <thead>
    <tr>
      <th>ID TURNO</th> 
      <th>GIORNO</th>
      <th>ORARIO</th>
      <th>PARTECIPANTI</th>
      <th>NOTE</th>
    </tr>
  </thead>
  <tbody>


<%
	List<TurnoTab> list = GestisciTurniBoundary.getInstance().loadFormTurni();
	int i = 0;
	while (i < list.size()){
%>
<tr>
<td><% out.println(list.get(i).getId()); %>
<td><% out.println(list.get(i).getGiorno());%> </td>
<td><% out.println(list.get(i).getOraIn());%><% out.println(list.get(i).getOraFine()); %> </td>
<td><% out.println(list.get(i).getPartecipanti()); %> </td>
<td><% out.println(list.get(i).getNote()); %> </td>
</tr>



<%
	i++;
}
%>

  </tbody>
</table>
</div>
			<div class = "crea">
				<button type="submit" name = "crea" value = "crea">CREA TURNO</button>
			</div>
			<div class = "elimina">
				<button type="submit" name = "eliminaTurno" value = "eliminaTurno">ELIMINA TURNO</button>
				<input type="text" id = "turno" name= "turno"   placeholder="Inserisci l'ID del turno da eliminare">
			</div>
			<div class = "modifica">
				<button type="submit" name= "modifica" value = "modifica">MODIFICA NOTE</button>
				<textarea id = "note" name= "note" placeholder ="Bisogna essere puntuali!"></textarea>
				<input type="text" id = "id" name= "id"   placeholder="Inserisci l'ID del turno a cui modificare le note">
			</div>
			<div class = "ind">
				<button type = "submit" name = "indietro" value = "indietro">INDIETRO</button>
			</div>
		</form>
</body>
</html>