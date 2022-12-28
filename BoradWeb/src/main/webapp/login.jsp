<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
					  "http://www.w3.org/TR/Html4/loose.dtd">
<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href = "./css/main_layout.css">
	<title>로그인</title>
	</head>
	
	<body>
		<h1>로그인</h1>
		<hr>
		<form action="login_proc.jsp" method="post">
			<table>
				<tr>
					<td bgcolor="orange">아이디</td>
					<td><input type="text" name="id" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">비밀번호</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="로그인" /> 
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>