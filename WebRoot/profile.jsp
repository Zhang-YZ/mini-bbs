<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="pages/css/main.css">
    <link rel="stylesheet" href="pages/css/profile.css">
    <script src="assets/fontawesomekit.js"></script>
    <%--    <script src="pages/js/main.js"></script>--%>
    <script src="assets/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="assets/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="assets/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <title>Title</title>
</head>
<s:include value="navbar.jsp"/>
<body class="bg-primary">
<div class="container bg-primary">
    <div class="row profile">
        <div class="col-md-3">
            <div class="profile-sidebar">
                <!-- SIDEBAR USERPIC -->
                <div class="profile-userpic text-center">
                    <img src="https://avatars3.githubusercontent.com/u/31076337?s=460&v=4" alt="">
                </div>
                <!-- END SIDEBAR USERPIC -->
                <!-- SIDEBAR USER TITLE -->
                <div class="profile-usertitle">
                    <div class="profile-usertitle-name">
                        <s:property value="tempUser.nickname"></s:property>
                    </div>
                    <div class="profile-usertitle-job">
                        <s:property value="tempUser.email"></s:property>
                    </div>
                </div>
                <!-- END SIDEBAR USER TITLE -->
                <!-- SIDEBAR BUTTONS -->
                <div class="profile-userbuttons">
                    <button type="button" class="btn btn-primary btn-sm">Follow</button>
                    <button type="button" class="btn btn-info btn-sm">Message</button>
                </div>
                <!-- END SIDEBAR BUTTONS -->
                <!-- SIDEBAR MENU -->
                <div id="profile-selector" class="profile-usermenu">
                    <ul class="tablnav nav-tabse">
                        <li data-rel="1" class="active">
                            <a href="#">
                                <i class="glyphicon glyphicon-home"></i>
                                我的主题 </a>
                        </li>
                        <li data-rel="2">
                            <a href="#">
                                <i class="glyphicon glyphicon-user"></i>
                                收到回复 </a>
                        </li>
                        <li data-rel="3">
                            <a href="#" target="_blank">
                                <i class="glyphicon glyphicon-ok"></i>
                                账户设置 </a>
                        </li>
                        <li data-rel="4">
                            <a href="#">
                                <i class="glyphicon glyphicon-flag"></i>
                                查看帮助 </a>
                        </li>
                    </ul>
                </div>
                <!-- END MENU -->
            </div>
        </div>

        <script>
            var $ = jQuery.noConflict();

            $(document).ready(function () {
                // jQuery code is in here
                $('#profile-selector li a').click(function (e) {
                    e.preventDefault();
                    $('li').removeClass('active');
                    $(this).parent().addClass('active');
                    $('section').removeClass('can-show');
                    $('section:nth-of-type(' + $(this).parent().data('rel') + ')').addClass('can-show');
                });
            });

            <%--    console.log('section:nth-of-type('+$(this).parent().data('rel')+')');--%>

        </script>

        <style>
            .profile-content {
                display: none;
            }

            .profile-content.can-show {
                display: block !important;
            }
        </style>
        <div class="col-md-9">
            <section class="profile-content can-show">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">日期</th>
                        <th scope="col">我的主题</th>
                    </tr>
                    </thead>
                    <tbody>
                    <s:iterator value="themetable">
                        <tr>
                            <td scope="row" class="reply-createtime"><s:property value="createTime"></s:property></td>
                            <td>
                                <a href="gotoDetail.action?themeId=<s:property value="id"></s:property>"><s:property
                                        value="title"></s:property></a>
                            </td>
                        </tr>
                    </s:iterator>
                    </tbody>
                </table>
            </section>
            <style>
            .reply-createtime{
            	color: dimgrey;
            	font-weight: bold;
            	font-size: smaller;
            }
            </style>
            <section class="profile-content">
                    <s:iterator value="replies" status="L">
                   	<s:iterator value="replies[#L.index]">
                            <div class="row mb-3">
                            	<div class="col">
                            		<s:property value="user.nickname"></s:property>	(<a href="gotoProfile?tempUserId=<s:property value="postsTheme.user.id"></s:property>"> 
                            		<s:property value="user.email"></s:property></a>)
                            	</div>
                            <div class="col reply-createtime">
                            	<span class="float-right"><s:property value="createTime"></s:property></span>
                            </div>
                            </div>
                            <div class="">
                            	<s:property value="content"></s:property>
                            </div>
                            <div class="row">
                            	<div class="col"></div>
                            	<div class="col">
                            		<span class="float-right">
                            			<a href="gotoDetail.action?themeId=<s:property value="post.theme.id"></s:property>"><i class="fas fa-arrow-alt-circle-right"></i></a>
                            		</span>
                                </div>
                            </div>
                            <hr>
                        </s:iterator>
                    </s:iterator>
            </section>
            <section class="profile-content">
                <h5 class="text-grey mb-3">可以修改以下信息</h5>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="输入新的用户名" aria-label="" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-outline-primary" type="button">点击修改</button>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="输入新的密码" aria-label="" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-outline-primary" type="button">点击修改</button>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
</body>
</html>