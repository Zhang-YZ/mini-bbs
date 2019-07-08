<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>


<meta charset="UTF-8">
<link rel="stylesheet" href="pages/css/main.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Title</title>
</head>
<body>


	<!--<nav class="navbar navbar-inverse navbar-expand-lg navbar-dark shadow mb-4">-->
	<!--    <div class="navbar-header d-flex col">-->
	<!--        <a class="navbar-brand" href="#"><i class="fa fa-cube"></i>Mini<b>BBS</b></a>-->
	<!--        <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle navbar-toggler ml-auto">-->
	<!--            <span class="navbar-toggler-icon"></span>-->
	<!--            <span class="icon-bar"></span>-->
	<!--            <span class="icon-bar"></span>-->
	<!--            <span class="icon-bar"></span>-->
	<!--        </button>-->
	<!--    </div>-->
	<!--    &lt;!&ndash; Collection of nav links, forms, and other content for toggling &ndash;&gt;-->
	<!--    <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">-->
	<!--        <ul class="nav navbar-nav nav-right ml-auto">-->
	<!--            <li class="nav-item active"><a href="#" class="nav-link"><i class="fa fa-home"></i><span>Home</span></a></li>-->
	<!--            <li class="nav-item"><a href="#" class="nav-link"><i class="fa fa-gears"></i><span>Projects</span></a></li>-->
	<!--            <li class="nav-item dropdown dropleft">-->
	<!--                <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action"><img src="https://avatars3.githubusercontent.com/u/31076337?s=460&v=4" class="avatar" alt="Avatar"><b class="caret"></b></a>-->
	<!--                <ul class="dropdown-menu">-->
	<!--                    <li><a href="#" class="dropdown-item"><i class="fa fa-user-o"></i> Profile</a></li>-->
	<!--                    <li><a href="#" class="dropdown-item"><i class="fa fa-calendar-o"></i> Calendar</a></li>-->
	<!--                    <li><a href="#" class="dropdown-item"><i class="fa fa-sliders"></i> Settings</a></li>-->
	<!--                    <li class="divider dropdown-divider"></li>-->
	<!--                    <li><a href="#" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Logout</a></li>-->
	<!--                </ul>-->
	<!--            </li>-->
	<!--        </ul>-->
	<!--    </div>-->
	<!--</nav>-->

	<!--导航栏-->
	<nav
		class="navbar navbar-dark navbar-expand-md bg-faded justify-content-center shadow-sm mb-4 bg-primary">
		<!--    <a href="/" class="navbar-brand d-flex w-50 mr-auto">Mini BBS</a>-->
		<a class="navbar-brand d-flex w-50 mr-auto" href="#">Mini<b
			class="ml-1">BBS</b></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsingNavbar3">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
			<ul class="navbar-nav w-100 justify-content-center">
				<li class="nav-item active mr-5"><a href="#" class="nav-link"><i
						class="fa fa-home mr-2"></i><span>首页</span></a></li>
				<li class="nav-item"><a href="#" class="nav-link"><i
						class="fa fa-gears mr-2"></i><span>资源</span></a></li>
			</ul>
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
					</ul></li>
			</ul>
		</div>
	</nav>
	<!--工具栏-->
	<div class="cell-selector mt-2 container btn-toolbar" role="toolbar">
		<div class="category">
			<a class="btn btn-secondary dropdown-toggle" href="#" role="button"
				id="category-dropdown" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 全部分类 </a>

			<div class="dropdown-menu" aria-labelledby="category-dropdown">
				<a class="dropdown-item" href="#">暂定</a> <a class="dropdown-item"
					href="#">暂定</a> <a class="dropdown-item" href="#">暂定</a>
			</div>
		</div>
		<div class="tags ml-2">
			<a class="btn btn-secondary dropdown-toggle" href="#" role="button"
				id="tag-dropdown" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 全部标签 </a>

			<div class="dropdown-menu" aria-labelledby="tag-dropdown">
				<a class="dropdown-item" href="#">暂定</a> <a class="dropdown-item"
					href="#">暂定</a> <a class="dropdown-item" href="#">暂定</a>
			</div>
		</div>

		<button class="btn btn-primary ml-2">最新</button>
		<button class="btn btn-primary ml-2">未读</button>
		<button class="btn btn-primary ml-2">热门</button>

		<button class="btn btn-info justify-content-end ml-auto"
			id="addPostBtn" data-toggle="modal" data-target="#addPostModal">
			发表帖子</button>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="addPostModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">发表帖子</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<form action="createTheme" method="post">
					<div class="modal-body">

						<div class="form-group">
							<label for="exampleFormControlInput1">帖子标题：</label> <input
								name="title" type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="请输入标题">
						</div>
						<div class="form-group">
							<label for="exampleFormControlTextarea1">帖子内容：</label>
							<textarea name="content" class="form-control"
								id="exampleFormControlTextarea1" rows="5"></textarea>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save
							changes</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<table class="table container main-contents mt-4">
		<thead>
			<tr>
				<th scope="col">热度</th>
				<th scope="col">主题</th>
				<th scope="col">回复数目</th>
				<th scope="col">活动时间</th>
			</tr>
		</thead>
		<s:action name="themetable" executeResult="false"></s:action>
		<tbody>
			<s:iterator value="#attr.themetable">
				<tr>
					<th scope="row"><s:property value="heat" /></th>

					<td><a href="detail.jsp?id=<s:property value="id" />">a<s:property value="title" /></a></td>
					<td><s:property value="heat" /></td>
					<td><s:property value="createTime" /></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>

</body>
<script>
	// $(document).ready(function() {
	//     $('#addPostBtn').click(function () {
	//         alert("What the Heck");
	//     })
	// });
</script>

<script src="../js/main.js"></script>
</html>