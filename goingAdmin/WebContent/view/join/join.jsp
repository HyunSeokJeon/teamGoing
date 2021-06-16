<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<h3>회원가입</h3>

<form name="joinForm" action="<%=request.getContextPath()%>/join.go" method="post">

아이디 : <input type="text" name="id" value="${param.id}"> <br>
<c:if test="${errors.id}">ID를 입력하세요.</c:if>
	<c:if test="${errors.duplicateId}">이미 사용중인 아이디입니다.</c:if>
비밀번호 : <input type="password" name="password"> <br>
<c:if test="${errors.password}">비밀번호를 입력하세요.</c:if>
비밀번호 재확인 : <input type="password" name="repassword"> <br>
<c:if test="${errors.repassword}">확인을 입력하세요.</c:if>
	<c:if test="${errors.notMatch}">암호와 확인이 일치하지 않습니다.</c:if>
이름 : <input type="text" name="name"> <br>
<c:if test="${errors.name}">이름을 입력하세요.</c:if>
<!--  		<input type="text" name="birthday1">년<input type="text" name="birthday2">월<input type="text" name="birthday3">일<br>-->
생일 :		<select name = "birthday1">
					<option value = "1980">1980</option> <option value = "1981">1981</option> <option value = "1982">1982</option> <option value = "1983">1983</option>
					<option value = "1984">1984</option> <option value = "1985">1985</option> <option value = "1986">1986</option> <option value = "1987">1987</option>
					<option value = "1988">1988</option> <option value = "1989">1989</option> <option value = "1990">1990</option> <option value = "1991">1991</option>
					<option value = "1992">1992</option> <option value = "1993">1993</option> <option value = "1994">1994</option> <option value = "1995">1995</option>
					<option value = "1996">1996</option> <option value = "1997">1997</option> <option value = "1998">1998</option> <option value = "1999">1999</option>
					<option value = "2000">2000</option> <option value = "2001">2001</option> <option value = "2002">2002</option> <option value = "2003">2003</option>
			</select>
			
			<select name = "birthday2">
					<option value = "1">1</option><option value = "2">2</option><option value = "3">3</option><option value = "4">4</option>
					<option value = "5">5</option><option value = "6">6</option><option value = "7">7</option><option value = "8">8</option>
					<option value = "9">9</option><option value = "10">10</option><option value = "11">11</option><option value = "12">12</option>
			</select>
			
			<select name = "birthday3">
					<option value = "1">1</option><option value = "2">2</option><option value = "3">3</option><option value = "4">4</option>
					<option value = "5">5</option><option value = "6">6</option><option value = "7">7</option><option value = "8">8</option>
					<option value = "9">9</option><option value = "10">10</option><option value = "11">11</option><option value = "12">12</option>
					<option value = "13">13</option><option value = "14">14</option><option value = "15">15</option><option value = "16">16</option>
					<option value = "17">17</option><option value = "18">18</option><option value = "19">19</option><option value = "20">20</option>
					<option value = "21">21</option><option value = "22">22</option><option value = "23">23</option><option value = "24">24</option>
					<option value = "25">25</option><option value = "26">26</option><option value = "27">27</option><option value = "28">28</option>
					<option value = "29">29</option><option value = "30">30</option><option value = "31">31</option>
				
			</select><br>			
			
성별 : <input type="radio" name="gender" value="M"> 남자 
		<input type="radio" name="gender" value="W"> 여자 <br>
이메일 : <input type="text" name="email1">@  
				<select name = "email2">
					<option value = "naver.com">naver.com</option>
					<option value = "gmail.com">gmail.com</option>
					<option value = "daum.net">daum.net</option> 
				</select><br>
전화번호 : <input type = "text" name="phonenum"> <br>
우편번호 : <input type="text"	name="addresscod1"> <br>
주소1 : <input type = "text" name="address1" placeholder="도로명주소">

주소2 : <input type = "text" name="address2" placeholder="상세주소"> <br>
추천인 : <input type = "text" name="recommender"> <br>

<input type="submit" value="가입">

</form>

</body>
</html>