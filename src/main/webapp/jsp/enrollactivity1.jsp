<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/9
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=basePath%>">
    <title>微动</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="/css/enroll.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="body">

    <div id="head" class="row">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-image:url(/images/joinbackground.jpg)">
            <div class="container-fluid">
                <div class="navbar-header col-lg-1 col-md-1 col-sm-1 col-xs-1" >
                    <strong><a class="navbar-brand " href="jsp/homepage.jsp">微&nbsp;&nbsp;&nbsp;动</a></strong>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <ul class="nav navbar-nav " style="float:left;">
                        <li><a href="jsp/community.jsp" >&nbsp;&nbsp;社&nbsp;团&nbsp;&nbsp;</a></li>
                        <li><a href="jsp/activity.jsp">&nbsp;活&nbsp;动&nbsp;&nbsp;</a></li>
                        <li><a href="jsp/contest.jsp">&nbsp;比&nbsp;赛</a></li>
                    </ul>
                </div>
                <form class="navbar-form " role="search">
                    <div class="form-group col-lg-3 col-md-5 col-sm-5 col-xs-5">
                        <input type="text" class="form-control input-sm" placeholder="Search">
                        <button type="submit" class="btn btn-default btn-sm">搜索</button>
                    </div>
                </form>
                <button style="float:right; margin-left:10px" type="button" class="btn btn-default  btn-sm">注册</button>
                <button style="float:right; " type="button" class="btn btn-default btn-sm">登陆</button>
            </div>
        </nav>
    </div><!--head-->

    <div class="top">
        <div class="top-0"></div><!--没有内容，撑导航栏-->
        <div class="top-1">
            <span><strong><font size="+2" color="#FFFFFF">活动名：${actintro.activityName}</font></strong></span><br />
            <span><font size="-1" color="#FFFFFF">时间:$2018.12.12-2018.12.23</font></span><br />
            <span><font size="-1" color="#FFFFFF">地点:先骕楼x3513a</font></span><br />
            <span><font size="-1" color="#FFFFFF">发起方:心理协会</font></span><br />
            <span><font size="-1" color="#FFFFFF">审核状态:审核通过</font></span><br />
        </div>
        <div class="top-2">
            <button class="button" name="" type="submit">
                我要报名
            </button>
            <button class="button" name="" type="submit">
                收藏活动
            </button>
        </div><!--top-2-->
    </div><!--top-->

    <div class="middle_content">
        <span><font size="+1">活动名称:心理讲座</font></span><br />
        <span><font size="+1">活动编号:001</font></span><br />
        <span><font size="+1">活动主题:探究人的内心深处</font></span><br />
        <span><font size="+1">活动人数:50人以内</font></span><br />
        <span><font size="+1">活动详情:由心理协会主办的心理讲座，主要通过给参与人员放映有关人心理活动的电影来引导人们思考有关于自己的心理变化</font></span>

    </div><!--middle_content-->

    <div class="foot" style="margin-top:35px;">
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
    </div><!--foot-->
</div><!--body-->
</body>
</html>
