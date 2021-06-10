<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/view/common/header.jspf"%>

<p style="font-size: 50px;">이용 문의</p><br>

<table class="type01">
  <tr>
		<td width="100px" align="center"><a href="">전체</a></td>
		<td width="100px" align="center"><a href="">회원정보</a></td>
		<td width="100px" align="center"><a href="">사이트이용</a></td>
		<td width="100px" align="center"><a href="">제품문의</a></td>
	<tr>
		<td width="100px" align="center"><a href="">결제</a></td>
		<td width="100px" align="center"><a href="">환불</a></td>
		<td width="100px" align="center"><a href="">오류문의</a></td>
		<td width="100px" align="center"><a href="">회원탈퇴 요청</a></td>
	</tr>
</table>

<br>
<input type="text" placeholder="제목, 내용, 작성자 검색"> <input type="submit" value="검색">

<p align="right">
<a href="" >글쓰기</a>
</p>

<table class="type04"> 
  <tr>
    <td width="10%" align="center">번호</td>
    <td width="10%" align="center">구분</td>
    <td align="center">제목</td>
    <td width="15%" align="center">작성자</td>
    <td width="20%" align="center">날짜</td>
    <td width="10%" align="center">답변여부</td>
  </tr>
  <tr>
    <td width="10%" align="center">1</td>
    <td width="10%" align="center">환불 <i class="fas fa-lock"></i></td>
    <td align="center"><a href="">환불요청</a></td>
   	<td width="15%" align="center">이윤*</td>
    <td width="20%" align="center">2021-06-07</td>
    <td width="10%" align="center">-</td>
   </tr>
  <tr>
    <td width="10%" align="center">2</td>
    <td width="10%" align="center">회원정보</td>
    <td align="center"><a href="">탈퇴가 안돼요</a></td>
    <td width="15%" align="center">이윤*</td>
    <td width="20%" align="center">2021-06-07</td>
    <td width="10%" align="center">답변완료</td>
  </tr>
</table>

<style>
table.type04 {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: left;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  margin : 20px 10px;
  background-color:white;
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
}

table.type01 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  margin : 20px 10px;
  background-color:white;
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
</style>

<%@ include file="/view/common/footer.jspf"%>