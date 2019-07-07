<%@ page contentType="text/html; charset=utf-8"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/login.css">
<link rel="stylesheet" href="../css/main.css">
<title>Bootstrap 4 Login/Register Form</title>
</head>
<body class="bg-primary">
	<div id="logreg-forms" class="bg-white rounded p-3">
		<%-- 		<%
			String info = request.getParameter("info");
			if(info)
		%> --%>
		<form action="signin" class="form-signin" method="post">
			<h1 class="h3 mb-3 font-weight-normal text-primary"
				style="text-align: center">Mini BBS</h1>
			<input name="email" type="email" id="inputEmail"
				class="form-control mb-2 rounded" placeholder="邮箱地址" required=""
				autofocus=""> <input name="password" type="password"
				id="inputPassword" class="form-control rounded" placeholder="密码"
				required="">

			<button class="btn btn-primary btn-block" type="submit">
				<i class="fas fa-sign-in-alt mr-2"></i>登陆
			</button>
			<!-- <p>Don't have an account!</p>  -->
			<button class="btn btn-primary btn-block" type="button"
				id="btn-signup">
				<i class="fas fa-user-plus mr-2"></i>注册新用户
			</button>
			<div class="text-center mt-3">
				<a href="#" id="forgot_pswd" class="text-info">忘记密码</a>
			</div>
		</form>

		<form action="reset" class="form-reset">
			<input name="email" type="email" id="resetEmail" class="form-control"
				placeholder="Email address" required="" autofocus="">
			<button class="btn btn-primary btn-block" type="submit">重置密码</button>
			<a href="#" id="cancel_reset" class="text-info"><i
				class="fas fa-angle-left"></i>返回</a>
		</form>

		<form action="signup" class="form-signup">

			<h1 class="h3 mb-3 font-weight-normal text-primary"
				style="text-align: center">注册</h1>

			<input name="nickname" type="text" id="user-name"
				class="form-control mb-2" placeholder="昵称" required="" autofocus="">
			<input name="email" type="email" id="user-email"
				class="form-control mb-2" placeholder="邮箱地址" required autofocus="">
			<input name="password" type="password" id="user-pass"
				class="form-control mb-2" placeholder="密码" required autofocus="">
			<input name="repeatpw" type="password" id="user-repeatpass"
				class="form-control" placeholder="确认密码" required autofocus="">

			<button class="btn btn-primary btn-block" type="submit">
				<i class="fas fa-user-plus mr-2"></i>注册
			</button>
			<a href="#" id="cancel_signup" class="text-info"><i
				class="fas fa-angle-left"></i>返回</a>
		</form>
		<br>

	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="../js/login.js"></script>
</body>
</html>