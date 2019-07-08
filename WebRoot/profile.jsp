<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="pages/css/main.css">
    <link rel="stylesheet" href="pages/css/profile.css">
    <script src="https://kit.fontawesome.com/79b7c3f541.js"></script>
    <script src="pages/js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Title</title>
</head>
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
                <div class="profile-usermenu">
                    <ul class="tablnav nav-tabse">
                        <li class="active">
                            <a href="#">
                                <i class="glyphicon glyphicon-home"></i>
                                我的主题 </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="glyphicon glyphicon-user"></i>
                                账户设置 </a>
                        </li>
                        <li>
                            <a href="#" target="_blank">
                                <i class="glyphicon glyphicon-ok"></i>
                                网站设置 </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="glyphicon glyphicon-flag"></i>
                                查看帮助 </a>
                        </li>
                    </ul>
                </div>
                <!-- END MENU -->
            </div>
        </div>
        <div class="col-md-9">
            <div class="profile-content">
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
                        <th scope="row"><s:property value="createTime"></s:property></th>
                        <td>
                            <a href="gotoDetail.action?themeId=<s:property value="id"></s:property>"><s:property value="title"></s:property></a>
                        </td>
                    </tr>
                    </s:iterator>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>