<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="1kb" autoFlush="false"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>page 지시어 - buffer, autoFlush 속성</title>
	</head>
	<body>
		<%
		for (int i = 0; i <= 100; i++) { // autoFlush true로 바꾸면 나옴
			out.println("abcde12345");
		}
		%>
	</body>
</html>