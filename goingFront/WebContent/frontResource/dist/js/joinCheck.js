/**
 * 
 */
'use strict'
let idtest;
let passtest;


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
	console.log(document.getElementById("inputId"))
	let inputId = document.getElementById("inputId").value;
	let httpRequest;
	if (window.XMLHttpRequest) { // 모질라, 사파리, IE7+ ...
		httpRequest = new XMLHttpRequest();
	} else if (window.ActiveXObject) { // IE 6 이하
		httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}

	
	

	httpRequest.open('POST', `/goingFront/idCheck.go?inputId=${inputId}`, true);

	httpRequest.onreadystatechange = function(){
		if( httpRequest.readyState=== XMLHttpRequest.DONE){
			if(httpRequest.status === 200){
				if(httpRequest.responseText === "true"){
					alert("사용가능한 아이디입니다.");
				}else if(httpRequest.responseText === "false"){
					alert("사용불가능한 아이디입니다.");
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
	console.log(password);
	console.log(repassword);
	const repassConfirmTag = document.getElementById("repassConfirm");
	if (password.value === repassword.value){
		repassConfirmTag.style = "color:blue; font-size:11px;";
		repassConfirmTag.innerText = '비밀번호가 일치합니다.';
	}else{
		repassConfirmTag.style = "color:red; font-size:11px;";
		repassConfirmTag.innerText = "비밀번호가 일치하지 않습니다.";
	}
}


