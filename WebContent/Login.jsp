<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
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

<script>
function check(){
	var email=document.forms["login"]["email1"].value;
	return ((CheckEmail(email)));
}

function CheckEmail(email){
	var lettere=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w+)+$/;
	if(email.match(lettere))
		{
			return true;
		}
	else{
		alert("L'email non  e' valida");
		return false;
	}
}
</script>


<% 
HttpSession ses=request.getSession();
if(ses.getAttribute("stBean")!=null){
	response.sendRedirect("HomeStudente.jsp");
}else if(ses.getAttribute("tuBean")!=null){
	response.sendRedirect("HomeTutor.jsp");
}else if(ses.getAttribute("amBean")!=null){
	response.sendRedirect("HomeAmministratore.jsp");
}
%>
</head>
<body>
<%if(request.getSession().getAttribute("esitoAccesso")!=null){
		if((boolean)request.getSession().getAttribute("esitoAccesso")==false){%>
		<script>alert("Accesso Negato")</script>
	<%}
}%>

<div class="navbar">
  <div class="navbar-inner">
  <a href="index.jsp"><img style="width: 20%; height: 20%" alt="" src="img/logo-big.png"></a>
   <ul class="nav nav-collapse pull-right">
        <li><a href="Registrati.jsp"><i class="fa fa-sign-in"></i> Registrati</a></li>
        <li><a href="Login.jsp"><i class="icon-user"></i> Accedi</a></li>
      </ul>
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> 
   <span class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    </div>
  </div>
</div>
<div class="container profile">





<div class="Form">
	
		<form  action="Accedi" method="post" name="login">
		<div class="DatiIdentificativi">
			<label style="font-size: 30px" for=email>Email:</label><input id=email type="text" name="email1"> <br>
			<label style="font-size: 30px" for=password>Password:</label><input id=password type="password" name="password1"> <br>
		</div>
		
		
		<div class = Controllo id = Controllo>
			<p>Non sei registrato?<a href = "Registrati.jsp"> clicca qui</a></p><br>
		</div>
		
		<div class = "Bottoni">
			<input  style="font-size:30px; font-family: Georgia, Times, serif;" class="myButton" type="submit" value="Accedi">
		</div>
		
		</form>
		
	</div>

</div>
<div class="col-4"></div>
<%@ include file="Footer.jsp" %>


<script src="js/jquery-1.10.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
$('#myModal').modal('hidden')
</script>
</body>
</html>