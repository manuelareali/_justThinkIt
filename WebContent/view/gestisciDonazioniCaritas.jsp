<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import = "entity.DonazioneTab" %> 

<jsp:useBean id="GestisciDonazioniBoundary" scope="application" class="beanweb.GestisciDonazioniBoundary"/>
<jsp:setProperty name="GestisciDonazioniBoundary" property="*"/>
 
 <%Class.forName("com.mysql.jdbc.Driver");%>
 <%
 	if(request.getParameter("INDIETRO") != null){
 %>
		 <jsp:forward page="homeCaritas.jsp"/>
 <%
 	}
 	
 	if(request.getParameter("contatta") != null){
%>
		<jsp:forward page="contattaCaritasMap.jsp"/>
<%
 	}
%>
	
<% 	
 	if (request.getParameter("eliminaDonazione") != null){
 		if(GestisciDonazioniBoundary.getInstance().cancellaDonazione(request.getParameter("cod_dona")) == true){
 %>
 		<jsp:forward page="homeCaritas.jsp"/>
 <%
 		}
 	}
 %>
<%
	if (request.getParameter("RITIRA DONAZIONE") != null){
		if(GestisciDonazioniBoundary.getInstance().ritiraDonazione(request.getParameter("ritira")) == true ){
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
<title>GESTISCI DONAZIONI</title>
<link rel="stylesheet" href ="../css/gestisciDonazione.css">
<link rel="icon" sizes="64x64" href="../img/favicon.png">
</head>
<body>
<form action = "gestisciDonazioniCaritas.jsp" name ="my" method = "POST">
	<h1>DONAZIONI ALLA CARITAS</h1>
	<div style= "position:absolute;top: 0%; left:70%">
	<img src="../img/caritas.jpg"  width= "400px" height= "250px">
	</div>
	
<div class ="tab">
 <table class="content-table" id = "giorno">
  <thead>
    <tr> 
      <th>ID DONAZIONE </th>
      <th>TIPO</th>
      <th>DESCRIZIONE</th>
      <th>INDIRIZZO</th>
      <th>STATO</th>
    </tr>
  </thead>
  <tbody>


<%
	List<DonazioneTab> list = GestisciDonazioniBoundary.getInstance().loadFormDonazione();
	int i = 0;
	while (i < list.size()){
%>
<tr>
<td><% out.println(list.get(i).getIdDon());%></td>
<td><% out.println(list.get(i).getTipologia());%> </td>
<td><% out.println(list.get(i).getDescrizione());%> </td>
<td><% out.println(list.get(i).getIndirizzo() ); %> </td>
<td><% out.println(list.get(i).getStato()); %> </td>
</tr>

<%
	i++;
}
%>

  </tbody>
</table>
</div>
	<div class = "ritira">
		<button type="submit" name= "RITIRA DONAZIONE" value="RITIRA DONAZIONE">RITIRA DONAZIONE</button>
		<input type="text" id = "ritira" name= "ritira"   placeholder="Inserisci l'ID della donazione da ritirare">
	</div>
	<div class = "contatta">
		<button type="submit" name= "contatta" value="contatta">CONTATTA VOLONTARIO</button>
	</div>
	<div class = "cancella">
		<button type="submit" name= "eliminaDonazione" value="eliminaDonazione">ELIMINA DONAZIONE</button>
		<input type="text" id = "cod_dona" name= "cod_dona"   placeholder="Inserisci l'ID della donazione da eliminare">
	</div>
	<div class = "ind">
		<button type = "submit" name = "INDIETRO" value = "INDIETRO">INDIETRO</button>
	</div>
</form>
</body>
</html>