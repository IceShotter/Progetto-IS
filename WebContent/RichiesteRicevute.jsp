<!DOCTYPE html>
<html lang="en">
<head>
<title>Richieste Ricevute</title>
 <%@ page import="model.LezioneBeanDao" %>
 <%@ page import="model.LezioneBean" %>
 <%@ page import="model.StudenteBeanDao" %>
 <%@ page import="model.StudenteBean" %>
 <%@ page import="model.TutorBean" %>
 <%@ page import="model.TutorBeanDao" %>
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
if(request.getSession().getAttribute("tuBean")!=null)
{
	TutorBean tutor=(TutorBean)request.getSession().getAttribute("tuBean");
	request.getSession().setAttribute("profiloTutor", tutor);
	

%>
<script type="text/javascript">
function myFunction() {
	  document.getElementById("myDropdown").classList.toggle("show");
	}

	// Close the dropdown menu if the user clicks outside of it
	window.onclick = function(event) {
	  if (!event.target.matches('.dropbtn')) {
	    var dropdowns = document.getElementsByClassName("dropdown-content");
	    var i;
	    for (i = 0; i < dropdowns.length; i++) {
	      var openDropdown = dropdowns[i];
	      if (openDropdown.classList.contains('show')) {
	        openDropdown.classList.remove('show');
	      }
	    }
	  }
	}
</script>
<style type="text/css">
.profilo{
	
	background-color: #203748;
	
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

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  padding: 30px; /* Location of the box */
  left: 30;
  top: 40;
  width: 50%; /* Full width */
  height: 50%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  padding: 30px;
  border: 1px solid #888;
  width: 100%;
  height: 100%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
.aula{
background-color: transparent;
border-radius: 10px; -moz-border-radius: 10px;
  				-webkit-border-radius: 10px;
  				border: 2px solid green;
}
.aula:hover{
	border-radius: 10px; -moz-border-radius: 10px;
  				-webkit-border-radius: 10px;
  				border: 2px solid green;
  				background-color: green;
  				-webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  color: white;
}
</style>
</head>
<body>
<div class="navbar">
  <div class="navbar-inner">
  <a href="index.jsp"><img hspace="10px" style="width: 18%; height: 18%" alt="" src="img/logo-big.png"></a>
   <a class="fas fa-home home" href="HomeTutor.jsp"><i ></i>&nbsp; HOME</a>
   
   <a class="fas fa-user-clock home" href="RichiesteRicevute.jsp"><i ></i>&nbsp; RICHIESTE RICEVUTE</a>
   <div class="dropdown pull-right" style="padding:40px; ">
  				<button onclick="myFunction()" class="dropbtn">
  					<img hspace="10" style="width:30%; height:30%;  
  					border-radius: 10px; -moz-border-radius: 10px;
  					 -webkit-border-radius: 10px;" alt=""  src="img/user.jpg"><%=tutor.getNome() %>
  				</button>
				<div id="myDropdown" class="dropdown-content">
					<a style="color: white;" class="icon-user profilo" href="ProfiloTutor.jsp ">&nbsp;PROFILO</a>
					<a style="color: white;" class=" fas fa-sign-out-alt  profilo" href="index.jsp"> &nbsp;LOGOUT</a>
				</div>
			</div>
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> 
   <span class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    </div>
  </div>
</div>
<div class="container profile">
<div class="container">
  <h2>Lezioni ed accompagnamenti ricevuti</h2>
  <table class="table">
    <thead>
      <tr>
        <th>Data</th>
        <th>Materia</th>
        <th>Tipo</th>
        <th>Ora</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>13-09-2018</td>
        <td>Ingegneria del software</td>
        <td>Esame</td>
        <td>09:00</td>
        <td><input id="myBtn" class="myButton" type="submit" value="Accetta">		<input class="myButton" type="submit" value="Rifiuta"></td>
        <td> 
      </tr>      
      <tr>
        <td>13-09-2018</td>
        <td>Ingegneria del software</td>
        <td>Esame</td>
        <td>09:00</td>
        <td><input id="myBtn" class="myButton" type="submit" value="Accetta">		<input class="myButton" type="submit" value="Rifiuta"></td>
        <td> 
      </tr>
      <tr>
        <td>13-09-2018</td>
        <td>Ingegneria del software</td>
        <td>Esame</td>
        <td>09:00</td>
        <td><input id="myBtn" class="myButton" type="submit" value="Accetta">		<input class="myButton" type="submit" value="Rifiuta"></td>
        <td> 
      </tr>
      <tr>
         <td>13-09-2018</td>
        <td>Ingegneria del software</td>
        <td>Esame</td>
        <td>09:00</td>
        <td><input id="myBtn" class="myButton" type="submit" value="Accetta">		<input class="myButton" type="submit" value="Rifiuta"></td>
        <td> 
      </tr>
      <tr>
         <td>13-09-2018</td>
        <td>Ingegneria del software</td>
        <td>Esame</td>
        <td>09:00</td>
        <td><input id="myBtn" class="myButton" type="submit" value="Accetta">		<input class="myButton" type="submit" value="Rifiuta"></td>
        <td> 
      </tr>
      <tr>
         <td>13-09-2018</td>
        <td>Ingegneria del software</td>
        <td>Esame</td>
        <td>09:00</td>
        <td><input id="myBtn" class="myButton" type="submit" value="Accetta">		<input class="myButton" type="submit" value="Rifiuta"></td>
        <td> 
      </tr>
    </tbody>
  </table>
  <!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div align="center" class="modal-content">
    <span  class="close">&times;</span>
    <p align="center" style="color: black">Scrivi l'aula</p>
    <input style="width: 20%; height: 20%;" class="aula" type="text" >
    <br>
    <input class="aula" type="submit" value="OK">
  </div>

</div>
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
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