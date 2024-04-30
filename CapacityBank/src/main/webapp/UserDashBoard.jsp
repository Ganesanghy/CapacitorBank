<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.nav-pills > li > a {
   border-radius: 0;
}

#wrapper {
   padding-left: 0;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -o-transition: all 0.5s ease;
   transition: all 0.5s ease;
   overflow: hidden;
}

#wrapper.toggled {
   padding-left: 250px;
   overflow: hidden;
}

#sidebar-wrapper {
   z-index: 1000;
   position: fixed;
   left: 250px;
   width: 0;
   height: 100%;
   margin-left: -250px;
   overflow-y: auto;
   background: #000;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -o-transition: all 0.5s ease;
   transition: all 0.5s ease;
}

#wrapper.toggled #sidebar-wrapper {
   width: 250px;
}

#page-content-wrapper {
   position: absolute;
   width: 100%;
   height:100%;
   overflow-x: hidden;
}

.xyz {
   min-width: 360px;
}

#wrapper.toggled #page-content-wrapper {
   position: relative;
   margin-right: 0px;
}

.fixed-brand {
   width: auto;
}
/* Sidebar Styles */

.sidebar-nav {
   position: absolute;
   top: 0;
   width: 250px;
   margin: 0;
   padding: 0;
   list-style: none;
   margin-top: 2px;
}

.sidebar-nav li {
   text-indent: 15px;
   line-height: 40px;
}

.sidebar-nav li a {
   display: block;
   text-decoration: none;
   color: #999999;
}

.sidebar-nav li a:hover {
   text-decoration: none;
   color: #fff;
   background: rgba(255, 255, 255, 0.2);
   border-left: red 2px solid;
}

.sidebar-nav li a:active,
.sidebar-nav li a:focus {
   text-decoration: none;
}

.sidebar-nav > .sidebar-brand {
   height: 65px;
   font-size: 18px;
   line-height: 60px;
}

.sidebar-nav > .sidebar-brand a {
   color: #999999;
}

.sidebar-nav > .sidebar-brand a:hover {
   color: #fff;
   background: none;
}

.no-margin {
   margin: 0;
}

@media (min-width: 768px) {
   #wrapper {
      padding-left: 250px;
   }
   .fixed-brand {
      width: 250px;
   }
   #wrapper.toggled {
      padding-left: 0;
   }
   #sidebar-wrapper {
      width: 250px;
   }
   #wrapper.toggled #sidebar-wrapper {
      width: 250px;
   }
   #wrapper.toggled-2 #sidebar-wrapper {
      width: 50px;
   }
   #wrapper.toggled-2 #sidebar-wrapper:hover {
      width: 250px;
   }
   #page-content-wrapper {
      position: relative;
      -webkit-transition: all 0.5s ease;
      -moz-transition: all 0.5s ease;
      -o-transition: all 0.5s ease;
      transition: all 0.5s ease;
   }
   #wrapper.toggled #page-content-wrapper {
      position: relative;
      margin-right: 0;
      padding-left: 250px;
   }
   #wrapper.toggled-2 #page-content-wrapper {
      position: relative;
      margin-right: 0;
      margin-left: -200px;
      -webkit-transition: all 0.5s ease;
      -moz-transition: all 0.5s ease;
      -o-transition: all 0.5s ease;
      transition: all 0.5s ease;
      width: auto;
   }
}
.d-inline-flex {
    display: inline-flex;
}
.d-flex {
    display: flex;
}

.justify-content-end {
    justify-content: flex-end;
}


</style>
<style>
	.dropdown {
  position: relative;
  display: inline-block;
}

/* Style the button that will trigger the dropdown */
.dropdown-button {
  background-color: #3498db;
  color: white;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
}

/* Style the dropdown menu */
.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  background-color: #f9f9f9;
  min-width: 160px;
  z-index: 1;
  display: none; /* Hide the dropdown menu by default */
}

/* Style the dropdown menu items */
.dropdown-menu a {
  display: block;
  padding: 10px 20px;
  text-decoration: none;
  color: #333;
}

/* Change color of dropdown menu items on hover */
.dropdown-menu a:hover {
  background-color: #ddd;
}

