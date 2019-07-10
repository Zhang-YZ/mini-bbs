<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>


<meta charset="UTF-8">
<link rel="stylesheet" href="pages/css/main.css">
<script src="assets/jquery-3.2.1.slim.min.js"></script>
<script
	src="assets/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="assets/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link href="assets/css.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="assets/icon.css">
<link rel="stylesheet"
	href="assets/font-awesome.min.css">
<title>Mini BBS</title>
</head>
<body>

	<s:include value="navbar.jsp"/>
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
							data-dismiss="modal">取消</button>
						<button type="submit" class="btn btn-primary">发布</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<style>
	.table-title {
	font-weight: normal;
	color: grey;
	font-size: small;
	}
	.heat-cell {
	font-weight: normal;
	color: #7F5AB6;
	}
	.reply-cell {
	font-weight: bold;
	color: dimgray;
	}
	.timeline-cell {
	color: grey;
	}
	</style>

	<table class="table container table-hover main-contents mt-4">
		<thead>
			<tr>
				<th class="table-title" scope="col">热度</th>
				<th class="table-title" scope="col">主题</th>
				<th class="table-title" scope="col">回复数目</th>
				<th class="table-title" scope="col">活动时间</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="themetable" status="L">
				<tr>
					<th class="heat-cell" scope="row"><i class="fas fa-fire mr-2 text-primary"></i><s:property value="heatNum[#L.index]" /></th>
					<td>
						<form action="gotoDetail">
							<input type="hidden" name="themeId" value="<s:property value="id" />" />
							<%-- <s:submit key="<s:property value="title" />"/> --%>
				<style>
				.theme-title {
				background:none;
				color:inherit;
				border:none;
				padding:0!important;
				font: inherit;
				/*border is optional*/
				<%--				border-bottom:1px solid #444;--%>
				cursor: pointer;
				}

				</style>
				<button class='theme-title' type="submit">
				<s:property value="title" />
				</button>
						</form>
					</td>
					<td class="reply-cell"><s:property value="replyNum[#L.index]" /></td>
					<td class="timeline-cell"><s:property value="createTime" /></td>
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

	<style>
	</style>

<script src="pages/js/main.js"></script>
</html>