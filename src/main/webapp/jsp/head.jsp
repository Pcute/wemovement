<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/11
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
    <div id="head" class="row">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color: #8DC4F8">
            <div class="container-fluid">
                <div class="navbar-header col-lg-1 col-md-1 col-sm-1 col-xs-1" >
                    <strong><a class="navbar-brand " href="index.do">微&nbsp;&nbsp;&nbsp;动</a></strong>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <ul class="nav navbar-nav " style="float:left;">
                        <li><a href="communityindex.do" >&nbsp;&nbsp;社&nbsp;团&nbsp;&nbsp;</a></li>
                        <li><a href="activityindex.do">&nbsp;活&nbsp;动&nbsp;&nbsp;</a></li>
                        <li><a href="contestindex.do">&nbsp;比&nbsp;赛</a></li>
                    </ul>
                </div>
                <form class="navbar-form " role="search">
                    <div class="form-group col-lg-3 col-md-5 col-sm-5 col-xs-5">
                        <input type="text" class="form-control input-sm" placeholder="Search">
                        <button type="submit" class="btn btn-default btn-sm">搜索</button>
                    </div>
                </form>
                <div class="" >
                    <c:if test="${not empty longer}">
                        <a href="jsp/login.jsp"> <button style="float:right; " type="button" class="btn btn-default btn-sm">${loginName}</button></a>
                        <a href="enter.do?type=${loginRole}"><button style="float:right; " type="button" class="btn btn-default btn-sm">个人中心</button></a>
                        <a href="loginout.do"><button style="float:right; " type="button" class="btn btn-default btn-sm">退出</button></a>
                    </c:if>
                    <c:if test="${empty longer}">
                        <a href="jsp/regist.jsp"> <button style="float:right; margin-left:10px" type="button" class="btn btn-default  btn-sm">注册</button></a>
                        <a href="jsp/login.jsp"> <button style="float:right; " type="button" class="btn btn-default btn-sm">登陆</button></a>
                    </c:if>

                </div>
            </div>
        </nav>
    </div>