/* Show the dropdown menu when the button is hovered over */
.dropdown:hover .dropdown-menu {
  display: block;
}
#addform{
	display:none;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
 
   <div id="wrapper">
 
      <div id="sidebar-wrapper">
         <ul class="sidebar-nav nav-pills nav-stacked" id="menu">
            <li>
               <div class="dropdown">
  <button class="dropdown-button">Dropdown</button>
  <div class="dropdown-menu">
    <button onclick="add();"><a href="#">Item 1</a></button>
    <a href="#">Item 2</a>
    <a href="#">Item 3</a>
  </div>
</div>
            </li>
         </ul>
      </div>
      <div id="page-content-wrapper" style="background-color:green;">
      	<div style="margin-bottom:20px; background-color:red;">
      		<nav class="navbar navbar-default no-margin" style="background-color:white;">
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <ul class="nav navbar-nav">
            <li class="active">
               <button class="navbar-toggle collapse in" style="background-color:white; border-width:0;"data-toggle="collapse" id="menu-toggle-2">
                  <i class="fa fa-bars" style="font-size: 18px;"></i>
               </button>
            </li>
            <div class="d-inline-flex">
            <li>
            	<button class="navbar-toggle collapse in" style="margin-left:800px; background-color:white; border-width:0;"data-toggle="collapse" id="menu-toggle-2">
					<i class="bi bi-bell"></i>             
				</button>
            </li>
            
            <li>
            	<button class="navbar-toggle collapse in" style="background-color:white;  border-width:0;"data-toggle="collapse" id="menu-toggle-2">
                  <a>Logout</a>
               </button>
            </li>
           
            </div>
         </ul>
      </div>
   </nav>
      	</div>
      	<div style="margin-bottom:20px; background-color:blue;" id="welcome">
      		<h1>hello</h1>
      	</div>
      	<div style="margin-bottom:20px; background-color:blue;" id="addform">
      			<jsp:include page="addDetails.jsp"></jsp:include>
      	</div>
      </div>

           <script>
   	function add(){
   		document.getElementById("welcome").style.display="none";
   		document.getElementById("addform").style.display="block";
   	}
   </script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
$("#menu-toggle").click(function(e) {
   e.preventDefault();
   $("#wrapper").toggleClass("toggled");
});
$("#menu-toggle-2").click(function(e) {
   e.preventDefault();
   $("#wrapper").toggleClass("toggled-2");
   $('#menu ul').hide();
});

function initMenu() {
   $('#menu ul').hide();
   $('#menu ul').children('.current').parent().show();
   $('#menu li a').click(
      function() {
         var checkElement = $(this).next();
         if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
            return false;
         }
         if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
            $('#menu ul:visible').slideUp('normal');
            checkElement.slideDown('normal');
            return false;
         }
      }
   );
}
$(document).ready(function() {
   initMenu();
});
</script>
</body>
</html>
<%-- <nav class="navbar navbar-default no-margin" style="background-color:white;">
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <ul class="nav navbar-nav">
            <li class="active">
               <button class="navbar-toggle collapse in" style="background-color:white; border-width:0;"data-toggle="collapse" id="menu-toggle-2">
                  <i class="fa fa-bars" style="font-size: 18px;"></i>
               </button>
            </li>
            <div class="d-inline-flex">
            <li>
            	<button class="navbar-toggle collapse in" style="margin-left:800px; background-color:white; border-width:0;"data-toggle="collapse" id="menu-toggle-2">
					<i class="bi bi-bell"></i>             
				</button>
            </li>
            
            <li>
            	<button class="navbar-toggle collapse in" style="background-color:white;  border-width:0;"data-toggle="collapse" id="menu-toggle-2">
                  <a>Logout</a>
               </button>
            </li>
           
            </div>
         </ul>
      </div>
   </nav>
   </div>
      <div class=""  id="welcome">
               	<h3 style="color:#0051aa; margin:0px">Welcome..!</h3>
               </div>
        
         <div id="addform">
               	<jsp:include page="addDetails.jsp"></jsp:include>
               </div>
      </div>
   </div>
 --%>