/*
 * Author: 
 * Project: H2O
 * Task: Form validation
 */

function validateForm(event) {
	var fname = document.getElementById("firstName");
	var middle = document.getElementById("middle");
	var lname = document.getElementById("lastName");
	
	// Validate first name input
	if (fname.value.trim().length === 0) {
		fname.style.borderColor = "red";
		event.preventDefault();
	} else {
		fname.style.borderColor = "white";
	}
	
	// Validate middle
	if (middle.value.trim().length === 0) {
		middle.style.borderColor = "red";	
		event.preventDefault();
	} else {
		middle.style.borderColor = "white";
	}
	
	// Validate last name input
	if (lname.value.trim().length === 0) {
		lname.style.borderColor = "red";
		event.preventDefault();
	} else {
		lname.style.borderColor = "white";
	}
} 

function pageLoad() {
	// Set middle name max-length to 1
	var m = document.getElementById("middle");
	m.setAttribute("maxlength", "1");
}

var btn_survey = document.getElementsByTagName("button")[0];
btn_survey.addEventListener("click", validateForm, false);

window.addEventListener("load", pageLoad, false);
