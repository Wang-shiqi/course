<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>班级</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="container" style="width:1920px;height:120px;margin-top:0;background-image:linear-gradient(to bottom,#595959,#FFDAB9);background-size:100%;background-repeat:no-repeat">
    <br>
    <h1>数据结构在线学习网站</h1>
</div>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">

        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="StudentsHome.jsp">我的班级</a></li>
                <li><a href="class_sign_upServlet.do">班级报名</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">

                <li class="dropdown">
                    <a class="dropdown-toggle glyphicon glyphicon-user" data-toggle="dropdown">
                        欢迎您！${sessionScope.user.name}
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="lyx_Login_check_Servlet">注销</a></li>
                        <li><a href="StudentModPwd.jsp">修改密码</a></li>
                        <li><a href="StudentMod.jsp">修改信息</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="panel panel-info col-md-offset-1 col-md-10">
    <div class="panel-heading">
        <h3 align="center" class="panel-title">我的班级表</h3>
    </div>
    <div class="panel-body">
        <c:forEach var="cls" items="${sessionScope.ClsList}" varStatus="status" >
            <div class="panel panel-success col-md-12">
                <div class="panel-heading">
                    <h3 class="panel-title"><a href="class_of_student_homeServlet.do?classId=${cls.id}">${cls.name}</a></h3>
                </div>
                <div class="panel-body">
                    授课教师：${cls.teacher}<br>
                    班级人数：${cls.studentSum}<br>
                    开课时间：${cls.startDate}至${cls.endDate}
                </div>
            </div>
        </c:forEach>

    </div>
</div>

<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
