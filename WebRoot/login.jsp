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
<link rel="stylesheet" href="pages/css/login.css">
<link rel="stylesheet" href="pages/css/main.css">
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

	<button onclick="launch_toast()">Show Toast</button>

	<div id="toast">
	<div id="img"><i class="fas fa-exclamation-circle"></i></div>
	<div id="desc">ID被占用了</div>
	</div>

	<style>
	#toast {
	visibility: hidden;
	max-width: 50px;
	height: 50px;
	/*margin-left: -125px;*/
	margin: auto;
	background-color: #cdcdcd;
	color: #7F5AB6;
	text-align: center;
	border-radius: 2px;

	position: fixed;
	z-index: 1;
	left: 0;right:0;
	bottom: 30px;
	font-size: 17px;
	white-space: nowrap;
	}
	#toast #img{
	width: 50px;
	height: 50px;

	float: left;

	padding-top: 16px;
	padding-bottom: 16px;

	box-sizing: border-box;


	background-color: white;
	color: #7F5AB6;
	}
	#toast #desc{


	color: #7F5AB6;

	padding: 16px;

	overflow: hidden;
	white-space: nowrap;
	}

	#toast.show {
	visibility: visible;
	-webkit-animation: fadein 0.5s, expand 0.5s 0.5s,stay 3s 1s, shrink 0.5s 2s, fadeout 0.5s 2.5s;
	animation: fadein 0.5s, expand 0.5s 0.5s,stay 3s 1s, shrink 0.5s 4s, fadeout 0.5s 4.5s;
	}

	@-webkit-keyframes fadein {
	from {bottom: 0; opacity: 0;}
	to {bottom: 30px; opacity: 1;}
	}

	@keyframes fadein {
	from {bottom: 0; opacity: 0;}
	to {bottom: 30px; opacity: 1;}
	}

	@-webkit-keyframes expand {
	from {min-width: 50px}
	to {min-width: 350px}
	}

	@keyframes expand {
	from {min-width: 50px}
	to {min-width: 350px}
	}
	@-webkit-keyframes stay {
	from {min-width: 350px}
	to {min-width: 350px}
	}

	@keyframes stay {
	from {min-width: 350px}
	to {min-width: 350px}
	}
	@-webkit-keyframes shrink {
	from {min-width: 350px;}
	to {min-width: 50px;}
	}

	@keyframes shrink {
	from {min-width: 350px;}
	to {min-width: 50px;}
	}

	@-webkit-keyframes fadeout {
	from {bottom: 30px; opacity: 1;}
	to {bottom: 60px; opacity: 0;}
	}

	@keyframes fadeout {
	from {bottom: 30px; opacity: 1;}
	to {bottom: 60px; opacity: 0;}
	}
	</style>


	<script>
	function launch_toast() {
	var x = document.getElementById("toast")
	x.className = "show";
	setTimeout(function(){ x.className = x.className.replace("show", ""); }, 5000);
	}
	</script>

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
	<script src="pages/js/login.js"></script>
</body>


</html>