'use strict'

let sock = new SockJS(socket);

sock.onmessage = onMessage;

sock.onclose = onClose;

const time = new Date();

let dayOfTheWeek = {
	0:'Sunday',
	1:'Monday',
	2:'Tuesday',
	3:'Wednesday',
	4:'Thursday',
	5:'Friday',
	6:'Saturday',
}

document.getElementById("nowday").innerHTML = `
${time.getFullYear()}년 ${time.getMonth() + 1}월 ${time.getDate()}일, ${dayOfTheWeek[time.getDay()]}`;

document.getElementById("sendBtn").addEventListener("click", function(e){
	console.log("send message...");
	sendMessage();
	e.preventDefault();
	document.getElementById("message").value = "";
})

function sendMessage(){
	const messageTag = document.getElementById("message");
	sock.send(messageTag.value);
}



function onMessage(event){
	let data = event.data;
	let sessionid = null;
	let message = null;
	
	// 문자열 split
	let strArray = data.split('|');
	
	for(let i=0; i < strArray.length; i++){
		console.log(`str[${i}] : ${strArray[i]}`);
	}
	//current session id 
	let currentSessionId = document.getElementById("sessionuserid").value;
	console.log('current session id: ' + currentSessionId);
	
	sessionid = strArray[0]; //현재 메세지를 보낸 사람의 세션 등록//
	message = strArray[1]; //현재 메세지를 저장//
	
	const messageBox = document.getElementById("messageBox");
	let nowTime = new Date();
	//나와 상대방이 보낸 메세지를 구분하여 영역을 나눈다.//
	if(sessionid == currentSessionId){
		let printHTML = `<div class="message-row message-row--own">
		        <div class="message-row__content">
		          <div class="message__info">
		            <span class="message__bubble">${message}</span>
		            <span class="message__time">${nowTime.getHours()}:${nowTime.getMinutes()<10?'0'+nowTime.getMinutes():nowTime.getMinutes()}</span>
		          </div>
		        </div>
		      </div>`;
		messageBox.innerHTML += printHTML;
		
	} else{
		let printHTML = `<div class="message-row">
		        <img src="https://avatars.githubusercontent.com/u/26053477?s=460&v=4" />
		        <div class="message-row__content">
		          <span class="message__author">${sessionid}</span>
		          <div class="message__info">
		            <span class="message__bubble">${message}</span>
		            <span class="message__time">${nowTime.getHours()}:${nowTime.getMinutes()<10?'0'+nowTime.getMinutes():nowTime.getMinutes()}</span>
		          </div>
		        </div>
		      </div>`;
		messageBox.innerHTML += printHTML;
	}
	
	console.log('chatting data: ' + data);
	
  	/* sock.close(); */
}

function onClose(event){
	document.getElementById("chatdata").append("연결 끊김");
}

















