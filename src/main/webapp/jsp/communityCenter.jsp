<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/18
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>微动</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>社团介绍</title>

    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .glyphicon{
            color:lightcoral;
        }

        .label{
            background-color:wheat;
        }
        a{
            color:navy;	}
        a:hover{
            text-decoration: none;
        }
    </style>
</head>
<body>
<%@include file="head.jsp"%>
<%--下面的代码使得头更好看！！！！！！！！--%>

<%--<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">微&nbsp;&nbsp;&nbsp;动</a>
    </div>
    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li><a href="#">&nbsp;&nbsp;社&nbsp;团&nbsp;&nbsp; </a> </li>
            <li><a href="#">&nbsp;活&nbsp;动&nbsp;&nbsp;</a> </li>
            <li><a href="#">&nbsp;比&nbsp;赛&nbsp;&nbsp;</a> </li>
        </ul>
        <form class="navbar-form" role="search" style="margin-left: 500px;">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
            <button style="float:right; margin-left:10px" type="button" class="btn btn-default">注册</button>
            <button style="float:right; " type="button" class="btn btn-default">登陆</button>
        </form>

    </div>

</nav>--%>
<div class="container">
    <hr>
    <div class="row">
        <div class="col-xs-6">
            <h1>社团名称:${communityintro.communityName}</h1>
        </div>
        <div class="col-xs-6">
            <p class="text-right"><a href=""> </a></p>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-xs-7">
            <div class="media">
                <div class="media-left"> <a href="#"> <img class="media-object img-thumbnail" src="${communityintro.communityPicture}" alt="..." width="200px" height="100px"> </a> </div>
                <div class="media-body">
                    <h3 class="media-heading">社团简介</h3>
                    ${communityintro.communityIntro}
                    <%--协会主要以丰富多彩的户外活动为主，辅以心理讲座，心理活动是大脑对客观世界反映的过程。心理活动与大脑的高级神经活动是脑内同一生理过程的不同方面：从兴奋与抑制相互作用而构成的生理过程看，是高级神经活动；从神经生理过程所产生的映象及所概括的事物的因果联系和意义看，属心理活动。笼统地讲，人的内心所进行的一切活动都属于心理活动--%>
                </div>
            </div>
        </div>


        <div class="col-xs-5 well">
            <div class="row">
                <div class="col-lg-6">
                    <h4><span class="glyphicon glyphicon-phone" aria-hidden="true"></span> : ${communityintro.tele}123-456-7890</h4>
                </div>
                <div class="col-lg-6">
                    <h4><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> :${communityintro.email} jxnu@163.com</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8">
                    <h4><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> : ${communityintro.communityAddress}江西师范大学先骕楼x3513a</h4>
                </div>
                <div class="col-lg-4">
                    <h5><span class="glyphicon glyphicon-pencil" aria-hidden="true"><a href="#" data-toggle="tooltip" title="点击跳转到信息修改页面">点击修改社团信息</a></span></h5>
                </div>
            </div>
        </div>
    </div>


    <hr>
    <div class="row">
        <div class="col-sm-12 col-lg-12">
            <h3>正在举办的活动</h3><h4 class="text-right"><a href="releaseactivity0.do">发布新的活动</a></h4>
            <hr>
            <c:forEach var="ongoing" items="${newActivity}">
            <div class="row">
                <div class="col-xs-6"><h4>${ongoing.activityName}心理电影放映</h4></div>
                <div class="col-xs-6">
                    <h4 class="text-left"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>${ongoing.activityTime} 2018.5.6-2018.5.12</h4>
                </div>
            </div>
            <h4><span class="label label-default">活动详情</span><span class="label label-default" style="margin-left: 10px;"><a href="#">修改活动信息</a></span><span class="label label-default" style="margin-left: 10px;"><a href="#">参加活动</a></span></h4>
            <p>${ongoing.activityIntro}获取自由的萨拉查肆虐加勒比海，征服了整个海域，即便是手刃了“黑胡子”爱德华·蒂奇（伊恩·麦柯肖恩 Ian McShane 饰）的海盗王赫克托·巴博萨船长（杰弗里·拉什 Geoffrey Rush 饰）也难以避免心爱的安妮女王复仇号沉入大海的惨剧。</p>
            </c:forEach>
            <%--<div class="row">
                <div class="col-xs-6"><h4>心理电影放映</h4></div>
                <div class="col-xs-6">
                    <h4 class="text-left"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> 2018.5.6-2018.5.12</h4>
                </div>
            </div>
            <h4><span class="label label-default">活动详情</span><span class="label label-default" style="margin-left: 10px;"><a href="#">参加活动</a></span></h4>
            <p>获取自由的萨拉查肆虐加勒比海，征服了整个海域，即便是手刃了“黑胡子”爱德华·蒂奇（伊恩·麦柯肖恩 Ian McShane 饰）的海盗王赫克托·巴博萨船长（杰弗里·拉什 Geoffrey Rush 饰）也难以避免心爱的安妮女王复仇号沉入大海的惨剧。</p>
            <div class="row">
                <div class="col-xs-6">
                    <h4>心理讲座辅导</h4>
                </div>
                <div class="col-xs-6">
                    <h4 class="text-left"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> 2018.1.2-2018.1.15</h4>
                </div>
            </div>
            <h4><span class="label label-default">活动详情</span><span class="label label-default" style="margin-left: 10px;"><a href="#">参加活动</a></span></h4>
            <p>故事发生在非洲附近的大海上，主人公冷锋遭遇人生滑铁卢，被“开除军籍”，本想漂泊一生的他，正当他打算这么做的时候，一场突如其来的意外打破了他的计划，突然被卷入了一场非洲国家叛乱，本可以安全撤离，却因无法忘记曾经为军人的使命，孤身犯险冲回沦陷区</p>
        --%>
        </div>
    </div>
    <hr>
    <h3>已举办的活动</h3>
    <hr>
    <div class="row">
        <c:forEach var="past" items="${oldActivity}">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-xs-5">
                        <h4>${past.activityName}学生心理辅导</h4>
                    </div>
                    <div class="col-xs-5">
                        <h4 class="text-left"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>${past.activityTime} 2018.10.1-2018.12.1</h4>
                    </div>
                </div>
                <h4><span class="label label-default">活动详情</span></h4>
                <p>${past.activityIntro}心理活动是大脑对客观世界反映的过程。心理活动与大脑的高级神经活动是脑内同一生理过程的不同方面：从兴奋与抑制相互作用而构成的生理过程看，是高级神经活动</p>
            </div>
        </c:forEach>

        <%--<div class="col-lg-12">
            <div class="row">
                <div class="col-xs-5">
                    <h4>学生心理辅导</h4>
                </div>
                <div class="col-xs-5">
                    <h4 class="text-left"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> 2018.10.1-2018.12.1</h4>
                </div>
            </div>
            <h4><span class="label label-default">活动详情</span></h4>
            <p>心理活动是大脑对客观世界反映的过程。心理活动与大脑的高级神经活动是脑内同一生理过程的不同方面：从兴奋与抑制相互作用而构成的生理过程看，是高级神经活动</p>
        </div>
        <div class="col-lg-12">
            <div class="row">
                <div class="col-xs-5">
                    <h4>留守儿童心理辅导</h4>
                </div>
                <div class="col-xs-6">
                    <h4 class="text-left"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>2018.12.12-2018.12.12</h4>
                </div>
            </div>
            <h4><span class="label label-default">活动详情</span></h4>
            <p>神经生理过程所产生的映象及所概括的事物的因果联系和意义看，属心理活动。笼统地讲，人的内心所进行的一切活动都属于心理活动，人们对周围世界的观察、注意感兴趣的事物、体会生活中的喜怒哀乐、克服困难完成一项工作或任务等等，这些都是人的心理活动</p>
        --%></div>
    </div>
    <hr>
    <h3>活动图片展示</h3>
    <hr>
    <div class="container">
            <div class="row">
                <c:forEach var="ongoing" items="${newActivity}">
                <div class="col-lg-4 col-sm-6 col-xs-6"><img src="${ongoing.activityPicture}" alt=""><hr class="hidden-lg"></div>
                <%--<div class="col-lg-4 col-sm-6 col-xs-6"><img src="images/300X200.gif" alt=""><hr class="hidden-lg"></div>
                <div class="col-lg-4 col-sm-6 col-xs-6"><img src="images/300X200.gif" alt=""></div>
                <div class="col-lg-4 col-sm-6 col-xs-6 hidden-lg"><img src="images/300X200.gif" alt=""></div>--%>
                </c:forEach>
            </div>

       <%-- <div class="row">
            <div class="col-lg-4 col-sm-6 col-xs-6"><img src="images/300X200.gif" alt=""><hr class="hidden-lg"></div>
            <div class="col-lg-4 col-sm-6 col-xs-6"><img src="images/300X200.gif" alt=""><hr class="hidden-lg"></div>
            <div class="col-lg-4 col-sm-6 col-xs-6"><img src="images/300X200.gif" alt=""></div>
            <div class="col-lg-4 col-sm-6 col-xs-6 hidden-lg"><img src="images/300X200.gif" alt=""></div>
        </div>--%>
        <hr>
            <div class="row">
                <c:forEach var="past" items="${oldActivity}">
                <div class="col-lg-4 col-sm-6 col-xs-6"><img src="${past.activityPicture}" alt=""><hr class="hidden-lg"></div>
                <%--<div class="col-lg-4 col-sm-6 col-xs-6"><img src="images/300X200.gif" alt=""><hr class="hidden-lg"></div>
                <div class="col-lg-4 col-sm-6 col-xs-6"><img src="images/300X200.gif" alt=""></div>
                <div class="col-lg-4 col-sm-6 col-xs-6 hidden-lg"><img src="images/300X200.gif" alt=""></div>--%>
                </c:forEach>
            </div>

        <%--<div class="row">
            <div class="col-lg-4 col-sm-6 col-xs-6"><img src="images/300X200.gif" alt=""><hr class="hidden-lg"></div>
            <div class="col-lg-4 col-sm-6 col-xs-6"><img src="images/300X200.gif" alt=""><hr class="hidden-lg"></div>
            <div class="col-lg-4 col-sm-6 col-xs-6"><img src="images/300X200.gif" alt=""></div>
            <div class="col-lg-4 col-sm-6 col-xs-6 hidden-lg"><img src="images/300X200.gif" alt=""></div>
        </div>--%>
    </div>
    <hr>
    <footer class="text-center" >
        <nav class="navbar navbar-default navbar-fixed-bottm" role="navigation">
            <div class="container-fluid container" style="text-align: center;">
                <ul class="nav navbar-nav" style="display: inline-block;float: none;">
                    <li><a href="#">联系我们</a></li>
                    <li><a href="#">意见反馈</a></li>
                    <li><a href="#">学校链接</a></li>
                    <li><a href="#">企业合作</a></li>
                    <li><a href="#">帮助中心</a></li>
                </ul>
            </div>
        </nav>
    </footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="file:///C|/Users/Wen/Desktop/home/js/jquery-1.11.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="file:///C|/Users/Wen/Desktop/home/js/bootstrap.js"></script>
</div>
</body>
</html>
