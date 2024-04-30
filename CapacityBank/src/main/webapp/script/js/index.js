
function go() {
	document.querySelectorAll(".show").forEach(element => element.style.display = 'table-cell');
	var date = document.getElementById("date").value;
	var dateObject = new Date(date);
	var options = { month: 'short', year: 'numeric' };
	var formattedDate = dateObject.toLocaleString('default', options);
	var elements = document.getElementsByClassName("mon");
	for (var i = 0; i < elements.length; i++) {
		elements[i].innerHTML = formattedDate;
	}
}
function revert() {
	document.querySelectorAll(".show").forEach(element => element.style.display = 'none');
	var elements = document.getElementsByClassName("mon");
	for (var i = 0; i < elements.length; i++) {
		elements[i].innerHTML = '';
	}
	document.querySelectorAll(".show")[1].style.display = 'none';
	document.querySelector(".show").style.display = 'inline-block';
	document.getElementById("all").style.display = "none";
}
