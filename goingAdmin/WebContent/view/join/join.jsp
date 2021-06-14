<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원가입</h3>

<form action="join.do" method="post">

아이디 : <input type="text" name="id"> <br>
비밀번호 : <input type="password" name="password"> <br>
비밀번호 재확인 : <input type="password" name="repassword"> <br>
이름 : <input type="text" name="name"> <br>
생일 : <input type="text" name="birthday"> <br>

성별 : <input type="radio" name="gender" value="m"> 남자 
		<input type="radio" name="gender" value="w"> 여자 <br>
이메일 : <input type="text" name="email"> <br>
전화번호 : <input type = "text" name="phonenum"> <br>
우편번호 : <input type="text"	name="addresscod1"> <br>
주소1 : <input type = "text" name="address1" placeholder="도로명주소">

주소2 : <input type = "text" name="address2" placeholder="상세주소"> <br>
추천인 : <input type = "text" name="recommender"> <br>

<input type="submit" value="가입">
	


</form>

</body>
</html>