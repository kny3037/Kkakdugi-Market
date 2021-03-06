<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="css/findIdPw.css">
</head>
<body>
<div style="text-align: center"> 
<h3>비밀번호 찾기</h3> 
	<form method="post" action="findPw.do" > <!-- 절대경로 사용 -->
	 <div>
		<input type="text" id = "id" name="id"  placeholder="아이디" required>
		<input type="text" id = "name" name="name"  placeholder="이름" required>
		<input type="email" id = "email" name="email"  placeholder="이메일" required>
	 </div>
	 <div>	
		<input type="submit" value="비밀번호찾기">
		<input type="button" value="취소" onclick="window.close()">
	 </div>	
				<!-- 찾는 아이디가 있을때 -->
			<c:if test="${result == 0}" > 
				<div style="margin-top: 20px;">
					<p>회원가입시 사용하신 비밀번호는 [${pw}]입니다.</p>
				</div>
			</c:if>
				<!-- 찾는 아이디가 없을 때 -->
			<c:if test="${result == 1}" > 
				<div style="margin-top: 20px;">찾으시는 아이디가 없습니다.</div>
			</c:if>
	</form> 
</div>
</body>
</html>