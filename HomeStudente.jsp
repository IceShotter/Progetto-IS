<!DOCTYPE html>
<html lang="en">
<head>
<title>Home Studente</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="font/css/fontello.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

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
.riga, td{
font-size: 18px;}
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
   <a class=" fas fa-sign-out-alt home" href="#"><i ></i> &nbsp;LOG OUT</a>
  
  
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> 
   <span class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top"></span>
    </div>
  </div>
</div>
<div class="container profile">

<div class="container">
  <h2>Lezioni prenotate</h2>
  <table class="table">
    <thead>
      <tr class="riga">
        <th>Data</th>
        <th>Materia</th>
        <th>Tutor</th>
        <th>Ora</th>
        <th>Aula</th>
        <th>Descrizione</th>
        <th>Stato</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>13-11-2019</td>
        <td>Base di Dati</td>
        <td>Simone</td>
        <td>10:00</td>
        <td>P4</td>
        <td></td>
        <td>In Sospeso</td>
      </tr>      
      <tr>
      <td>13-11-2019</td>
        <td>Base di Dati</td>
        <td>Simone</td>
        <td>10:00</td>
        <td>P4</td>
        <td>Esame Scritto</td>
        <td>Accettata</td>
      </tr>
      <tr>
       <td>13-11-2019</td>
        <td>Base di Dati</td>
        <td>Simone</td>
        <td>10:00</td>
        <td>P4</td>
        <td>Esame Scritto</td>
        <td>Accettata</td>
      </tr>
       <tr>
      <td>13-11-2019</td>
        <td>Base di Dati</td>
        <td>Simone</td>
        <td>10:00</td>
        <td>P4</td>
        <td>Esame Scritto</td>
        <td>Accettata</td>
      </tr>
      <tr>
       <td>13-11-2019</td>
        <td>Base di Dati</td>
        <td>Simone</td>
        <td>10:00</td>
        <td>P4</td>
        <td>Esame Scritto</td>
        <td>Accettata</td>
      </tr>
    </tbody>
  </table>
</div>

<div class="container">
  <h2>Accompagnamenti prenotati</h2>
  <table class="table">
    <thead>
      <tr class="riga">
        <th>Data</th>
        <th>Materia</th>
        <th>Tutor</th>
        <th>Ora</th>
        <th>Aula</th>
        <th>Descrizione</th>
        <th>Stato</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>13-11-2019</td>
        <td>Base di Dati</td>
        <td>Simone</td>
        <td>10:00</td>
        <td>P4</td>
        <td></td>
        <td>Accettato</td>
      </tr>      
      <tr>
       	<td>13-11-2018</td>
        <td>TSW</td>
        <td>Sandro</td>
        <td>9:00</td>
        <td>P3</td>
        <td></td>
        <td>In Sospeso</td>
      </tr>
      <tr>
     	<td>14-10-2019</td>
        <td>TSW</td>
        <td>Sandro</td>
        <td>9:00</td>
        <td>P3</td>
        <td></td>
        <td>In Sospeso</td>
      </tr>
         <tr>
        <td>13-11-2019</td>
        <td>Base di Dati</td>
        <td>Simone</td>
        <td>10:00</td>
        <td>P4</td>
        <td></td>
        <td>Accettato</td>
      </tr>      
      <tr>
       	<td>13-11-2018</td>
        <td>TSW</td>
        <td>Sandro</td>
        <td>9:00</td>
        <td>P3</td>
        <td></td>
        <td>In Sospeso</td>
      </tr>
      <tr>
     	<td>14-10-2019</td>
        <td>TSW</td>
        <td>Sandro</td>
        <td>9:00</td>
        <td>P3</td>
        <td></td>
        <td>In Sospeso</td>
      </tr>
      <tr>
    </tbody>
  </table>
</div>

<div class="container">
  <h2>Lezioni effettuate</h2>
  <table class="table">
    <thead>
      <tr class="riga">
        <th>Data</th>
        <th>Materia</th>
        <th>Tutor</th>
        <th>Ora</th>
        <th>Aula</th>
        <th>Descrizione</th>
        <th>Vai alla Lezione</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>13-09-2019</td>
        <td>Ingegneria del software</td>
        <td>Sandro</td>
        <td>18:00</td>
        <td>P14</td>
        <td></td>
        <td> <input class="myButton" type="submit" value="Vai"></td>
      </tr>      
      <tr>
       <td>13-09-2019</td>
        <td>Ingegneria del software</td>
        <td>Sandro</td>
        <td>18:00</td>
        <td>P14</td>
        <td></td>
        <td> <input class="myButton" type="submit" value="Vai"></td>
      </tr>
      <tr>
       <td>13-09-2019</td>
        <td>Ingegneria del software</td>
        <td>Sandro</td>
        <td>18:00</td>
        <td>P14</td>
        <td></td>
        <td> <input class="myButton" type="submit" value="Vai"></td>
      </tr>
      <tr>
        <td>13-09-2019</td>
        <td>Ingegneria del software</td>
        <td>Sandro</td>
        <td>18:00</td>
        <td>P14</td>
        <td></td>
        <td> <input class="myButton" type="submit" value="Vai"></td>
      </tr>
      <tr>
        <td>13-09-2019</td>
        <td>Ingegneria del software</td>
        <td>Sandro</td>
        <td>18:00</td>
        <td>P14</td>
        <td></td>
        <td> <input class="myButton" type="submit" value="Vai"></td>
      </tr>
      <tr>
        <td>13-09-2019</td>
        <td>Ingegneria del software</td>
        <td>Sandro</td>
        <td>18:00</td>
        <td>P14</td>
        <td></td>
        <td> <input class="myButton" type="submit" value="Vai"></td>
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
</body>
</html>