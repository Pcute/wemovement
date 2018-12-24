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
    <link href="/css/enroll.css" rel="stylesheet" type="text/css">
    <style type="text/css" rel="stylesheet">
        .top{
            width:100%;
            height:300px;
            background-image:url(/images/joinbackground.jpg);
            text-align:center;
        }
    </style>
</head>
<body>
<div id="body">
<%@include file="head.jsp"%>
    <div class="top">
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
    </div><!--middle_content-->
<%@include file="foot.jsp"%>
</div><!--body-->
</body>
</html>
