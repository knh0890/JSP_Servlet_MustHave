<%@page import="utils.JSFunction"%>
<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
//체크박스의 경우 값이 둘 이상이라면 getParameterValues()를 통해 폼 값을  받는다
String save_check = request.getParameter("save_check");

if("must".equals(user_id) && "1234".equals(user_pw)){
	if(save_check != null && save_check.equals("y")) {
		CookieManager.makeCookie(response, "loginId", user_id, 86400);
	}
	else {
		CookieManager.deleteCookie(response, "loginId");
	}
	
	JSFunction.alertLocation("로그인에 성공햇습니다.", "IdSaveMain.jsp", out);
}
else {
	JSFunction.alertBack("로그인에 실패했습니다.", out);
}
%>
