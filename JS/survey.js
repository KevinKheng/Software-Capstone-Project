/*
 * Author: 
 * Project: H2O
 * Task: Form validation
 */

function validateForm(event) {
	var school = document.getElementById("school");
	var eSchool = document.getElementById("eSchool");
	var grade = document.getElementById("grade");
	var eGrade = document.getElementById("eGrade");
	var age = document.getElementById("age");
	var eAge = document.getElementById("eAge");
	var gender = document.querySelectorAll("input[name='gender']");
	var error = document.getElementById("error");
	
	// Validate school input
	if (school.value.trim().length === 0) {
		school.style.borderColor = "red";
		eSchool.style.display = "block";
		event.preventDefault();
	} else {
		school.style.borderColor = "white";
		eSchool.style.display = "none";
	}
	
	// Validate grade input
	if (grade.value.trim().length === 0) {
		grade.style.borderColor = "red";
		eGrade.style.display = "block";	
		event.preventDefault();
	} else {
		grade.style.borderColor = "white";
		eGrade.style.display = "none";
	}
	
	// Validate age input
	if (age.value.trim().length === 0 || isNaN(age.value) === true) {
		age.style.borderColor = "red";
		eAge.style.display = "block";	
		event.preventDefault();
	} else {
		age.style.borderColor = "white";
		eAge.style.display = "none";
	}
	
	// Validate gender
	if (gender[0].checked === false && gender[1].checked === false && gender[2].checked === false) {
		error.removeAttribute("style");
		event.preventDefault();
	} else {
		error.setAttribute("style", "display: none;");
	}
} 

function pageLoad() {
	var err = document.getElementById("error");
	err.setAttribute("style", "display: none;")
}
// Call validateForm function to validate the form
var form = document.getElementById("surveyForm");
form.addEventListener("submit", validateForm, false);

window.addEventListener("DOMContentLoaded", pageLoad, false);


