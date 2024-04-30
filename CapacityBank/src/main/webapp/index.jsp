<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home -- Capacitor Bank</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="./style/css/index.css">
    <script type="text/javascript" src="./script/js/index.js"></script>
</head>
<body>
    <div class="container-fluid hbg">
        <div class="d-flex justify-content-around">
            <div><h2 class="mt-3 h2">Capacitor Bank</h2></div>
            <form action="SignInServlet" method="post">
                <div class="d-inline-flex mb-3 mt-2">
                    <input class="form-control mr-2" type="text" name="uname" placeholder="User Name">
                    <input class="form-control mr-2" type="password" name="pwd" placeholder="Password">
                    <button class="btn btn-primary" type="submit">SignIn</button>
                </div>
            </form>
        </div>
    </div>
    <div class="tab text-center text-white">
        <div><h3 class="pt-3">Capacitor Bank Working Status</h3></div>
        <div class="d-inline-flex pb-4 pl-5"><h6>Select Month & Year</h6><input id="date" class="ml-2 py-2 px-3 border border-white rounded" type="month"><button class="btn btn-warning ml-2" onclick="go();">Go</button><button id="all" class="btn btn-warning ml-2 show" onclick="revert();">All</button></div>
        <div class="table-container">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col" colspan="2"></th>
                        <th scope="col" colspan="6">33KV Capacitor Bank</th>
                        <th scope="col" colspan="7">11KV Capacitor Bank</th>
                        <th scope="col" colspan="2" class="bg-white"></th>
                    </tr>
                    <tr>
                        <th scope="col">Circle</th>
                        <th scope="col" class="show">Months & Year</th>
                        <th scope="col">Sub Stations</th>
                        <th scope="col">Existing</th>
                        <th scope="col">Working With Full Capacity</th>
                        <th scope="col">Working With Derated Capacity(Due To Low Loads)</th>
                        <th scope="col">Working With Derated Capacity(Due To Defective Cells)</th>
                        <th scope="col">Working With Derated Capacity WRT Loaded/Not Working</th>
                        <th scope="col">Idle</th>
                        <th scope="col">Not Working</th>
                        <th scope="col">Existing</th>
                        <th scope="col">Working With Full Capacity</th>
                        <th scope="col">Working With Derated Capacity(Due To Low Loads)</th>
                        <th scope="col">Working With Derated Capacity(Due TO Defective Cells)</th>
                        <th scope="col">Working With Derated Capacity WRT Loaded/Not Working</th>
                        <th scope="col">Idle</th>
                        <th scope="col">Not Working</th>
                        <th scope="col">SS Without Capacitor Bank</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="tr">
                        <th scope="row" class="tr">ANANTHAPUR</th>
                        <td class="mon show"></td>
                        <td></td>
                        <td>0</td>
                        <td>0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td>255</td>
                        <td>195</td>
                        <td class="font-weight-bold">8</td>
                        <td class="font-weight-bold">25</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">27</td>
                        <td class="font-weight-bold">62</td>
                    </tr>
                    <tr class="tr">
                        <th scope="row" class="tr">KADAPA</th>
                        <td class="mon show"></td>
                        <td>325</td>
                        <td>0</td>
                        <td>0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td>242</td>
                        <td>199</td>
                        <td class="font-weight-bold">4</td>
                        <td class="font-weight-bold">38</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">1</td>
                        <td class="font-weight-bold">109</td>
                    </tr>
                    <tr class="tr">
                        <th scope="row" class="tr">KURNOOL</th>
                        <td class="mon show"></td>
                        <td>252</td>
                        <td>0</td>
                        <td>0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td>169</td>
                        <td>135</td>
                        <td class="font-weight-bold">29</td>
                        <td class="font-weight-bold">5</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">131</td>
                    </tr>
                    <tr class="tr">
                        <th scope="row" class="tr">NELLORE</th>
                        <td class="mon show"></td>
                        <td>274</td>
                        <td>0</td>
                        <td>0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td>228</td>
                        <td>115</td>
                        <td class="font-weight-bold">99</td>
                        <td class="font-weight-bold">3</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">11</td>
                        <td class="font-weight-bold">39</td>
                    </tr>
                    <tr class="tr">
                        <th scope="row" class="tr">TIRUPATI</th>
                        <td class="mon show"></td>
                        <td>406</td>
                        <td>10</td>
                        <td>0</td>
                        <td class="font-weight-bold">2</td>
                        <td class="font-weight-bold">4</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">4</td>
                        <td>406</td>
                        <td>157</td>
                        <td class="font-weight-bold">25</td>
                        <td class="font-weight-bold">215</td>
                        <td class="font-weight-bold">12</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">9</td>
                        <td class="font-weight-bold">89</td>
                    </tr>
                     <tr class="">
                        <th scope="row" class="">Total</th>
                        <td class="show"></td>
                        <td class="font-weight-bold">1534</td>
                        <td class="font-weight-bold">10</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">2</td>
                        <td class="font-weight-bold">4</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">4</td>
                        <td class="font-weight-bold">1300</td>
                        <td class="font-weight-bold">801</td>
                        <td class="font-weight-bold">165</td>
                        <td class="font-weight-bold">286</td>
                        <td class="font-weight-bold">12</td>
                        <td class="font-weight-bold">0</td>
                        <td class="font-weight-bold">48</td>
                        <td class="font-weight-bold">430</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
<!--     <h6 style="font-weight:bold; color:#5e6265">Copyright &copy; <span style="color:#239cf8">APSPDCL</span> Powered by <span style="color:#239cf8">Invensis</span>.All rights reserved</h6>
 --></body>
</html>
