<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Footer</title>
<style type="text/css">
#footer {
	color: white;
	position: static;
	top: 700px;
	left: 0;
	background-repeat: repeat-x;
	width: 100%;
	height: 100px;
}

* {
	box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column {
	float: left;
	width: 50%;
	padding: 40px;
	border-left: 40px;
	height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}
</style>
</head>
<body>
<br>
<br>
<br>
	<div id="footer">
		<div class="row">
			<div  class="column" style="background-color: gray;">
				<h2 style="font-family: Impact, Charcoal, sans-serif;">Riferimenti</h2>
				<span style="color: black; font-family: Impact, Charcoal, sans-serif">Unisa</span>
		<a href="http://www.unisa.it"><img hspace="20px" alt="Unisa" src="img/logoUni.png"></a>
		<br>
		<br>
		<span style="color: black; font-family: Impact, Charcoal, sans-serif">Piattaforma Elearning</span>
		<a href="http://www.elearning.informatica.unisa.it"><img hspace="20px" alt="elearning" src="img/logoDip.png"></a>
			<br>
			<br>
			<span style="color: black; font-family: Impact, Charcoal, sans-serif">Dipartimento Informatica</span>
			<a href="http://www.di.unisa.it"><img hspace="20px" alt="DipInf" src="img/dr.png"></a>
			<br>
			<br>
			</div>
			
			<div class="column" style="background-color: gray;">
				<h2 style="font-family: Impact, Charcoal, sans-serif;">Chi Siamo</h2>
				<p align="justify" style="font-family: Trebuchet MS, Helvetica, sans-serif;">
				Il Team di sviluppo del progetto è formato da cinque studenti universitari:</p>
				<p align="justify" style="font-family: Trebuchet MS, Helvetica, sans-serif;">
				<b>Sandro Gentile</b>
				<p align="justify" style="font-family: Trebuchet MS, Helvetica, sans-serif;"><b>Francesco Auriemma</b></p>
				<p align="justify" style="font-family: Trebuchet MS, Helvetica, sans-serif;"><b>Salvatore De Vivo</b></p>
				<p align="justify" style="font-family: Trebuchet MS, Helvetica, sans-serif;"><b>Daniele Cesarano</b></p>
				<p align="justify" style="font-family: Trebuchet MS, Helvetica, sans-serif;"><b>Alberto Misticoni</b></p>
				
			</div>
		</div>
	</div>
</body>