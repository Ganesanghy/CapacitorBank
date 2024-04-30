<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>User DashBoard</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <link href="./style/css/nav.css" rel="stylesheet">
</head>
<body>
	<div class="wrapper">
		<!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h5 class="text-center">Capacitor Bank</h5>
            </div>
			<% 
				String uname = (String) request.getAttribute("uname");
				
			%>
            <ul class="list-unstyled components" style="padding:0">
                <p class="text-center"><i class="bi bi-person-fill"></i><%= uname %></p>
                <li>
                	
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Capacitor Bank</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <button onclick="addform();" style="border-width:0; padding:0; margin-left:25px"><a href="#"> <%-- CircleFormServlet?uname=<%=uname%> --%><i class="bi bi-circle"></i> Add Details</a></button>
                        </li>
                        <li>
                            <button onclick="viewDetails();" style="border-width:0; padding:0; margin-left:25px"><a href="#"><i class="bi bi-circle"></i> View Details</a></button>
                        </li>
                        <li>
                            <button onclick="addShift();" style="border-width:0; padding:0; margin-left:25px"><a href="#"><i class="bi bi-circle"></i> Add Shifting</a></button>
                        </li>
                        <li>
                            <button onclick="" style="border-width:0; padding:0; margin-left:25px"><a href="#"><i class="bi bi-circle"></i> View Shifting</a></button>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">Meter Master</a>
                </li>
            </ul>
        </nav>
		
        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-white">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" style="background-color:white; border-width:0;">
                        <i class="fa fa-bars text-muted" style="font-size: 20px;"></i>
                        <span></span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="#" style="margin-top:4px;"><i class="bi bi-bell"></i></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div id="hide" class="m-3"><h3 class="text-primary">Welcome..!</h3></div>
            <div id="shift" style="display:none;"><jsp:include page="addshift.jsp"></jsp:include></div>
            <div id="show" style="height:100%">
           		<iframe src="http://localhost:8019/CapacityBank/addDetails.jsp" style="width:100%; height:100%; border:0"></iframe>
            	<%-- <jsp:include page="addDetails.jsp"></jsp:include> --%>
            </div>
            <div id="view"><jsp:include page="viewDetails.jsp"></jsp:include></div>
        </div>
    </div>
    <script>
    $(document).ready(function () {
        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
        });
    });
     <%-- function addform(){
        $("#hide").css("display", "none");
        $("#view").css("display", "none");
        $("#shift").css("display", "none");
        $("#show").css("display", "block");
        
        var username = <%= uname %>;
        $.ajax({
            type : 'GET',
            url : 'CircleFormServlet',
            data : { uname: username },
            success : function(data) {
            	alert("hello");
            },
            error : function(xhr, status, error) {
                $('#message').text('CircleServlet Error');
            }
        });
    }  --%>
     function addform(){
		document.getElementById("hide").style.display = "none";
		document.getElementById("view").style.display = " none";
		document.getElementById("shift").style.display ="none";
		document.getElementById("show").style.display = " block";
	} 
function viewDetails(){
		document.getElementById("hide").style.display = "none";
		document.getElementById("show").style.display = " none";
		document.getElementById("shift").style.display ="none";
		document.getElementById("view").style.display = " block";
	}
	function addShift(){
		document.getElementById("hide").style.display = "none";
		document.getElementById("show").style.display = "none";
		document.getElementById("view").style.display = "none";
		document.getElementById("shift").style.display ="block";
	}
    </script>
</body>
</html>