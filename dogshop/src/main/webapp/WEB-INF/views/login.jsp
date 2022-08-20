<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="/dog/css/w3.css">
<link rel="stylesheet" type="text/css" href="/dog/css/user.css">
<script type="text/javascript" src="/dog/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/dog/js/login.js"></script>
</head>
<body>

	<div class="w3-content w3-center mxw600">
		<h1 class="w3-light-grey">Login</h1>
		<form method="POST" action="/dog/main" id="frm" name="frm" class="w3-col w3-border mgt20">
			<div class="w3-col mgt20">
				<label for="id" class="s2 w3-col w3-right-align ft15">I D : </label>
				<div class="w3-col s9 pdl10">
					<input type="text" name="id" id="id" class="w3-border w3-input w3-col">
				</div>
			</div>
			<div class="w3-col mgt20 mgb20">
				<label for="id" class="s2 w3-col w3-right-align ft15">P  W : </label>
				<div class="w3-col s9 pdl10">
					<input type="text" name="pw" id="pw" class="w3-border w3-input w3-col">
				</div>
			</div>
		</form>
		<div class="w3-col mgt20">
			<div class="w3-third w3-button w3-orange w3-round-medium" id="jbtn">join</div>
			<div class="w3-third w3-button w3-green w3-round-medium" id="hbtn">home</div>
			<div class="w3-third w3-button w3-blue w3-round-medium" id="lbtn">login</div>
		</div>
	</div>
</body>
</html>