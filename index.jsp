<!DOCTYPE html>
<html lang="en">
<head>
<title>Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="font/css/fontello.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
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
<div class="col-4"></div>
  <div class="col-4">
    <h1 style="font-size: 40px">WELCOME TO SMART DASH</h1>
    <p style="font-size: 30px"> Piattaforma dell'Università degli studi di Salerno annessa al Dipartimento di Informatica. 
		Smart Dash è nata per aiutare studenti con disabilità  nel percorso universitario.
		L'obiettivo del sito è quello di mettere in relazionie studenti e tutor, richiedendo accompagnamenti e lezioni specifiche. </p>
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