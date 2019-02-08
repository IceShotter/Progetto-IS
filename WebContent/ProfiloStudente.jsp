<!DOCTYPE html>
<html lang="en">
<head>
<title>Profilo Studente</title>
 <%@ page import="model.LezioneBeanDao" %>
 <%@ page import="model.LezioneBean" %>
 <%@ page import="model.StudenteBeanDao" %>
 <%@ page import="model.StudenteBean" %>
  <%@ page import="java.util.*" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="font/css/fontello.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

<%
if(request.getSession().getAttribute("stBean")!=null)
{
	StudenteBean studente=(StudenteBean)request.getSession().getAttribute("stBean");
	request.getSession().setAttribute("profiloStudente", studente);
	

%>


<style type="text/css">

.home{
font-size:20px; 
text-decoration:none; 
background-color: transparent; 
color:#f0f8ff; 
border: none;
padding: 20px;
}

.home:hover{
color: white;
text-decoration: none; 
background-color: #203748;
-webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius: 10px;
  -moz-border-radius: 10px; /* firefox */
  -webkit-border-radius: 10px;
}
.carica{
text-decoration:none; 
background-color: transparent; 
color:#f0f8ff; 
border: 2px solid green;
-webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius: 10px;
  -moz-border-radius: 10px; /* firefox */
  -webkit-border-radius: 10px;

}
.carica:hover{
color: white;
text-decoration: none; 
background-color: green;
-webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius: 10px;
  -moz-border-radius: 10px; /* firefox */
  -webkit-border-radius: 10px;

}

.riga, th, td{
font-size: 20px;
}
</style>
</head>
<body>
<div class="navbar">
  <div class="navbar-inner">
  <img hspace="0px" style="width: 10%; height: 10%" alt="" src="img/logo-big.png">
   <a class=" fas fa-home home" href="HomeStudente.jsp"><i></i>&nbsp;HOME</a>
   
   <a class="fas fa-chalkboard-teacher home" href="RichiediLezione.jsp"><i ></i>&nbsp; RICHIEDI LEZIONE</a>
   <a class="fas fa-user-friends home" href="RichiediAccompagnamento.jsp"><i ></i>&nbsp; RICHIEDI ACCOMPAGNAMENTO</a>
    <a class="home"href="ProfiloStudente.jsp" ><img hspace="5px" style="width:3%; height:3%;  border-radius: 10px;
  -moz-border-radius: 10px; /* firefox */
  -webkit-border-radius: 10px;" alt=""  src="img/user.jpg"><i></i>&nbsp;PROFILO</a>
   <a class=" fas fa-sign-out-alt home" href="#"><i ></i> &nbsp;LOGOUT</a>
  
  
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> 
   <span class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top"></span>
    </div>
  </div>
</div>
<div class="container profile">
<div class="container">
  <h2>I miei dati</h2>
  <table class="table table-bordered">
    <thead class="riga">
      <tr>
        <th>Nome</th>
        <td><%=studente.getNome() %></td>
      
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>Cognome</th>
        <td><%=studente.getCognome() %></td>
        
      </tr>      
      <tr>
        <th>Matricola</th>
        <td><%=studente.getMatricola() %></td>
       
      </tr>
      <tr>
        <th>Data di Nascita</th>
        <td><%=studente.getData() %></td>
        
      </tr>
    </tbody>
  </table>
</div>
  </div>
<div class="col-4"></div>
<%@ include file="Footer.jsp" %>


<script src="js/jquery-1.10.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
$('#myModal').modal('hidden')
</script>
<%
}else{
	request.getSession().setAttribute("esitoRegistrazione",false);
	response.sendRedirect("Registrati.jsp");
}
%>
</body>
</html>