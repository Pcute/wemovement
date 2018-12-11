
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
<div id="body">
    <div id="head" class="row">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color: #8DC4F8">
            <div class="container-fluid">
                <div class="navbar-header col-lg-1 col-md-1 col-sm-1 col-xs-1" >
                    <strong><a class="navbar-brand " href="images/homepage.jsp">微&nbsp;&nbsp;&nbsp;动</a></strong>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <ul class="nav navbar-nav " style="float:left;">
                        <li><a href="communityindex.do" >&nbsp;&nbsp;社&nbsp;团&nbsp;&nbsp;</a></li>
                        <li><a href="activityindex.do">&nbsp;活&nbsp;动&nbsp;&nbsp;</a></li>
                        <li><a href="jsp/contest.jsp">&nbsp;比&nbsp;赛</a></li>
                    </ul>
                </div>
                <form class="navbar-form " role="search">
                    <div class="form-group col-lg-3 col-md-5 col-sm-5 col-xs-5">
                        <input type="text" class="form-control input-sm" placeholder="Search">
                        <button type="submit" class="btn btn-default btn-sm">搜索</button>
                    </div>
                </form>
            <div class="" >
                <button style="float:right; margin-left:10px" type="button" class="btn btn-default  btn-sm">注册</button>
                <button style="float:right; " type="button" class="btn btn-default btn-sm">登陆</button>
            </div>
    </div>
    </nav>
</div>
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
            <p><a href="#" ><strong>${newact.activityName}</strong></a></p>
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
            <p><a href="#"><strong>${actrecomm.activityName}</strong></a></p>
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


<div id="foot" style="margin-top:35px;">
    <nav class="navbar navbar-default navbar-fixed-bottm" role="navigation">
        <div class="container-fluid">
            <ul class="nav navbar-nav nav-tabs-justified">
                <li><a href="#">联系我们</a></li>
                <li><a href="#">意见反馈</a></li>
                <li><a href="#">学校链接</a></li>
                <li><a href="#">企业合作</a></li>
                <li><a href="#">帮助中心</a></li>
            </ul>
        </div>
    </nav>
</div>
</div>
</body>
</html>
