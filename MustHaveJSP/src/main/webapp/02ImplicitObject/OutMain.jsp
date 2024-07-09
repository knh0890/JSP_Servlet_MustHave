<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>내장 객체 - out</title>
	</head>
	<body>
		<%
		out.print("출력되지 않는 텍스트");
		out.clearBuffer(); //버퍼에 저장된 내용 삭제, 윗줄이 나오지 않게 됨
		
		out.print("<h2>out 내장 객체</h2>");
		
		out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br/>");
		out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br/>");
		
		out.flush();
		out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br/>");
		
		//ln이 없다면 바짝 붙어서 나옴 , 스페이스 한 칸이 적용되는 정도
		out.println(1);
		out.println(false);
		out.println('가');
		%>
	
	</body>
</html>