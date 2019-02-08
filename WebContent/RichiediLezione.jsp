<!DOCTYPE html>
<html lang="en">
<head>
<title>Richiedi Lezione</title>
 <%@ page import="model.TutorBeanDao" %>
 <%@ page import="model.TutorBean" %>
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



<script>
function check(){
  var ora=document.forms["RichiediLezione"]["ora"].value;
  return ((CheckOra(ora)));
}

function CheckOra(ora){
  var lettere=/^(([0][8-9]|[1][0-8]):[0-5][0-9])+$/;
  if(email.match(lettere))
    {
      return true;
    }
  else{
    alert("L'ora non  e' valida, selzeziona un orario dalle08:00 alle 17:59");
    return false;
  }
}
</script>

<style type="text/css">
.myButton {
	-moz-box-shadow: 0px 10px 14px -7px #3dc21b;
	-webkit-box-shadow: 0px 10px 14px -7px #3dc21b;
	box-shadow: 0px 10px 14px -7px #3dc21b;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #44c767), color-stop(1, #5cbf2a));
	background:-moz-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:-webkit-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:-o-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:-ms-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:linear-gradient(to bottom, #44c767 5%, #5cbf2a 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#44c767', endColorstr='#5cbf2a',GradientType=0);
	background-color:#44c767;
	-moz-border-radius:8px;
	-webkit-border-radius:8px;
	border-radius:8px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:20px;
	font-weight:bold;
	padding:13px 32px;
	text-decoration:none;
	text-shadow:0px 1px 0px #2f6627;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #5cbf2a), color-stop(1, #44c767));
	background:-moz-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:-webkit-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:-o-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:-ms-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:linear-gradient(to bottom, #5cbf2a 5%, #44c767 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#5cbf2a', endColorstr='#44c767',GradientType=0);
	background-color:#5cbf2a;
}
.myButton:active {
	position:relative;
	top:1px;
}

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
.dropbtn {
  background-color:gray;
  padding: 6px;
  font-size: 16px;
  border: none;
  cursor: pointer;
   border-radius: 10px; -moz-border-radius: 10px; 
  -webkit-border-radius: 10px;
  color:#f0f8ff;
   }

/* Dropdown button on hover & focus */
.dropbtn:hover, .dropbtn:focus {
  background-color: #203748;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd}

.show {display:block;}
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
   <a class=" fas fa-sign-out-alt home" href="Logout.jsp"><i ></i> &nbsp;LOG OUT</a>
 
 
 <%
 TutorBeanDao td=new TutorBeanDao();
  ArrayList<TutorBean> lista=td.doRetrieve();
  for(int i=0;i<lista.size();i++)
  {
	  TutorBean tb=lista.get(i);
	  
%> 
  
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> 
   <span class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top"></span>
    </div>
  </div>
</div>
<div class="container profile">


	<div class="Form" >
	<script src="javascript/controlloForm.js" type="text/javascript"></script>
		<h2 style="font-size: 40px" id="titolo">Richiesta Lezione</h2>
		<br>
		
	<form    action="RichiediLezione" method="post" onSubmit="check()" onReset="cancella()">
		
			<label style="font-size: 30px" for=nome>	Data:</label><input  type="text" name="data" ><br>
			<label style="font-size: 30px" for=cognome>	Ora:</label><input  type="text" name="ora" ><br>
			<label style="font-size: 30px" for=matricola>	Materia:</label><input  type="text" name="materia" ><br>
			<label style="font-size: 30px" for=email> </label><input  type="hidden" name="emailStudente" value=<%=studente.getEmail() %>><br>
			
			
			<label style="font-size: 30px" for=data>	Tutor:</label>
			<select style="width: 80%; height: 80%; background-color: #DDF3DF;" onchange="selectURL(this.options[this.selectedIndex].value);" name="tutor">
	<option selected value="">Seleziona il tutor...</option>
	<option value=<%=tb.getEmail() %>><%=tb.getNome() %><%=tb.getCognome() %></option>
	
</select>

<div class=Bottoni>
			<input style="font-size: 30px" class=myButton type="reset" id="reset" value="Cancella">
			<input style="font-size: 30px" class=myButton type="submit" id="reg" value="Richiedi">
		</div>
		</form>
	
	</div>
</div>


<%
	}
  
%>
<div class="col-4"></div>
<%@include file="Footer.jsp" %>

<%
}else{
	request.getSession().setAttribute("esitoRegistrazione",false);
	response.sendRedirect("Registrati.jsp");
}
%>
</body>
</html>