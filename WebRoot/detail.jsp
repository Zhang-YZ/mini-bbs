<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="pages/css/main.css">
<link rel="stylesheet" href="pages/css/detail.css">
<script src="https://kit.fontawesome.com/79b7c3f541.js"></script>
<script src="pages/js/main.js"></script>
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
<title>Title</title>
<!--</head>-->
<body>
	<s:include value="navbar.jsp"/>
	
	<div class="comment-title mt-4">
		<h2 class="text-center text-grey">
				<s:property value="poststheme.title"></s:property>
		</h2>

		<div class="archive-bar text-center mt-3">
			<button class="btn btn-sm btn-primary">
				<%-- <s:property value="#attr.author"></s:property> --%>
			</button>
			<button class="btn btn-sm btn-info">
				<%-- <s:property value="#attr.theme.createTime"></s:property> --%>
			</button>
		</div>


		<div class="container comment-block mt-4">

			<%-- <div class="comments mt-4">
				<div class="contents">
					<div class="text-center">
						<s:property value="#attr.theme.content"></s:property>
					</div>
				</div>
				<table class="table mt-5">
					<tbody>
						<s:iterator value="#attr.posts">
							<tr>
								<th>
									<div class="user-avatar">
										<img
											src="https://s3.amazonaws.com/uifaces/faces/twitter/BillSKenney/73.jpg">
									</div>
								</th>
								<td>
									<div class="contents">
										<div class="info row text-grey">
											<div class="col-4"><s:property value="user.nickname"></s:property></div>
											<div class="col-6"></div>
											<div class="col-2"><s:property value="createTime"></s:property></div>
										</div>
										<div class="mt-2">
											<s:property value="content"></s:property>
										</div>
										
										
										<div class="mt-2 contents-tool-bar row">
											<div class="col-8"></div>
											<div class="col-1">
												<button class="btn">
													<!--                                    空心和实心-->
													<!--                                    <i class="far fa-heart"></i>-->
													<i class="fas fa-heart"></i>
												</button>
											</div>
											<div class="col-1">
												<button class="btn">
													<i class="fas fa-link"></i>
												</button>
											</div>
											<div class="col-2">
												<button class="btn" type="button" data-toggle="collapse"
													data-target="#reply-collapse" aria-expanded="false"
													aria-controls="reply-collapse">
													> <i class="fas fa-reply"> </i> 回复
												</button>
											</div>
										</div>
										<div class="reply-section collapse mt-2" id="reply-collapse">
											<div class="card card-body">
												<h5 class="card-title">xuuexu</h5>
												<p class="card-text">层主保重！</p>
											</div>
											<div class="form-group mt-1">
												<input class="form-control mt-1">
												<button type="submit"
													class="btn btn-primary mt-1 float-right">回复</button>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
			</div>
			
			 --%>
			<hr>

			<form action="addPost" method="post">
				<div class="create-new-comment form-group">
					<textarea name="content" class="form-control send-comment" rows="4">
					</textarea>
					<input type="hidden" name="themeid" value="<s" />
					<div class="row mt-2 ">
						<div class="col-11"></div>
						<div class="col-1">
							<button class="btn btn-primary" type="submit">Send</button>
						</div>
					</div>
				</div>
			</form>

		</div>
</body>
</html>