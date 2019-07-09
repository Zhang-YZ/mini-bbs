<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="pages/css/main.css">
    <link rel="stylesheet" href="pages/css/detail.css">
    <script src="assets/fontawesomekit.js"></script>
    <script src="pages/js/main.js"></script>
    <script src="assets/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script
            src="assets/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script
            src="assets/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <title>Title</title>
    <!--</head>-->
<body>
<s:include value="navbar.jsp"/>
<style>
    .detail-body {
        margin-left: 13%;
        margin-right: 13%;
    }
</style>
<div class="detail-body mt-5">

    <div class="comment-title">
        <h3 class="text-center text-dark">
            <s:property value="poststheme.title"></s:property>
        </h3>
        <div class="archive-bar text-center mt-3">
            <p class="detail-creator">
                <s:property value="poststheme.user.nickname"></s:property>
                (<a
                    href="gotoProfile?tempUserId=<s:property value="poststheme.user.id"></s:property>">
                <s:property value="poststheme.user.email"></s:property></a>)
            </p>
        </div>
        <div class="text-center">
            <p class="detail-time">
                <s:property value="poststheme.createTime"></s:property>
            </p>
        </div>

        <style>
            .detail-time {
                color: lightgrey;
                font-weight: normal;
                font-size: medium;
            }
            .detail-creator {
                color: dimgray;
                font-weight: bold;
                font-size: larger;
            }
            .main-contents {
                font-size: larger;
                border-top: 1px solid #dee2e6;
                border-bottom: 1px solid #dee2e6;
                padding: 10px;
                padding-bottom: 20;
            }
        </style>

        <div class="container comment-block mt-4">
            <div class="comments mt-4">
                <div class="main-contents">
                    <p>
                            ++++++++++++++++++++++
                    <s:if test="hasActionErrors()">

        <s:actionerror />
        =====================
        </s:if>
        <s:if test="hasActionMessages()">
			
        <s:actionmessage />
        =====================
        </s:if>
                    <s:property value="poststheme.content"></s:property>
                    </p>
                    <div class="row detail-cell-bottom">
                        <div class="col"></div>
                        <div class="col mb-2">
                            <div class="btn-group float-right" role="group" aria-label="">
                                <button type="button" class="btn"><i class="fas fa-trash"></i></button>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>

                <hr>

                <div class="all-replies">
                    <s:iterator value="posts" status="L">
                        <div class="row mb-3">
                                <div class="col-1">
                                    <img width="45" height="45" src="https://s3.amazonaws.com/uifaces/faces/twitter/BillSKenney/73.jpg">
                                </div>

                                <div class="contents col-11">
                                    <div class="info row detail-creator">
                                        <div class="col">
                                            <s:property value="user.nickname"></s:property>
                                            (<a
                                                href="gotoProfile?tempUserId=<s:property value="user.id"></s:property>"
                                        ><s:property value="user.email"></s:property></a>)
                                        </div>
                                        <div class="col">
                                            <div class="float-right detail-time">
                                                <s:property value="createTime"></s:property>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-2">
                                        <s:property value="content"></s:property>
                                    </div>
                                    <form action="deleteSinglePost">
                                    	<input name="id" value="<s:property value="id"></s:property>" type="hidden"/>
                                    <div class="row detail-cell-bottom">
                                        <div class="col"></div>
                                        <div class="col mb-2">
                                            <div class="btn-group float-right" role="group" aria-label="">
                                                <button type="button" class="btn"><i class="fas fa-heart"></i></button>
                                                <button type="submit" class="btn"><i class="fas fa-trash"></i></button>
                                                <button type="button" class="btn" type="button" data-toggle="collapse"
                                                        data-target="#reply-collapse<s:property value="#L.index+1"></s:property>"
                                                        aria-expanded="false" aria-controls="reply-collapse"><i class="fas fa-reply"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    </form>

                                </div>
                        </div>
                        <style>
                            .reply-section{
                                margin-left: 8%;
                                font-size: smaller;
                                width: 100%;
                            }
                        </style>
                        <div class="row">
                            <div class="reply-section collapse mt-2"
                                 id="reply-collapse<s:property value="#L.index+1"></s:property>">

                                <s:iterator value="replies[#L.index]">
                                    <div class="card card-body" width="100%">
                                        <div class="card-title row">
                                            <div class="col detail-creator">
                                                <s:property value="user.nickname"></s:property>
                                                (<a href="gotoProfile?tempUserId=<s:property value="user.id"></s:property>">
                                                <s:property value="user.email"></s:property></a>)
                                            </div>
                                            <div class="col detail-time">
                                                <span class="float-right">
                                                    <s:property value="createTime"></s:property>
                                                </span>
                                            </div>
                                        </div>
                                        <p class="card-text">
                                            <s:property value="content"></s:property>
                                        </p>
                                        <form action="deleteSingleReply">
                                        	<input name="id" value="<s:property value="id"></s:property>" type="hidden"/>
                                        <div class="row detail-cell-bottom">
                                            <div class="col"></div>
                                            <div class="col mb-2">
                                                <div class="btn-group float-right" role="group" aria-label="">
                                                    <!-- <button type="button" class="btn"><i class="fas fa-heart"></i></button> -->
                                                    <button type="submit" class="btn"><i class="fas fa-trash"></i></button>
                                                    <!-- <button type="button" class="btn"><i class="fas fa-reply"></i></button> -->
                                                </div>
                                            </div>
                                        </div>
                                        </form>
                                    </div>
                                </s:iterator>

                                <form autocomplete="off" action="getPostToReply">
                                    <div class="input-group mt-2 mb-3">

                                        <input name="tempPostId" type="hidden"
                                               value="<s:property value="posts[#L.index].id"></s:property>">
                                        <input name="content" type="text" class="form-control"
                                               placeholder="请输入回复内容.........." aria-label="Recipient's username"
                                               aria-describedby="button-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-primary" type="submit"
                                                    id="button-addon2">回复
                                            </button>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                        <hr>
                    </s:iterator>
                </div>
            </div>
            <hr>
            <form autocomplete="off" action="addPost" method="post">
                <div class="create-new-comment form-group">
                    <textarea name="content" class="form-control send-comment" rows="4"></textarea>
                    <input type="hidden" name="poststhemeid"
                           value="<s:property value="poststheme.id"></s:property>"/>
                    <div class="row mt-2 ">
                        <div class="col-11"></div>
                        <div class="col-1">
                            <button class="btn btn-primary" type="submit">Send</button>
                        </div>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>
</body>
</html>