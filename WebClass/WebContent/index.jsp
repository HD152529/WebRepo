<!-- 1. directive  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>first jsp</title>
</head>
<body>
<%--2. jsp comment --%>
<%--3. declaration tag --%>
<%! private static final String DEFAULT_NAME = "Guest"; %>


<%
	String name = request.getParameter("name");
	if(name==null) {
		name = DEFAULT_NAME;
	}
//	out.println("<h1>Hello, "+name+"</h1>");
	



%>
<%--표현식 --%>
<h1>Hello, <%=name%></h1>


</body>
</html>