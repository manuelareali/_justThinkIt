<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import = "entity.EventTab" %> 
<%@ page import="beanweb.GestisciEventiCaritasBoundary"%>

<%Class.forName("com.mysql.jdbc.Driver");%>
<%
	if (request.getParameter("INDIETRO") != null){	
%>
	<jsp:forward page="homeCaritas.jsp"/>
<%
	}

	if(request.getParameter("contatta") != null){
		
%>
	<jsp:forward page="contattaCaritasMap.jsp"/>
<%
	}
	if(request.getParameter("cancella") != null){
		if(GestisciEventiCaritasBoundary.getInstance().cancellaEvento(request.getParameter("Id")) == true){
		 	
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
<title>GESTISCI EVENTI</title>
<link rel="stylesheet" href ="../css/gestisciEventiCaritas.css">
<link rel="icon" sizes="64x64" href="../img/favicon.png">
</head>
<body>
<form action = "gestisciEventiCaritas.jsp" name ="my" method = "POST">
<div style= "position:absolute;top: 0%; left:70%">
	<img src="../img/caritas.jpg"  width= "400px" height= "250px">
	</div>
	<h1>GESTIONE DEGLI EVENTI</h1>
	<div class = "tab">
			<table class="content-table" id = "giorno">
  <thead>
    <tr> 
      <th>ID EVENTO</th>
      <th>EVENTO</th>
      <th>NEGOZIO</th>
      <th>NOTE EVENTO</th>
      <th>IMPORTO</th>
      <th>PARTECIPANTI</th>
      <th>STATO</th>
    </tr>
  </thead>
  <tbody>


<%
	List<EventTab> list = GestisciEventiCaritasBoundary.getInstance().loadFormEvento();
	int i = 0;
	while (i < list.size()){
%>
<tr>
<td><% out.println(list.get(i).getId()); %>
<td><% out.println(list.get(i).getNomeEvento());%> </td>
<td><% out.println(list.get(i).getNomeNegozio()); %>
<td><% out.println(list.get(i).getNoteEvento()); %> </td>
<td><% out.println(list.get(i).getImportoRaggiunto());%>/<%out.println(list.get(i).getPrezzoEvento()); %> </td>
<td><% out.println(list.get(i).getNumPartecipanti()); %> </td>
<td><% out.println(list.get(i).getStatoEvento()); %> </td>
</tr>



<%
	i++;
}
%>

  </tbody>
</table>
</div>
	
	
	<div class = "contatta">
		<button type="submit" name= "contatta" value="contatta">CONTATTA NEGOZIO</button>
	</div>
	<div class = "cancella">
		<button type = "submit" name = "cancella" value = "cancella">ELIMINA EVENTO</button>
		<input type="text" id = "Id" name= "Id"  placeholder="Inserisci l'ID degli eventi da eliminare">
	</div>
	<div class = "ind">
		<button type = "submit" name = "INDIETRO" value = "INDIETRO ">INDIETRO</button>
	</div>
</form>
</body>
</html>