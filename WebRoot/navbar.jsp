<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="assets/fontawesomekit.js"></script>
<!DOCTYPE html>
<nav
	class="navbar navbar-dark navbar-expand-md bg-faded justify-content-center bg-primary">
	<!--    <a href="/" class="navbar-brand d-flex w-50 mr-auto">Mini BBS</a>-->
	<a class="navbar-brand d-flex w-50 mr-auto" href="#"><b
		class="ml-1"></b></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsingNavbar3">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
		<ul class="navbar-nav w-100 justify-content-center">
			<li class="nav-item active mr-5"><a href="getThemeTable.action"
				class="nav-link"><i class="fa fa-home mr-2"></i><span>首页</span></a></li>
			<li class="nav-item"><a href="gotoRank.action" class="nav-link"><i class="fab fa-hackerrank mr-2"></i></i></i><span>排名</span></a></li>

		</ul>
		<ul class="nav navbar-nav ml-auto w-100 justify-content-end">
		</ul>
	</div>
</nav>

<style>
.navbar-brand {
	font-family: Helvetica, Arial, sans-serif;
}
</style>

<nav
	class="navbar navbar-expand-lg navbar-light bg-white sticky-top shadow-sm mb-4">
	<a class="navbar-brand pl-5" href="getThemeTable.action"><img
		src="assets/icon.png">Mini<b class="ml-1">BBS</b></a>
	<%--	<button class="btn ml-auto justify-content-end"><i class="fas fa-search"></i></button>--%>
	
	
	<div class="container h-100">
	<form autocomplete="off" action="search">
		<div class="d-flex justify-content-center h-100">
			<div class="searchbar">

				<input name="searchContent" class="search_input" type="text" name=""
					placeholder="">
	<button type="submit" class="search_icon"><i class="fas fa-search"></i></button>
					

			</div>
		</div>
	</form>
	</div>
	
	<ul class="nav navbar-nav ml-auto w-100 justify-content-end">
		<li class="nav-item dropdown dropleft"><a href="#"
			data-toggle="dropdown" class="nav-link dropdown-toggle user-action"><img
				src="https://avatars3.githubusercontent.com/u/31076337?s=460&v=4"
				class="avatar" alt="Avatar"></a>
			<ul class="dropdown-menu">
				<li><a href="gotoSelfProfile.action" class="dropdown-item"><i
						class="fa fa-user-o"></i> 个人中心</a></li>
<%--				<li><a href="#" class="dropdown-item"><i--%>
<%--						class="fa fa-sliders"></i> Settings</a></li>--%>
				<li class="divider dropdown-divider"></li>
				<li><a href="signout.action" class="dropdown-item">
	<i class="fas fa-sign-out-alt"></i>注销</a></li>
			</ul></li>
	</ul>
</nav>

<style>
.searchbar {
	margin-bottom: auto;
	margin-top: auto;
	height: 40px;
	background-color: #7F5AB6;
	border-radius: 30px;
	padding: 5px;
}

.search_input {
	color: white;
	border: 0;
	outline: 0;
	background: none;
	width: 0;
	caret-color: transparent;
	line-height: 30px;
	transition: width 0.4s linear;
}

.search_input ::placeholder {
	color: white;
	}

.searchbar:hover>.search_input {
	padding: 0 10px;
	width: 450px;
	caret-color: #7F5AB6;
	transition: width 0.4s linear;
}

.searchbar:hover>.search_icon {
	background: white;
	color: #7F5AB6;
}

.search_icon {
	height: 30px;
	width: 30px;
	float: right;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
	color: #7F5AB6;
}
</style>
