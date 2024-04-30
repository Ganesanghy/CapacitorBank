<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Shifting Details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<style>
* {
    font-family: 'Poppins', sans-serif;
}
.h3 {
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
.kv{
    display:none;
}
.EHT{
	display:none;
}
.yes{
	display:none;
}
.review{
	display:none;
}
.date{
	display:none;
}
</style>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-12 head">
            <div class="px-2 d-flex justify-content-between">
                <h3 class="mt-3 h3">Capacitor Bank</h3>
                <h6 class="mt-3 pt-2 "><span style="color:#007aff">Capacitor Bank</span> <span style="color:#8f9298"> / Add Details</span></h6>
            </div>
            <div class="p-3">
                <div class="card">
                    <div class="card-header bg-primary"><h6 class="ml-3 mt-2 text-white">Add Shifting Details</h6></div>
                    <div class="card-body">
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="circle" style="color:#007aff; font-weight:bold">Circle</label>
                                <select class="custom-select" id="circle">
                                    <option selected>Select</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>

                             <div class="form-group col-md-6">
                                <label for="div" style="color:#007aff; font-weight:bold">Division</label>
                                <select class="custom-select" id="div">
                                    <option selected>Select</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="nofficer" style="color:#007aff; font-weight:bold">Name of the officer</label>
                                <input type="text" class="form-control" id="nofficer" placeholder="Name of The Officer">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="urban" style="color:#007aff; font-weight:bold">Name of the 33/11KV S.S in Urbal Area Having Capacitor Bank And Not Needed</label>
                                <select class="custom-select" id="urban">
                                    <option selected>Select</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                            <div class="form-grop col-md-6">
                                <label for="33kvss" class="d-block" style="color:#007aff; font-weight:bold">Name of the 33KV Feeder to Which The S.S under Connected</label>
                               <select class="custom-select" id="33kvss">
                                    <option selected>Select</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="powerfactor" style="color:#007aff; font-weight:bold">Power Factor on the feeder</label>
                                <input type="text" class="form-control" id="powerfactor">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="division" style="color:#007aff; font-weight:bold">Division</label>
                                <select class="custom-select" id="divsion">
                                    <option selected></option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="rural" style="color:#007aff; font-weight:bold">Name of the 33/11KV S.S in Rural Area Having Capacitor Bank And Not Needed</label>
                                <select class="custom-select" id="rural">
                                    <option selected>Select</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                            
                            <div class="form-grop col-md-6">
                                <label for="33/11kvss" class="d-block" style="color:#007aff; font-weight:bold">Name of the 33/11KV Feeder to Which The Sub-Station under Connected</label>
                               <select class="custom-select" id="33/11kvss">
                                    <option selected>Select</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                            
                            <div class="form-group col-md-6">
                                <label for="powerfactor" style="color:#007aff; font-weight:bold">Power Factor on the feeder</label>
                                <input type="text" class="form-control" id="powerfactor">
                            </div>
                            
                            <div class="form-group col-md-6">
                                <label for="esan" style="color:#007aff; font-weight:bold">Estimate Sanction Number</label>
                                <input type="text" class="form-control" id="esan">
                            </div>
                            
                            <div class="form-group col-md-6">
                                <label for="pshift" style="color:#007aff; font-weight:bold">Program For Shifting</label>
                                <input type="text" class="form-control" id="pshift">
                            </div>
                            
                            <div class="form-group col-md-4 ">
                            	<label for="month" style="color:#007aff; font-weight:bold">Month</label>
                            	<input type="month" class="form-control">
                            </div>
                            
                            <div class="form-group col-md-4 ">
                            	<label for="date" style="color:#007aff; font-weight:bold">Date Of Completion</label>
                            	<input type="date" class="form-control">
                            </div>
                            
                            <div class="form-grop col-md-4">
                                <label for="status" class="d-block" style="color:#007aff; font-weight:bold">Status</label>
                               <select class="custom-select" id="status">
                                    <option selected>Select</option>
                                    <option value="1">Completed</option>
                                    <option value="2">Work Under Process</option>
                                    <option value="3">Not Started</option>
                                </select>
                            </div>
                            
                        </div>
                        <div class="form-group row text-center">
                           <div class="col">
                               <button type="button" class="btn btn-primary">Save</button>
                               <button type="button" class="btn btn-success">Reset</button>
                           </div>
                        </div>
                     </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
    $('input[name="inlineRadioOptions"]').change(function(){
        var val = $('input[name="inlineRadioOptions"]:checked').val();
    
        if(val == "33kv"){
            $(".kv").show();
            $(".EHT").hide(); 
        } else if(val == "EHT"){
            $(".EHT").show();
            $(".kv").hide();
        } else {
            $(".kv").hide();
            $(".EHT").hide();
        }
    });
    $('input[name="yesOrno"]').change(function(){
        var val = $('input[name="yesOrno"]:checked').val();
        if(val == "yes"){
            $(".yes").show();
        }  else {
            $(".yes").hide();
        }
    });
    $('input[name="workstatus"]').change(function(){
        var val = $('input[name="workstatus"]:checked').val();
        if(val == "wwdc" || val == "notwork" || val == "lowcap"){
            $(".review").show();
            $(".date").hide();
        }  else if(val == "notopr"){
        	$(".review").show();
        	$(".date").show();
        }else {
            $(".review").hide();
            $(".date").hide();
        }
    });
});
</script>
</body>
</html>