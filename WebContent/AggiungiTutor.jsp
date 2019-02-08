<!DOCTYPE html>
<html lang="en">
<head>
<title>Aggiungi Tutor</title>
 <%@ page import="model.LezioneBeanDao" %>
 <%@ page import="model.LezioneBean" %>
 <%@ page import="model.StudenteBeanDao" %>
 <%@ page import="model.StudenteBean" %>
 <%@ page import="model.AmministratoreBean" %>
 <%@ page import="model.AmministratoreBeanDao" %>
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
if(request.getSession().getAttribute("amBean")!=null)
{
	AmministratoreBean amministratore=(AmministratoreBean)request.getSession().getAttribute("amBean");
	request.getSession().setAttribute("profiloAmministratore", amministratore);
	

%>

<script>
function check(){
	var nome=document.forms["aggiungiT"]["nome1"].value;
	var cognome=document.forms["aggiungiT"]["cognome1"].value;
	var matricola=document.forms["aggiungiT"]["matricola1"].value;
	var data=document.forms["aggiungiT"]["data1"].value;
	var email=document.forms["aggiungiT"]["email1"].value;
	var password=document.forms["aggiungiT"]["password1"].value;
	return ((CheckNome(nome))&&(CheckCognome(cognome))&&(CheckMatricola(matricola))&&(CheckData(data))&&(CheckEmail(email))&&(CheckPassword(passowrd)));
}

function CheckMatricola(matricola){
	
	var lettere=/^[0-9]{10}$/;
	if(matricola.match(lettere))
		return true;
	else{
		alert("Il nome deve essere composto dalla prima lettera maiuscola e le successive minuscole, non può contenere numeri");
		return false;
	}
}

function CheckNome(nome){
	var lettere=/^[A-Z]+[a-z]+\s*[A-Z]*[a-z]*/;
	if(nome.match(lettere))
		return true;
	else{
		alert("Il nome deve essere composto dalla prima lettera maiuscola e le successive minuscole, non può contenere numeri");
		return false;
	}
}

function CheckCognome(cognome){
	var lettere=/^[A-Z]+[a-z]+/;
	if(cognome.match(lettere))
		return true;
	else{
		alert("Il cognome deve essere composto dalla prima lettera maiuscola e le successive minuscole, non può contenere numeri");
		return false;
	}
}

function CheckData(data){
	var lettere=/^[0-9]{4}\-[0-9]{2}\-[0-9]{2}$/;
	if(data.match(lettere))
		{
		 return true;
		}else{
			alert("formato data yyyy-mm-gg");
			return false
		}
}

function CheckEmail(email){
	var lettere=/(\W|^)[\w.+\-]*@studenti\.unisa\.it(\W|$)/ig;
	if(email.match(lettere))
		{
			return true;
		}
	else{
		alert("L'email non  e' valida");
		return false;
	}
}

function CheckPassword(password){
	var  lettere=/^[0-9a-zA-Z]{6,}$/;
	if(password.match(lettere))
		{
			var lettere1=/[a-z]+/;
			if(password.match(lettere1))
				{
					var lettere2=/[A-Z]+/;
					if(password.match(lettere2))
						{
						 	var lettere3=/[0-9]+/;
						 	if(password.match(lettere3))
						 		{
						 			return true;
						 		}else{
						 			alert("almeno un carattere numerico nella password");
						 			return false;
						 		}
						}else{
							alert("almeno una lettera maiuscola nella password");
							return false;
						}
				}else{
					alert("almeno una lettera minuscola nella password");
					return false;
				}
		}else{
			alert("password non valida, almeno 6 caratteri, una lettera maiuscola e un numero");
			return false;
		}
}




</script>


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

<%

if(request.getSession().getAttribute("esitoAggiuntaT")!=null){
	boolean registrato=(boolean)request.getSession().getAttribute("esitoAggiuntaT");
	if(registrato==true)
	{
		
%>
<script>
alert("Aggiunta del Tutor effettuata");
</script>
<%
request.getRequestDispatcher("HomeAmministratore.jsp").forward(request,response);
request.getSession().setAttribute("esitoAggiuntaT",null);
}else{
%>
<script>
alert("Aggiunta del Tutor non effettuata");
</script>
<%
}
	request.getSession().setAttribute("registrato",null);
}
%>





<div class="navbar">
<div class="navbar-inner">
  <a href="index.jsp"><img hspace="10px" style="width: 25%; height: 25%" alt="" src="img/logo-big.png"></a>
   <a class=" fas fa-home home" href="HomeAmministratore.jsp"><i></i>&nbsp;HOME</a>
   
   
  <div class="dropdown pull-right" style="padding:40px; ">
  				<button onclick="myFunction()" class="dropbtn">
  					<img hspace="10" style="width:30%; height:30%;  
  					border-radius: 10px; -moz-border-radius: 10px;
  					 -webkit-border-radius: 10px;" alt=""  src="img/user.jpg"><%=amministratore.getNome() %>
  				</button>
				<div id="myDropdown" class="dropdown-content">
					<a style="color: white;" class="icon-user profilo" href="ProfiloAmministratore.jsp ">&nbsp;PROFILO</a>
					<a style="color: white;" class=" fas fa-sign-out-alt  profilo" href="index.jsp"> &nbsp;LOGOUT</a>
				</div>
			</div>
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> 
   <span class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top"></span>
    </div>
  </div>
 </div>
<div class="container profile">


	
      <div class="Form" >
	<script src="javascript/controlloForm.js" type="text/javascript"></script>
		<h2 style="font-size: 40px" id="titolo">Aggiunta Tutor</h2>
		<br>
		
		<form  name="aggiungiT"  action="AggiuntaTutor" method="post" onSubmit="return check()" onReset="cancella()">
		
		<label style="font-size: 30px" for=nome>	Nome:</label><input  type="text" name="nome1" ><br>
		<label style="font-size: 30px" for=cognome>	Cognome:</label><input  type="text" name="cognome1" ><br>
		<label style="font-size: 30px" for=matricola>	Matricola:</label><input type="text" name="matricola1" ><br>
		<label style="font-size: 30px" for=data>	Data di nascita:</label><input type="text" name="dataNascita1" ><br>
		<label style="font-size: 30px" for=email>	Email:</label><input  type="text" name="email1" ><br>
		<label style="font-size: 30px" for=password>	Password:</label><input type="password" name="password1" ><br>

		<div class=Bottoni>
			<input style="font-size: 30px" class=myButton type="reset" id="reset" value="Cancella">
			<input style="font-size: 30px" class=myButton type="submit" id="aggT" value="Aggiungi">
		</div>
		</form>
	</div>
</div>

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