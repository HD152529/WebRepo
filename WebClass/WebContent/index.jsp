<!-- 1. Directive tag(지시자) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF=8">
<title>첫번째 JSP</title>
</head>
<body>
<%-- 2. Comment tag	(JSP 주석) --%>
<%-- 3. Declaration tag(선언부 )--%>
<%! private static final String DEFAULT_NAME = "GUEST"; %>
<%-- Scriptlet tag(스크립틀릿) --%>
<%
	//자바 코드를 그대로 작성
	String name = request.getParameter("name");
	if(name == null) name = DEFAULT_NAME;
	//out.println("<h1>Hello, " + name + "<h1>");
%>

<%-- 5. Expresson tag(표현식) --%>
<h1>Hello <%=name%> </h1>

</body>
</html>