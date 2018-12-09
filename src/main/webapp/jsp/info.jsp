<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/9
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>微动</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="/css/info.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="head" class="row">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color:#8DC4F8">
        <div class="container-fluid">
            <div class="navbar-header col-lg-1 col-md-1 col-sm-1 col-xs-1" >
                <strong><a class="navbar-brand " href="#">微&nbsp;&nbsp;&nbsp;动</a></strong>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                <ul class="nav navbar-nav " style="float:left;">
                    <li><a href="#" >&nbsp;&nbsp;社&nbsp;团&nbsp;&nbsp;</a></li>
                    <li><a href="#">&nbsp;活&nbsp;动&nbsp;&nbsp;</a></li>
                    <li><a href="#">&nbsp;比&nbsp;赛</a></li>
                </ul>
            </div>
            <form class="navbar-form " role="search">
                <div class="form-group col-lg-3 col-md-5 col-sm-5 col-xs-5">
                    <input type="text" class="form-control input-sm" placeholder="Search">
                    <button type="submit" class="btn btn-default btn-sm">搜索</button>
            </form>
        </div>
        <div class="" >
            <button style="float:right; margin-left:10px" type="button" class="btn btn-default  btn-sm">注册</button>
            <button style="float:right; " type="button" class="btn btn-default btn-sm">登陆</button>
        </div>
</div>
</nav>
</div>



<div id="Mid">
    <div class="left">
        <img style="position: absolute;-webkit-filter:none;opacity:0.4;width:100%;height:100%;" src="icon.PNG"/>
        <div class="icon">
            <a href="#" title="点击更换头像"><img  class="iconImage" src="icon.PNG" width=80px height=80px/></a>
            <p class="name">我的昵称&nbsp; <a href="#" title="点击修改"><img class="modifyImage" src="modify.png" width="15px" height="15px"/></a></p>
        </div>

    </div>
    <div class="right">

        <ul class="nav1">
            <li class="selected">基本信息</li>
            <li>账号管理</li>
            <li>我的收藏</li>
            <li>我的关注</li>
            <li>查看通知</li>
        </ul>
        <div class="content">
            <div class="list ">
                <div class="info">
                    <table cellspacing="20">
                        <tr>
                            <th>昵&nbsp;&nbsp;称：</th> <td> </td> <td> </td><td >我的昵称</td>
                        </tr>

                        <tr>
                            <th >学&nbsp;&nbsp;校：</th><td> </td><td> </td><td>江西师范大学</td>
                        </tr>
                        <tr>
                            <th >学&nbsp;&nbsp;号：</th><td></td><td></td><td>201626701047</td>
                        </tr>
                        <tr>
                            <th >姓&nbsp;&nbsp;名：</th><td></td><td></td><td>王朝晖</td>
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
