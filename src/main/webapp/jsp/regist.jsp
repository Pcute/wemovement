<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/12/11
  Time: 8:10
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>微动</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="/css/regist.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="body">
<%@include file="head.jsp"%>
    <div class="basic_information">
        <div class="basic_information_head">
            <span><font size="+1"><strong>社团注册</strong></font></span>
        </div>
        <form action="regist.do" method="post" name="regist">
            <div class="basic_information_body">

                <div class="information"><font>社团账号</font><input name="cno" type="text" /><br /></div>
                <div class="information"><font>社团名称</font><input name="cname" type="text" /><br /></div>
                <div class="information"><font>&nbsp;&nbsp;&nbsp;E--mail</font><input name="email" type="text" /><br /></div>
                <div class="information"><font>社团密码</font><input name="cpwd" type="text"  /><br /></div>
                <div class="information"><font>确认密码</font><input name="" type="text" /><br /></div>
                <div class="regist"><button type="submit">注册</button></div>

            </div>
        </form>
    </div>
<%@include file="foot.jsp"%>
</div><!--body-->
</body>
</html>
