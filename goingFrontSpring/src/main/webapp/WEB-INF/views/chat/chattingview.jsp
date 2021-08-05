<%@page import="org.going.customer.domain.CustomerVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% CustomerVo user = (CustomerVo)request.getSession().getAttribute("authUser"); %>

<html>
<head>
	<link rel="icon" type="image/png"  href="resources/images/svnicon.png"/> <!-- favicon fix -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- jQuery, bootstrap CDN -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script> <!-- msie 문제 해결 -->
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/frontResource/dist/css/kakao-styles.css" />
	<!-- Zebra-Dialog CDN -->
	<!-- SocketJS CDN -->
	<script src="https://cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>
	<script type="text/javascript">
		let socket = `<c:url value="/echo"/>`;
	</script>
	<script defer src="<%=request.getContextPath()%>/frontResource/dist/js/socket.js"></script>
	<title>Chatting page</title>
</head>
<body id="chat-screen">
    <div class="status-bar">
      <div class="status-bar__column">
        <span>No Service</span>
        <i class="fas fa-wifi"></i>
      </div>
      <div class="status-bar__column">
        <span>18:43</span>
      </div>
      <div class="status-bar__column">
        <span>
          11%
          <i class="fas fa-battery-full fa-lg"></i>
          <i class="fas fa-bolt"></i>
        </span>
      </div>
    </div>

    <header class="alt-header">
      <div class="alt-header__colume">
        <a href="chats.html">
          <i class="fas fa-angle-left fa-2x"></i>
        </a>
      </div>
      <div class="alt-header__colume">
        <h1 class="alt-header__title"><%=user.getCustomerId() %></h1>
        <input type="hidden" value='<%=user.getCustomerId() %>' id="sessionuserid">
      </div>
      <div class="alt-header__colume">
        <span>
          <i class="fas fa-search fa-lg"></i>
        </span>
        <span><i class="fas fa-bars fa-lg"></i></span>
      </div>
    </header>
    <div class="main-screen main-chat" id="messageBox">
      <div class="chat__timestamp" id="nowday"></div>
      
    </div>
    <form class="reply">
      <div class="reply__colume">
        <i class="far fa-plus-square fa-lg"></i>
      </div>
      <div class="reply__colume">
        <input type="text" id="message" placeholder="Write a message..." />
        <i class="far fa-smile-wink fa-lg"></i>
        <button id="sendBtn">
          <i class="fas fa-arrow-up"></i>
        </button>
      </div>
    </form>
    <script
      src="https://kit.fontawesome.com/f1d7a83e96.js"
      crossorigin="anonymous"
    ></script>
  </body>
<%-- <body>
	<h1>Chatting Page (id: <%=user.getCustomerId() %>)</h1>
	<div>
		<input type="button" id="chattinglistbtn" value="채팅 참여자 리스트">
	</div>
	<br>
	<div>
		<div>
			<input type="text" id="message"/>
    		<input type="button" id="sendBtn" value="전송"/>
    	</div>
    	<br>
    	<div class="well" id="chatdata">
    		<!-- User Session Info Hidden -->
    		<input type="hidden" value='<%=user.getCustomerId() %>' id="sessionuserid">
    	</div>
	</div>
</body> --%>
<script type="text/javascript">
$(function(){
	$("#chattinglistbtn").click(function(){
		var infodialog = new $.Zebra_Dialog('<strong>Message:</strong><br><br><p>채팅방 참여자 리스트</p>',{
			title: 'Chatting List',
			type: 'confirmation',
			print: false,
			width: 260,
			buttons: ['닫기'],
			onClose: function(caption){
				if(caption == '닫기'){
					//alert('yes click');
				}
			}
		});
    });
});
</script>
</html>