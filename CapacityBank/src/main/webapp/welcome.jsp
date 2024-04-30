<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://use.fontawesome.com/releases/v5.0.1/css/all.css" rel="stylesheet">
<style>
* {
        font-family: 'Poppins', sans-serif;
    }
.nav{
	height:750px;
	background-color:blue;
}
.h2 {
        color: #007aff;
        font-size: 25px;
    }
.heading{
	width:100%;
	height:60px;
	background-color:#ffffff;
}
.head{
	padding:0px;
	background-color:#f5f6fa;
}
.card-header{
	padding:5px;
	background-color:#007aff;
}

</style>
<style>
* {
        font-family: sans-serif;
    }
  body, html {
    height: 100%;
    margin: 0;
    padding: 0;
    overflow: hidden; 
  }
  .col-2 {
    float: left;
    width: 20%; 
    height: 100%;
    background-color: #0051aa;
  }
  .col-10 {
    float: left;
    width: 100%; 
    height: 100%;
   	padding:0;
    background-color: #f5f6fa;
    position: relative;
  }
  #toggleDiv {
    width: 100%;
    height: 52px;
    background-color: white;
  }
  #col10.expanded {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 9999; 
  }
  .navside{
  	padding:0;
  }
  .dropdown-menu{
  	border:0;
  	
  }
  .meter{
  	border:0;
  	margin-top:170px;
  }
  #add{
  	display:none;
  }
</style>
</head>
<body>
  <div class="col-2 navside">
    <div><h3 class="text-white text-center p-3 border-bottom border-dark" style="font-size: 17px;"><i class=" fa fa-pen-to-square"></i>Capacitor Bank</h3></div>
    <div><h3 class="text-white text-center pt-3 font-weight-bold" style="font-size: 15px;"><i class="fa fa-user mr-2" style="color: #ffffff; font-size: 20px;"></i>AECTMCTR</h3></div>
    <div class="btn-group p-3">
  		<button type="button" class="btn btn-secondary dropdown-toggle ml-3 px-4" style="background-color: #0051aa;" data-toggle="dropdown" aria-expanded="false">Capacitor Bank</button>
  		<div class="dropdown-menu dropdown-menu-right" style="background-color: #0051aa;">
		    <button class="dropdown-item text-white mb-2" onclick="addDetails();" style="background-color: #0051aa;" type="button"><i class="fa fa-solid fa-circle mr-2"></i>Add Details</button>
		    <button class="dropdown-item text-white mb-2" style="background-color: #0051aa;" type="button"><i class="fa fa-solid fa-circle mr-2"></i>View Details</button>
		    <button class="dropdown-item text-white mb-2" style="background-color: #0051aa;" type="button"><i class="fa fa-solid fa-circle mr-2"></i>Add Shifting Details</button>
		   	<button class="dropdown-item text-white mb-2" style="background-color: #0051aa;" type="button"><i class="fa fa-solid fa-circle mr-2"></i>View Shifting Details</button>
    	</div>
	</div>

  	<button class="text-white mb-2 meter h6 ml-5 pl-3" style="background-color: #0051aa;">Meter Master</button>
  </div>
  <div class="col-10" id="col10">
    <div id="toggleDiv" class="d-flex justify-content-between">
      <button id="onButton" class="bg-white p-3 border border-white"><i class="fa fa-bars text-muted" style="font-size: 18px;"></i></button>
      <div class="d-flex justify-content-end">
      	<button id="offButton" class="bg-white border border-white"><i class="fa fa-bell fa-xl" style="color: #bcb9ae; font-size: 15px;"></i></button>
      	<button id="closeButton" class="bg-white border border-white"><h6 class="pr-4 text-muted pt-2  ml-2" style="font-size: 15px;">Logout</h6></button>
      </div>
      
    </div>
    <div id="welcome">
    	<h2 class="text-primary p-3">Welcome..!</h2>
    </div>
    <div id="add">
  	<jsp:include page="addDetails.jsp" />  
    </div>
  </div>
<script>
  const toggleDiv = document.getElementById('col10');
  const onButton = document.getElementById('onButton');
  const offButton = document.getElementById('offButton');

  onButton.addEventListener('click', function() {
    toggleDiv.classList.toggle('expanded');
  });

  offButton.addEventListener('click', function() {
    toggleDiv.classList.remove('expanded');
  });
  
  function addDetails(){
	  document.getElementById("welcome").style.display="none";
	  document.getElementById("add").style.display="block"
  }
</script>
</body>
</html>