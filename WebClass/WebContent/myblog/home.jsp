<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="org.dimigo.vo.UserVo" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KangTaeJun | Student in Dimigo</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<script src="/WebClass/js/blog.js"></script>
<link rel="stylesheet" href="/WebClass/css/main.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #13FFB5;">
		<a class="navbar-brand" href="/WebClass/myblog/home.jsp"> <img src="/WebClass/image/t.png"
			width="35" height="35" class="d-inline-block align-top" alt="">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/WebClass/myblog/me.html">About
						me</a></li>
				<li class="nav-item"><a class="nav-link" href="/WebClass/myblog/like.html">What
						I Like</a></li>
				<li class="nav-item"><a class="nav-link" href="/WebClass/myblog/todo.html">What
						to do</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<div class="btn-group" role="group" aria-label="Basic example">
				<%UserVo user = (UserVo)(session.getAttribute("user")); if(user==null || user.getName()==null){ %>
					<a href="/WebClass/bloglogin">Sign in</a>
				<%} else { %>
				<a href="/WebClass/bloglogout">Sign out</a>
				<%} %>
				</div>
			</form>
		</div>
	</nav>


		<div class="jumbotron">
			<h1 class="display-3">
			<%
    			if(user!=null && user.getName()!=null) {
   			%>
   			<%=user.getName() %>님!
			<%} %> 어서오세요!</h1>
			<p class="lead">강태준의 개인 블로그 입니다.</p>
			<hr class="my-4">
			<p>
				<br>made by 2602
			</p>
		</div>
	<%@ include file="modal.jsp" %>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
	<script src="../js/submit.js"></script>
	<script>
	<%-- 로그인이 실패한 경우 처리 추가 --%>
	<%
	if("error".equals(request.getAttribute("msg"))) {
	%>
		var myModal = $('#mymodal');
		myModal.find('.modal-title').text('Login Error');
		myModal.find('.modal-body').text('Invalid username or password');
		myModal.modal();
		<% }%>
</script>
</body>
</html>
