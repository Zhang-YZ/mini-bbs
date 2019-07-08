<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<li class="nav-item active mr-5"><a href="#" class="nav-link"><i
						class="fa fa-home mr-2"></i><span>首页</span></a></li>
				<li class="nav-item"><a href="#" class="nav-link"><i 
				class="fa fa-home mr-2"></i></i><span>排名</span></a></li>
			</ul>
			<ul class="nav navbar-nav ml-auto w-100 justify-content-end">
			</ul>
		</div>
	</nav>
	
<style>
	.navbar-brand {
		font-family: Helvetica,Arial,sans-serif;
	}
</style>

<nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top shadow-sm mb-4">
	<a class="navbar-brand pl-5" href="#"><img src="assets/icon.png">Mini<b class="ml-1">BBS</b></a>
	<ul class="nav navbar-nav ml-auto w-100 justify-content-end">
				<li class="nav-item dropdown dropleft"><a href="#"
					data-toggle="dropdown" class="nav-link dropdown-toggle user-action"><img
						src="https://avatars3.githubusercontent.com/u/31076337?s=460&v=4"
						class="avatar" alt="Avatar"></a>
					<ul class="dropdown-menu">
						<li><a href="#" class="dropdown-item"><i
								class="fa fa-user-o"></i> Profile</a></li>
						<li><a href="#" class="dropdown-item"><i
								class="fa fa-calendar-o"></i> Calendar</a></li>
						<li><a href="#" class="dropdown-item"><i
								class="fa fa-sliders"></i> Settings</a></li>
						<li class="divider dropdown-divider"></li>
						<li><a href="#" class="dropdown-item"><i
								class="material-icons">&#xE8AC;</i> Logout</a></li>
					</ul>
				</li>
			</ul>
</nav>