<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("pAttr", "김유신");
request.setAttribute("rAttr", "계백");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>액션 태그 - forward</title>
	</head>
	<body>
		<h3>sendRedirect를 통한 페이지 이동</h3>
		<%-- <%
			response.sendRedirect("ForwardSub.jsp");
		%> --%>
		<h2>액션 태그를 이용한 포워딩</h2> <!-- 화면에 출력 안됨 -->
		<jsp:forward page="/07ActionTag/ForwardSub.jsp" /> 
		<%-- <%
			request.getRequestDispatcher("ForwardSub.jsp").forward(request, response);
		%> --%>
	</body>
</html>