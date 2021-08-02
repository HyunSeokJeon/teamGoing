/**
 * 
 */
'use strict'
let idtest = false;
let idtest2 = false;
let passtest = false;
let passtest2 = false;



let formPass = false;

document.getElementById("joinForm").addEventListener("submit", (event)=>{
	let nametest = isFilled("name");
	let email1test = isFilled("email1");
	let phonenumtest = isFilled("phonenum");
	let addresscod1 = isFilled("addresscod1");
	let address1 = isFilled("address1");
	let address2 = isFilled("address2");
	if (idtest && idtest2 
		&& passtest && passtest2
		&& nametest && email1test
		&& phonenumtest && addresscod1
		&& address1 && address2){

		}else{
			alert("입력값을 채워주세요!");
			event.preventDefault();
		}
	

});

document.getElementById("inputId").addEventListener("keyup", () =>{
	const idTag = document.getElementById("inputId");
	const idConfirmTag = document.getElementById("idConfirm");
	const regexp = new RegExp('[0-9a-zA-Z!@#]{5,12}');
	idtest = regexp.test(idTag.value);
	if(idtest){
		idConfirmTag.style = "color:blue; font-size:11px;";
		idConfirmTag.innerText = '사용가능한 아이디입니다.';
	}else{
		idConfirmTag.style = "color:red; font-size:11px;";
		idConfirmTag.innerText = '사용불가능한 아이디입니다.';
	}
});


document.getElementById("idCheck").addEventListener('click', function(){
	if(idtest){
		idCheck();
	}else{
		alert("아이디 형식을 확인해주세요!");
	}
	
});
function idCheck(){
	let inputId = document.getElementById("inputId").value;
	let httpRequest;

	if (window.XMLHttpRequest) { // 모질라, 사파리, IE7+ ...
		httpRequest = new XMLHttpRequest();
	} else if (window.ActiveXObject) { // IE 6 이하
		httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}

	httpRequest.open('POST', `/customer/idCheck?customerId=${inputId}`, true);

	httpRequest.onreadystatechange = function(){
		if( httpRequest.readyState=== XMLHttpRequest.DONE){
			if(httpRequest.status === 200){
				if(httpRequest.responseText === "true"){
					alert("사용가능한 아이디입니다.");
					idtest2 = true;
				}else if(httpRequest.responseText === "false"){
					alert("사용불가능한 아이디입니다.");
					idtest2 = false;
				}
			}
		}
	};
	httpRequest.send();
}



document.getElementById("password").addEventListener('keyup', function(){
	const regexp = new RegExp("[0-9a-zA-Z!@#$%^&*()_]{10,20}");
	const passConfirmTag = document.getElementById("passConfirm");
	passtest=regexp.test(document.getElementById("password").value);
	if(passtest){
		passConfirmTag.style = "color:blue; font-size:11px;";
		passConfirmTag.innerText = '사용가능한 비밀번호입니다.';
		if(notNull(document.getElementById("repassword").value)){
			passwordcheck();
		}
	}else{
		passConfirmTag.style = "color:red; font-size:11px;";
		passConfirmTag.innerText = '비밀번호형식에 맞지않습니다.';
	}
});
document.getElementById("repassword").addEventListener('keyup', passwordcheck)

function notNull(str){
	let result;
	if(str !== "" || str!== null){
		result = true;
	}else{
		result = false;
	}
	return result;
}
function passwordcheck(){
	const password = document.getElementById("password");
	const repassword = document.getElementById("repassword");
	const repassConfirmTag = document.getElementById("repassConfirm");
	if (password.value === repassword.value){
		repassConfirmTag.style = "color:blue; font-size:11px;";
		repassConfirmTag.innerText = '비밀번호가 일치합니다.';
		passtest2=true;
	}else{
		repassConfirmTag.style = "color:red; font-size:11px;";
		repassConfirmTag.innerText = "비밀번호가 일치하지 않습니다.";
		passtest2=false;
	}
}

function clickAction(tag, event1, event2){
	tag.addEventListener(event1, goPopup);
	tag.addEventListener(event2, goPopup);
}

clickAction(document.getElementById("addresscod1"), "click", "focus");
clickAction(document.getElementById("address1"), "click", "focus");



function isFilled(inputTagId){
	let value = document.getElementById(inputTagId).value;
	if(value.trim()!=="" && value.trim()!==null){
		return true;
	}else{
		return false;
	}
}















generateYear(document.getElementById("birthday1"));
generateMonth(document.getElementById("birthday2"));
generateDay(document.getElementById("birthday3"), 31);



function generateYear(tag, base='0') {
  for (let i = 1920; i < 2022; i++) {
	if (i==base){
		tag.innerHTML += `<option value="${i}" selected>${i}</option>`;
		continue;
	}
    tag.innerHTML += `<option value="${i}">${i}</option>`;
  }
}

function generateMonth(tag, base='0') {
  for (let i = 1; i <= 12; i++) {
	if (i==base){
		tag.innerHTML += `<option value="${i}" selected>${i}</option>`;
		continue;
	}
    tag.innerHTML += `<option value="${i}">${i}</option>`;
  }
}

function generateDay(tag, day, base='0') {
  for (let i = 1; i <= day; i++) {
	if (i==base){
		tag.innerHTML += `<option value="${i}" selected>${i}</option>`;
		continue;
	}
    tag.innerHTML += `<option value="${i}">${i}</option>`;
  }
}

function dateChange2(tag){
	let temp = tag.getAttribute("id");
	console.log(temp.split("_"));
}
function dateChange(tag) {
  let temp = tag.getAttribute("id");
  let tagName = temp.substr(0, temp.length - 1);
  let tagYear = document.getElementById(`${tagName}1`);
  let tagMonth = document.getElementById(`${tagName}2`);
  let tagDay = document.getElementById(`${tagName}3`);
  let selectedYear = tagYear.options[tagYear.selectedIndex].value;
  let selectedMonth = tagMonth.options[tagMonth.selectedIndex].value;
  let day;
  let i;
  switch (selectedMonth) {
    case "2":
      if ((selectedYear % 4 === 0 && selectedYear % 100 !== 0) || selectedYear % 400 === 0) {
        day = 29;
      } else {
        day = 28;
      }
      break;
    case "1":
    case "3":
    case "5":
    case "7":
    case "8":
    case "10":
    case "12":
      day = 31;
      break;
    case "4":
    case "6":
    case "9":
    case "10":
      day = 30;
      break;
  }
  tagDay.innerHTML = "";
  for (i = 1; i <= day; i++) {
    tagDay.innerHTML += `<option value="${i}">${i}</option>`;
  }
}