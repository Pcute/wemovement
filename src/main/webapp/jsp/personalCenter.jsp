<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/9
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <base href="<%=basePath%>">
    <title>微动</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="/css/info.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@include file="head.jsp"%>
<div id="Mid">
    <div class="left">
        <img style="position: absolute;-webkit-filter:none;opacity:0.4;width:100%;height:100%;" src="icon.PNG"/>
        <div class="icon">
            <a href="#" title="点击更换头像"><img  class="iconImage" src="${longer.picture}" width=80px height=80px/></a>
            <p class="name">我的昵称&nbsp; <a href="#" title="点击修改"><img class="modifyImage" src="${longer.picture}" width="15px" height="15px"/></a></p>
        </div>

    </div>
    <div class="right">

        <ul class="nav1">
            <li class="selected">基本信息</li>
            <li>账号管理</li>
            <li>我的收藏</li>
            <li>我的关注</li>
            <li>查看通知</li>
            <li>参加过得活动</li>
            <li>我的素拓表</li>
        </ul>
        <div class="content">
            <div class="list ">
                <div class="info">
                    <table cellspacing="20">
                        <tr>
                            <th>昵&nbsp;&nbsp;称：</th> <td> </td> <td> </td><td >${longer.stuNickName}</td>
                        </tr>

                        <tr>
                            <th >学&nbsp;&nbsp;校：</th><td> </td><td> </td><td>江西师范大学</td>
                        </tr>
                        <tr>
                            <th >学&nbsp;&nbsp;号：</th><td></td><td></td><td>${longer.stuNo}</td>
                        </tr>
                        <tr>
                            <th >姓&nbsp;&nbsp;名：</th><td></td><td></td><td>${loginName}</td>
                        </tr>
                        <tr>
                            <th >性&nbsp;&nbsp;别：</th><td></td><td></td><td>男</td>
                        </tr>
                    </table>
                    <div class="modify">
                        <a href="modify.jsp" target="_self"><button>修改信息</button></a>
                    </div>
                </div>
            </div>
            <div  class="list">
                <div class="info">
                    <tr>
                        <td>账号管理</td>
                    </tr>

                </div>
            </div>
            <div  class="list">
                <div class="info">
                    <tr>
                        <td>我的收藏</td>
                        <h1>uieureioreioreior</h1>
                    </tr>

                </div>
            </div>
            <div  class="list">
                <div class="info">
                    <tr>
                        <td>我的关注</td>
                    </tr>

                </div>
            </div>
            <div  class="list">
                <div class="info">
                    <tr>
                        <td>我的通知</td>
                    </tr>

                </div>
            </div>
            <div  class="list">
                <div class="info">
                    <tr>
                        <td>参加过得活动</td>
                    </tr>
                </div>
            </div>
            <div  class="list">
                <div class="info">
                    <tr>
                        <td>我的素拓表</td>
                        <p>iyreiryeirei</p>
                    </tr>
                </div>
            </div>
        </div>

    </div>
        <script>
            $(function(){
                //获取点击事件的对象
                $(".nav1 li").click(function(){
                    //获取要显示或隐藏的对象
                    var divShow = $(".content").children('.list');
                    //判断当前对象是否被选中，如果没选中的话进入if循环
                    if (!$(this).hasClass('selected')) {
                        //获取当前对象的索引
                        var index = $(this).index();
                        //当前对象添加选中样式并且其同胞移除选中样式；
                        $(this).addClass('selected').siblings('li').removeClass('selected');
                        //索引对应的div块显示
                        $(divShow[index]).show();
                        //索引对应的div块的同胞隐藏
                        $(divShow[index]).siblings('.list').hide();
                    }
                });
            });

        </script>

    </div>
</div>
<%@include file="foot.jsp"%>
</body>
</html>
