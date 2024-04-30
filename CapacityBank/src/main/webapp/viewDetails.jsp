<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.custom-table {
	background-color: #f0f2f5;
}

.custom-th {
	color: #2469b5;
	font-size: 14px;
	text-align: center;
	white-space: nowrap;
	min-width: 120px;
}

.arrow-icons i {
	font-size: 8px;
}

.fixed-pagination {
	position: fixed;
	bottom: 0;
	left: 0;
	width: 100%;
	background-color: #fff;
	border-top: 1px solid #ccc;
	z-index: 9999; /* Adjust z-index as needed */
}
.head{
    padding:0px;
    background-color:#f5f6fa;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
<title>View Capacitor Bank Details</title>
</head>
<body>
	
<div class="container-fluid">
	<div class="row">
		<div class="col-12 head">
			<div class="px-2 d-flex justify-content-between">
                <h2 class="mt-3 h2">Capacitor Bank</h2>
                <h6 class="mt-3 pt-2 "><span style="color:#007aff">Capacitor Bank</span> <span style="color:#8f9298"> / Add Details</span></h6>
            </div>
            <div class="p-3">
                <div class="card">
                    <div class="card-header bg-primary"><h6 class="ml-3 mt-2 text-white">View Capacitor Bank Details</h6></div>
                    <div class="card-body">
                    	<div class="d-inline-flex">
							<div>
								<button class="btn btn-light px-3">PDF</button>
							</div>
							<div class="ml-2">
								<button class="btn btn-light px-3">Excel</button>
							</div>
							<div style="margin-left: 620px">
								<form class="form-inline">
									<lable class="pr-3">Search:</lable>
									<input class="form-control mr-sm-2" type="search"
										placeholder="Search" aria-label="Search">
								</form>
							</div>
						</div>
						<div class="table-responsive mt-3">
						  <table class="table table-striped table-bordered table-hover custom-table">
						    <thead>
						      <tr>
						  		<th class="text-center custom-th" data-column="circle">Circle <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="division">Division <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="sub-division">Sub-Division <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="section">Section <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="sub-station">Sub-Station <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="feeder">Name of 33KV Feeder For Which SS connected <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="eht-ss">Name of EHT SS From <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="capacitor-available">Capacitor Available or Not <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="capacitor-type">Capacitor Bank Type <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="capacitor-make">Capacitor Bank Make <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="capacitor-status">Capacitor Working Status <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="capacitor-capacity">Capacitor Bank Capacity(MVAR) <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="view-edit">View & Edit <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
								<th class="text-center custom-th" data-column="delete">Delete <span class="arrow-icons"><i class="bi bi-arrow-up"></i><i class="bi bi-arrow-down"></i></span>
								</th>
							</tr>
						</thead>
						    <!-- Table Body -->
						    <tbody class="text-center">
						      		<tr>
						                <td class="text-primary">Circle 1</td>
						                <td class="text-primary">Division A</td>
						                <td class="text-primary">Sub-Division X</td>
						                <td class="text-primary">section A</td>
						                <td class="text-primary">sub-station 2</td>
						                <td class="text-primary">Feeder A</td>
						    			<td class="text-primary">EHT SS Alpha</td>
						    			<td class="text-primary">Yes</td>
						    			<td class="text-primary">Type A</td>
						    			<td class="text-primary">Make X</td>
						    			<td class="text-primary">Working</td>
						    			<td class="text-primary">5</td>
						    			<td><i class="bi bi-pencil-square text-primary"></i></td>
						    			<td><i class="bi bi-trash-fill text-primary"></i></td>
						
						            </tr>
						             <tr>
						                <td class="text-primary">Circle 2</td>
						                <td class="text-primary">Division B</td>
						                <td class="text-primary">Sub-Division Y</td>
						                <td class="text-primary">section b</td>
						                <td class="text-primary">sub-station 3</td>
						                <td class="text-primary">Feeder B</td>
						    			<td class="text-primary">33KV</td>
						    			<td class="text-primary">Yes</td>
						    			<td class="text-primary">Type B</td>
						    			<td class="text-primary">Make Y</td>
						    			<td class="text-primary">Working</td>
						    			<td class="text-primary">8</td>
						    			<td><i class="bi bi-pencil-square text-primary"></i></td>
						    			<td><i class="bi bi-trash-fill text-primary"></i></td>
						            </tr>
						            <tr>
						            	<td class="text-primary">Circle 3</td>
						    			<td class="text-primary">Division B</td>
						    			<td class="text-primary">Sub-Division Y</td>
						    			<td class="text-primary">Section 2</td>
						    			<td class="text-primary">Sub-Station 2</td>
						    			<td class="text-primary">Feeder B</td>
						    			<td class="text-primary">EHT SS Beta</td>
						    			<td class="text-primary">No</td>
						    			<td class="text-primary">Type B</td>
						    			<td class="text-primary">Make Y</td>
						    			<td class="text-primary">Not Working</td>
						    			<td class="text-primary">8</td>
						    			<td><i class="bi bi-pencil-square text-primary"></i></td>
						    			<td><i class="bi bi-trash-fill text-primary"></i></td>
						    		</tr>
						    </tbody>
						  </table>
                    </div>
                </div>
             </div>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
<!-- <div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<div class="px-2 d-flex justify-content-between">
					<h3 class="mt-3">Capacitor Bank</h3>
					<h6 class="mt-3 pt-2 ">
						<span style="color: #007aff">Capacitor Bank</span> <span
							style="color: #8f9298"> / Add Details</span>
					</h6>
				</div>
				<div class="card">
					<div class="card-header bg-primary" style="padding: 0;">
						<h6 class="ml-3 mt-2 p-2 font-weight-bold text-white">View
							Capacitor Bank Details</h6>
					</div>
					<div class="card-body">
						<div class="d-inline-flex">
							<div>
								<button class="btn btn-light px-3">PDF</button>
							</div>
							<div class="ml-2">
								<button class="btn btn-light px-3">Excel</button>
							</div>
							<div style="margin-left: 910px">
								<form class="form-inline">
									<lable class="pr-3">Search:</lable>
									<input class="form-control mr-sm-2" type="search"
										placeholder="Search" aria-label="Search">
								</form>
							</div>
						</div>
						
					</div>
				</div>
				</div>
				</div>
				</div> -->