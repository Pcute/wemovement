<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/9
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <base href="<%=basePath%>">
    <title>微动</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="/css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="body">
    <%--head头部--%>
    <%@include file="head.jsp"%>
        <div class="wrap" id="wrap">
            <div class="logGet">

                <div class="logD logDtip">
                    <p class="p1">登录</p>
                </div>
                <form action="login.do" method="post" name="login">
                    <div class="lgD">

                        <input type="text" name="uName"
                               placeholder="输入用户名" />
                    </div>
                    <div class="lgD">

                        <input type="text" name="uPwd"
                               placeholder="输入用户密码" />
                    </div>
                    <div class="lgF">
                        <input type="text" placeholder="输入验证码"/>
                        <img id="checkCode" class="refleshCheckCode" alt="点击更换验证码" src="imageServlet">
                        <a class="refleshCheckCode" href="javaScript:;"  >更换</a>
                    </div>
                    <div class="logC">
                        <a target="_self"><button type="submit">登 录</button></a>
                    </div>
                    <div class="logE"><a href="regist.jsp">忘记密码</a></div>
                </form>
            </div>
        </div>
        <%--foot尾部--%>
    <%@include file="foot.jsp"%>
</div>
</body>
</html>
