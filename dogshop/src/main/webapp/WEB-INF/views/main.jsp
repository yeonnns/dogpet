<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<link rel="stylesheet" type="text/css" href="/dog/css/w3.css">
<link rel="stylesheet" type="text/css" href="/dog/css/user.css">
<script type="text/javascript" src="/dog/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<form method="POST" action="/dog/main" id="frm" name="frm" class="w3-content w3-center mxw600">
			<h1 class="w3-light-grey">Main Page</h1>
		<c:if test="${not empty SID}">	
			<div class="w3-col w3-center">
				<h3>${SID}회원님 로그인 하셨습니다</h3>
			</div>
		</c:if>
	</form>
</body>
</html>