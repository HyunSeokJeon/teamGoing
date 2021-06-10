<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/view/common/header.jspf"%>

<p style="font-size: 50px;">FAQ</p>
<br>

<table class="type01">
	<tr>
		<td width="150px" align="center"><a href="">전체</a></td>
		<td width="150px" align="center"><a href="">회원정보</a></td>
		<td width="150px" align="center"><a href="">사이트이용</a></td>
		<td width="150px" align="center"><a href="">제품문의</a></td>
	</tr>
	<tr>
		<td width="150px" align="center"><a href="">결제</a></td>
		<td width="150px" align="center"><a href="">환불</a></td>
		<td width="150px" align="center"><a href="">오류문의</a></td>
	</tr>
</table>

<table class="type04">
	<tr>
		<td>
			<div onclick="display('content1')">
				비밀번호, 핸드폰번호, 이메일 주소를 변경하고 싶습니다.<span class="arrow">▼</span>
				<div class='content' id="content1" style="display: none;">어쩌고 저쩌고</div>
			</div>
		</td>
	</tr>

	<tr>
		<td>
			<div onclick="display('content2')">
				환불규정을 알고싶습니다<span class="arrow">▼</span>
				<div class='content' id="content2" style="display: none;">어쩌고 저쩌고 블라블라</div>
			</div>
		</td>
	</tr>
	
	<tr>
		<td>
			<div onclick="display('content3')">
				이메일 회원가입이 되지 않습니다.<span class="arrow">▼</span>
				<div class='content' id="content3" style="display: none;">블라블라</div>
			</div>
		</td>
	</tr>

</table>


<script type="text/javascript">
  var contents = document.querySelectorAll('.content');

  function display(id) {
    [...contents].forEach((content) => {
      if (content.id !== id) {
        content.style.display = "none";
        content.previousElementSibling.innerHTML = '▼';
      }
    });
    var element = document.getElementById(id);
    if (element.style.display === 'block') {
      element.style.display = 'none';
      element.previousElementSibling.innerHTML = '▼';
    } else {
      element.style.display = 'block';
      element.previousElementSibling.innerHTML = '▲';
    }
  }

</script>







<style>
table.type01 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	margin: 20px 10px;
	background-color: white;
}

table.type01 th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border: 1px solid #ccc;
}

table.type01 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border: 1px solid #ccc;
}

table.type04 {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 20px 10px;
}

table.type04 th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

table.type04 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background-color: white;
}
</style>



<%@ include file="/view/common/footer.jspf"%>