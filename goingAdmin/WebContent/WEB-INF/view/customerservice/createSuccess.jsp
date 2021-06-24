<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>
<script type="text/javascript">
	alert("질문,답변을 작성하였습니다.");
	location.href = "<%=request.getContextPath()%>/customerservice/readFaq.go";
</script>
</body>
</html>