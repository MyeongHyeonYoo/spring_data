<%@page import="java.util.List" %>
<%@page import="com.springbook.biz.board.impl.BoardDAO" %>
<%@page import="com.springbook.biz.board.BoardVO" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <%
 	/* // 1. 사용자 입력 정보 추출(검색 기능은 나중에 구현)
 	
 	// 2. DB 연동 처리
 	BoardVO vo = new BoardVO();
 	BoardDAO boardDAO = new BoardDAO();
 	List<BoardVO> boardList = boardDAO.getBoardList(vo);
 	
 	// 3. 응당 화면 구성 */
 	
 	// 세션에 저장된 글 목록을 꺼낸다.
 	List<BoardVO> boardList = (List) session.getAttribute("boardList");
 	
 	
  %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
					  "http://www.w3.org/TR/Html4/loose.dtd">
<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href = "./css/main_layout.css">
	<title>글 목록</title>
	</head>
	
	<body>
		<h1>글 목록</h1>
		<h3>테스트님 환영합니다...
			<a href="logout_proc.jsp">Log-out</a>
		</h3>
		
		<!-- 검색 시작 -->
		<form action="getBoardList.jsp" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td align="right">
						<select name="searchCondition">
							<option value="TITLE"> 제목
							<option value="CONTENT"> 내용
						</select>
						<input name="searchKeyword" type="text" />
						<input type="submit" value="검색">
					</td>
				</tr>
			</table>
		</form>
		<!-- 검색 종료 -->
		
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">등록일</th>
				<th bgcolor="orange" width="100">조회수</th>
			</tr>
			
			<% for (BoardVO board : boardList) { %>
			<tr>
				<td><%= board.getSeq() %></td>
				<td align="left"><a href="getBoard.jsp?seq=<%= board.getSeq() %>"><%= board.getTitle() %></a></td>
				<td><%= board.getWriter() %></td>
				<td><%= board.getRegDate() %></td>
				<td><%= board.getCnt() %></td>
			</tr>
			<% } %>
		</table>
		<br>
		<a href="inserBoard.jsp">새글 등록</a>
	</body>
</html>