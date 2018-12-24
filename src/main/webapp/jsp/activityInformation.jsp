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
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>微动</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="/js/bootstrap.js"></script>
    <%--<style type="text/css" rel="stylesheet">
        .top{
            width:100%;
            height:300px;
            background-image:url(/images/joinbackground.jpg);
            text-align:center;
        }
    </style>--%>
    <style type="text/css">
        .label{
            background-color:lightsteelblue;
        }
        body{
            width:100%;
        }
        img{
            box-shadow: 2px 2px 2px #CCC;
        }
        a{
            color:#000;}
        a:hover{
            color:blue;
            text-decoration:none;
        }
        .navbar-default .navbar-nav{
            text-align:center;
            float:none;}
        .navbar-default .navbar-nav li{
            display:inline-block;
            float:none;}
        .top{
            width:100%;
        }
        .top-0{
            width:100%;
            height:50px;}
        .button{
            margin-top:10px;
            display:inline-block;
            padding:5px 20px;
            border-radius:50px;
            background-color:#F8F8F7;
        }
        .button:hover{
            background-color:#84c0f2;}
        .button:active{
            background-color:#F00;
            box-shadow: 1px 1px 1px 1px #CCC;
        }
    </style>
</head>
<body>
<div id="body">
<%@include file="head.jsp"%>
    <div class="container">
        <div class="top well media">
            <div class="top-0"></div><!--没有内容，撑导航栏-->
            <div class="media-left"> <a href="#"> <img class="media-object img-thumbnail" src="${actintro.activityPicture}" alt="..." width="400px" height="200px"> </a> </div>
            <div class="media-body">
                <div class="media-heading">
                    <span><strong><font size="+2" >${actintro.activityName}</font></strong></span><br />
                    <span>${actintro.activityIntro}心理专题讲座, 针对学生常见的学习生活困扰,为学习进行专题讲座,内容包括学习心理健康、学习枯竭与应对、挫折应对</span>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <h4><span class="glyphicon glyphicon-asterisk" aria-hidden="true"> 发起方:${actintro.iniName}心理协会</span></h4>
                    </div>
                    <div class="col-lg-12">
                        <h4><span class="glyphicon glyphicon-inbox" aria-hidden="true"> 审核状态:${actintro.activityAudit}已通过</span></h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <h4><span class="glyphicon glyphicon-map-marker" aria-hidden="true"> 地点:${actintro.address}江西师范大学先骕楼x3513a</span></h4>
                    </div>
                    <div class="col-lg-12">
                        <h4><span class="glyphicon glyphicon-time" aria-hidden="true"> 时间：${actintro.activityTime}2018.12.12-2018.12.13</span></h4>
                    </div>
                    <div class="col-lg-12">
                        <h4><span class="glyphicon glyphicon-heart" aria-hidden="true"> 报名人数：<span>38</span>/<span>40</span></span></h4>
                    </div>
                </div>
                <div  class="row text-right">
                    <from action="enroll.do" method="post" name="enroll">
                        <button class="btn btn-primary btn-lg" type="submit" id="b1" name="" onClick="myFunction()">
                            <span class="glyphicon">我要报名</span>
                        </button>
                    </from>
                    <!--禁用属性class="disabled",document.getElementByIdx_x_x("btnShow").disabled=true; // 禁用。
            $('button').prop('disabled', true); // 按钮灰掉，且不可点击。-->
                    <from>
                        <button class="btn btn-primary btn-lg" name="" type="button">
                            <span class="glyphicon glyphicon-star-empty">收藏活动</span>
                        </button>
                    </from>
                    <p id="demo" style="margin-top: 15px"><span class="label label-default"><font size="-1">您还没有报名..</font></span></p>
                    <script>
                        function myFunction(){
                            var x;
                            var r=confirm("您确认要报名");
                            if (r==true){
                                x="您以成功报名";
                                document.getElementById("b1").disabled=true;
                            }
                            else{
                                x="您还没有报名";
                            }
                            document.getElementById("demo").innerHTML=x;
                        }
                    </script>
                </div>
            </div>
        </div>




        <div class="row">
            <div class="col-xs-7 panel panel-default">
                <h4><span class="well well-sm panel-heading">您还可能感兴趣</span></h4><br />

                <div class="row">
                    <div class="col-lg-4">
                        <a href="#"> <img src="bgImage.png" width="200px" height="100px" alt="no"><br />
                            <h5><span><strong>共青团团课</strong></span></h5>
                            <font>实现自身价值和社会观的统一</font>
                        </a>
                    </div>
                    <div class="col-lg-4">
                        <a href="#"> <img src="u=2285728192,3453047693&fm=200&gp=0.jpg" width="200px" height="100px" alt="no"><br />
                            <h5><span><strong>国防讲座</strong></span></h5>
                            <font>对于中国国防详细的讲解，了解国防</font>
                        </a>
                    </div>
                    <div class="col-lg-4">
                        <a href="#"><img src="icon.PNG" width="200px" height="100px" alt="no"><br />
                            <h5><span><strong>献血活动</strong></span></h5>
                            <font>拯救他人生命，献出一片爱心</font>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-xs-1"></div>
            <div class="col-xs-4 panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"> 活动所属社团介绍</h3>
                </div>
                <div class="panel-body text-center">
                    <div class="row">
                        <div class="col-lg-12 ">
                            <img src="u=1792545078,3152700174&fm=26&gp=0.jpg" class=" img-responsive center-block" alt="no" width="200px" height="100px" />
                            <h4> <span>心理社团</span></h4>
                        </div>
                        <div class="col-lg-12">
                            <h5><span>协会主要以丰富多彩的户外活动为主，辅以心理讲座...>><span class="glyphicon glyphicon-home" style="color:aqua"><a style="color: aqua" href="#">进社团</a></span></span></h5>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div><!--containe-->








    <%--<div class="top">
        <div class="top-0"></div><!--没有内容，撑导航栏-->
        <div class="top-1">
            <span><strong><font size="+2" color="#FFFFFF">活动名：${actintro.activityName}</font></strong></span><br />
            <span><font size="-1" color="#FFFFFF">活动时间:${actintro.activityTime}</font></span><br />
            <span><font size="-1" color="#FFFFFF">地点:${actintro.address}先骕楼x3513a</font></span><br />
            <span><font size="-1" color="#FFFFFF">发起方${actintro.iniName}:心理协会</font></span><br />
            <span><font size="-1" color="#FFFFFF">活动状态${actintro.activityState}:审核通过</font></span><br />
            <span><font size="-1" color="#FFFFFF">审核状态${actintro.activityAudit}:审核通过</font></span><br />
        </div>
        <div class="top-2">
            <a href="enroll.do"><button class="button" id="b1" name="" type="submit" onClick="myFunction()">
                我要报名
            </button>


            </a><!--禁用属性class="disabled",$('button').addClass('disabled'); // 按钮灰掉，但仍可点击。
$('button').prop('disabled', true); // 按钮灰掉，且不可点击。-->
            <button class="button" name="" type="submit">
                收藏活动
            </button>
            <script>
                function myFunction(){
                    var x;
                    var r=confirm("您确认要报名");
                    if (r==true){
                        x="您以成功报名";
                        document.getElementById("b1").disabled=true;
                    }
                    else{
                        x="您还没有报名";
                    }
                    document.getElementById("demo").innerHTML=x;
                }
            </script>
        </div><!--top-2-->
    </div><!--top-->

    <div class="middle_content">
        <span><font size="+1">活动名称:${actintro.activityName}</font></span><br />
        <span><font size="+1">活动编号:${actintro.activityId}</font></span><br />
        <span><font size="+1">活动主题:${actintro.activityTopic}探究人的内心深处</font></span><br />
        <span><font size="+1">活动人数:${actintro.peopleNum}人以内</font></span><br />
        <span><font size="+1">活动详情:${actintro.activityIntro}由心理协会主办的心理讲座，主要通过给参与人员放映有关人心理活动的电影来引导人们思考有关于自己的心理变化</font></span>
    </div><!--middle_content-->--%>
<%@include file="foot.jsp"%>
</div><!--body-->
</body>
</html>
