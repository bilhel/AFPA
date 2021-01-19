// var nom = document.getElementById("nom")
// var prenom = document.getElementById("prenom")
// var sexe1 = document.getElementById("Sexe1")
// var sexe2 = document.getElementById("Sexe2")
// var sexe3 = document.getElementById("Sexe3")
// // var ddn = document.getElementById("Date_de_naissance")
// var cp = document.getElementById("Code_Postal")
// var email = document.getElementById("Email")
// var sujet = document.getElementById("Sujet")
// var question = document.getElementById("Question")
// var submit = document.getElementById('submit');

// var missNom = document.getElementById('missNom');
// var missPrenom = document.getElementById('missPrenom');
// // var missDdn = document.getElementById('missDdn');
// var missCP = document.getElementById('missCP');
// var missEmail = document.getElementById('missEmail');
// var missQuestion = document.getElementById('missQuestion');

// var textValid = /^[a-zA-Z\-\déèàçùëüïôäâêûîô#&]+$/;
// var postalCodeValid = /^((0[1-9])|([1-8][0-9])|(9[0-8])|(2A)|(2B))[0-9]{3}$/;
// var emailValid = /[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2,4}/;

// nom.onblur = nomCheck;
// prenom.onblur = prenomCheck;
// cp.onblur = cpCheck;
// email.onblur = emaikCheck;
// sujet.onblur = sujetCheck;
// question.onblur = questionCheck;

// function nomCheck() {
//     // si le champ est vide
//     if (nom.validity.valueMissing) {
//         event.preventDefault()
//         missNom.textContent = 'Champ non renseigné';
//         missNom.style.color = 'red';
//         // test de la validité du champs de saisie
//     } else if (textValid.test(nom.value) == false) {
//         event.preventDefault();
//         missNom.textContent = 'Format incorrect';
//         missNom.style.color = 'red';
//         // si la saisie est correct
//     } else {

//         missNom.textContent = 'Ok';
//         missNom.style.color = 'green';
//     }
// };