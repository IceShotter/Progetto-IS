<!DOCTYPE html>
<html lang="en">
<head>
<title>Registrazione</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="font/css/fontello.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
</style>

</head>

<script>
function check(){
	var matricola=document.forms["registrazione"]["matricola1"].value;
	var nome=document.forms["registrazione"]["nome1"].value;
	var cognome=document.forms["registrazione"]["cognome1"].value;
	var data=document.forms["registrazione"]["data1"].value;
	var email=document.forms["registrazione"]["email1"].value;
	var password=document.forms["registrazione"]["password1"].value;
	return ((CheckMatricola(matricola))&&(CheckNome(nome))&&(CheckCognome(cognome))&&(CheckData(data))&&(CheckEmail(email))&&(CheckPassword(passowrd)));
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


<body>

<%

if(request.getSession().getAttribute("esitoRegistrazione")!=null){
	boolean registrato=(boolean)request.getSession().getAttribute("esitoRegistrazione");
	if(registrato==true)
	{
		
%>
<script>
alert("Registrazione effettuata");
</script>
<%
request.getSession().setAttribute("esitoRegistrazione",null);
request.getRequestDispatcher("HomeStudente.jsp").forward(request,response);
}else{
%>
<script>
alert("Registrazione non effettuata");
</script>
<%
}
	request.getSession().setAttribute("registrato",null);
}
%>




<div class="navbar">
  <div class="navbar-inner">
  <a href="index.jsp"><img style="width: 20%; height: 20%" alt="" src="img/logo-big.png"></a>
   <ul class="nav nav-collapse pull-right">
        <li><a href="Registrati.jsp"><i class="fa fa-sign-in"></i> Registrati</a></li>
        <li><a href="Login.jsp"><i class="icon-user"></i> Accedi</a></li>
      </ul>
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> 
   <span class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top"></span>
    </div>
  </div>
</div>
<div class="container profile">

	<div class="Form" >
	<script src="javascript/controlloForm.js" type="text/javascript"></script>
		<h2 style="font-size: 40px" id="titolo">Registrazione</h2>
		<br>
		
		<form action="Registrati" name="registrazione" method="post" onsubmit="return check()" onReset="cancella()">
		<label style="font-size: 30px" for=matricola>	Matricola:</label><input  type="text" name="matricola1" value="" ><br>
		<label style="font-size: 30px" for=nome>	Nome:</label><input type="text" name="nome1" value="" ><br>
		<label style="font-size: 30px" for=cognome>	Cognome:</label><input  type="text" name="cognome1" value=""><br>
		<label style="font-size: 30px" for=data>	Data di nascita:</label><input  type="text" name="data1" value=""><br>
		<label style="font-size: 30px" for=email>	Email:</label><input  type="email" name="email1" value=""><br>
		<label style="font-size: 30px" for=password>	Password:</label><input  type="password" value="" name="password1" ><br>
		
		<div class=Bottoni>
		<input style="font-size: 30px" class=myButton type="reset" id="reset" value="Cancella">
			<input style="font-size: 30px" class=myButton type="submit" id="reg" value="Registrati">
		</div>
		</form>
	</div>
</div>

<%@include file="Footer.jsp" %>

</body>
</html>