<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/9
  Time: 19:38
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
    <style type="text/css">
        html{
            position:relative;
            min-height:100%;}
        body{
            width:100%;
            margin-bottom:60px;
        }
        img{
            box-shadow: 2px 2px 2px #CCC;
        }
        a{
            color:#000;}
        a:hover{
            color:#F00;
            text-decoration:none;
        }
        .navbar-default .navbar-nav{
            text-align:center;
            float:none;}
        .navbar-default .navbar-nav li{
            display:inline-block;
            float:none;}
        #foot{
            position:absolute;
            bottom:0;
            width:100%;
            height:60px;
            background-color:#f5f5f5;
        }
    </style>
</head>
<body>
<div id="body">
<%@include file="head.jsp"%>


<%@include file="foot.jsp"%>
</div><!--body-->
</body>
</html>
