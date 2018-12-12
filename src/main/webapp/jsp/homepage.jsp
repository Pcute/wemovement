
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/5
  Time: 9:58
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>微动</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link  href="<%=basePath%>css/home.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
    </style>
</head>
<body>
<%@include file="head.jsp"%>
    <div id="by-1" style="margin-bottom:35px;margin-top:65px;">
    <div id="myCarousel" class="carousel slide"  style="width:700px; height:300px;">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img src="images/shuffling1.jpg">
            </div>
            <div class="item">
                <img src="images/shuffling2.jpg">
            </div>
            <div class="item">
                <img src="images/shuffling3.jpg" width="700" height="300">
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<div class="by-2" style="margin-bottom:35px;">
    <span style="font-size:20px;"><strong>最/新/活/动</strong></span>
</div>
<div id="by-3" style="margin-top:35px;">
    <c:forEach var="newact" items="${actnewList}">
        <div class="by-3-1">
            <img style="margin-bottom:15px; border-radius:10px;" src="${newact.activityPicture}" width="200" height="100">
            <p><a href="activityintro.do?id=${newact.activityId}" ><strong>${newact.activityName}</strong></a></p>
        </div>
    </c:forEach>
</div>
<hr width="80%" size="2" color="#CCCCCC">
<div class="by-2" style="margin-top:35px;">
    <span style="font-size:20px;"><strong>推/荐/活/动</strong></span>
</div>
<div id="by-3a"  style="margin-top:35px; margin-bottom:35px;">
    <c:forEach var="actrecomm" items="${actrecommList}">
        <div class="by-3-1">
            <img style="margin-bottom:15px; border-radius:10px;" src="${actrecomm.activityPicture}" width="200" height="100">
            <p><a href="activityintro.do?id=${actrecomm.activityId}"><strong>${actrecomm.activityName}</strong></a></p>
        </div>
    </c:forEach>
</div>
<hr width="80%" size="2" color="#CCCCCC">
<div class="by-2" style="margin-top:35px;">
    <span style="font-size:20px;"><strong>活/跃/社/团</strong></span>
</div>
<div id="by-4" style="margin-top:35px; margin-bottom:35px;">
    <div id="by-4-1" style="margin-bottom:20px;">
        <div id="by-4-1-1"><img src="frontimages/u=4076445180,3124346776&fm=26&gp=0.jpg" width="500" height="120"></div>
        <div id="by-4-1-2"><img src="frontimages/u=2423486593,3527306200&fm=26&gp=0.jpg" width="500" height="120"></div>
    </div>
    <div id="by-4-2">
        <div id="by-4-2-1"><img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1015704753,1572170115&fm=26&gp=0.jpg" width="300" height="120">
            <p><a href="#"><strong>师大魔方社团</strong></a></p></div>
        <div id="by-4-2-2"><img style="margin-bottom:15px; border-radius:10px;" src="frontimages/timg (2).jpg" width="300" height="120">
            <p><a href="#"><strong>蓝天环保社团</strong></a></p></div>
        <div id="by-4-2-3"><img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1952887712,700678703&fm=26&gp=0.jpg" width="300" height="120">
            <p><a href="#"><strong>星空吉他社</strong></a></p></div>
    </div>
</div>
<hr width="80%" size="2" color="#FF0000">
<%@include file="foot.jsp"%>
</body>
</html>
