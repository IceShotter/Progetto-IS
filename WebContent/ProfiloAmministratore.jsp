<!DOCTYPE html>
<html lang="en">
<head>
<title>Profilo Amministratore</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="font/css/fontello.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

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
    <div class="container pull-left">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
        <span class="icon-bar pull"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> 
      </a>
       
         <img style="width: 24%; height: 24%" src="img/logo-big.png" alt="">
     	
       
       <a class="fas fa-home home" href="HomeAmministratore.jsp"><i ></i>&nbsp;HOME</a>
       <a class="fas fa-user-plus home" href="AggiungiTutor.jsp"><i ></i>&nbsp;AGGIUNGI TUTOR</a>
       <a class="fas fa-user-minus home" href="RimuoviTutor.jsp"><i ></i>&nbsp;RIMUOVI TUTOR</a>
     
      <div class="nav-collapse collapse"></div>
      
    </div>
    		  <div class="dropdown pull-right" style="padding:40px; ">
  				<button onclick="myFunction()" class="dropbtn">
  					<img hspace="10" style="width:25%; height:25%;  
  					border-radius: 10px; -moz-border-radius: 10px;
  					 -webkit-border-radius: 10px;" alt=""  src="img/user.jpg">Pasquale 
  				</button>
				<div id="myDropdown" class="dropdown-content">
					<a style="color: white;" class="icon-user profilo" href="ProfiloAmministratore.jsp ">&nbsp;Profilo</a>
					<a style="color: white;" class=" fas fa-sign-out-alt  profilo" href="#"> &nbsp;Logout</a>
				</div>
   
			</div>
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> 
   <span class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top"></span>
    </div>
  </div>
 </div>
<div class="container profile">
<div class="container">
  <h2>I miei dati</h2>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Nome</th>
        <td>Carlo</td>
      
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>Cognome</th>
        <td>Di Gianpaolo</td>
        
      </tr>      
      <tr>
        <th>Matricola</th>
        <td>051210001</td>
       
      </tr>
      <tr>
        <th>Data di Nascita</th>
        <td>10-12-1976</td>
        
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