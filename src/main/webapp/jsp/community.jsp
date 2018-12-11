<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/9
  Time: 19:32
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
    <link href="/css/community.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="body">

    <div id="head" class="row">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color:#BFF4D4">
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
    </div>


    <div id="top" style="margin-top:52px;">
        <div id="top-1">
            <img src="images/massorganizationsicon.png" width="80" height="60"> <font size="+2"><strong>社团</strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4">精彩的社团</font>
        </div>

        <hr width="88%" size="5" noshade=true>

        <div id="top-2" style="margin-top:30px;">
            <script type="text/javascript">
                function openCom(evt,CName) {
                    var i, tabcontent, tablinks;
                    tabcontent = document.getElementsByClassName("tabcontent");
                    for (i=0; i<tabcontent.length; i++) {
                        tabcontent[i].style.display = "none";
                    }
                    tablinks = document.getElementsByClassName("tablinks");
                    for (i=0; i<tablinks.length; i++) {
                        tablinks[i].className = tablinks[i].className.replace(" active", "");
                    }
                    document.getElementById(CName).style.display = "block";
                    evt.currentTarget.className += " active";
                }
            </script>
            <div class="tab" id="top-2-1">
                <ul>
                    <li><strong>社团分类：</strong></li>
                    <li class="active"><a href="javascript:void(0)" id="defaultOpen" class="tablinks" onClick="openCom(event,'all')" style="margin-left:30px;">全部</a></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'theory')" style="margin-left:30px;">理论研究类</a></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'technology')" style="margin-left:30px;">技能培养类</a></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'art')" style="margin-left:30px;">文学艺术类</a></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'sports')" style="margin-left:30px;">体育休闲类</a></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'asume')" style="margin-left:30px;">娱乐休闲类</a></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'other')"  style="margin-left:30px;">其他</a></li>
                </ul>
            </div>
        </div>  <!--top-2 -->
    </div> <!--top -->
    <%--全部社团--%>
    <div id="all" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="comall" items="${commAllList}">
                <div class="by-3a">
                    <img style="margin-bottom:15px; border-radius:10px;" src="${comall.communityPicture}" width="200" height="100">
                    <p><a href="#" ><strong>${comall.communityName}</strong></a></p>
                    <p><a href="#" ><font color="#999999" size="-1">${comall.communityIntro}</font></a></p>
                </div>
            </c:forEach>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
    </div>
    <!--理论的 -->  <%--理论研究类--%>
    <div id="theory" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="com1" items="${comm1}">
                <div class="by-3a">
                    <img style="margin-bottom:15px; border-radius:10px;" src="${com1.communityPicture}" width="200" height="100">
                    <p><a href="#" ><strong>${com1.communityName}</strong></a></p>
                    <p><a href="#" ><font color="#999999" size="-1">${com1.communityIntro}</font></a></p>
                </div>
            </c:forEach>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
    </div>
    <!--技能培养 --><%--技能培养类--%>
    <div id="technology" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:30px;">
            <c:forEach var="com2" items="${comm2}">
                <div class="by-3a">
                    <img style="margin-bottom:15px; border-radius:10px;" src="${com2.communityPicture}" width="200" height="100">
                    <p><a href="#" ><strong>${com2.communityName}</strong></a></p>
                    <p><a href="#" ><font color="#999999" size="-1">${com2.communityIntro}</font></a></p>
                </div>
            </c:forEach>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
    </div>
    <!--艺术--><%--文学艺术类--%>
    <div id="art" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:30px;">
            <c:forEach var="com3" items="${comm3}">
                <div class="by-3a">
                    <img style="margin-bottom:15px; border-radius:10px;" src="${com3.communityPicture}" width="200" height="100">
                    <p><a href="#" ><strong>${com3.communityName}</strong></a></p>
                    <p><a href="#" ><font color="#999999" size="-1">${com3.communityIntro}</font></a></p>
                </div>
            </c:forEach>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
    </div>
    <!--体育--><%--体育休闲类--%>
    <div id="sports" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:30px;">
            <c:forEach var="com4" items="${comm4}">
                <div class="by-3a">
                    <img style="margin-bottom:15px; border-radius:10px;" src="${com4.communityPicture}" width="200" height="100">
                    <p><a href="#" ><strong>${com4.communityName}</strong></a></p>
                    <p><a href="#" ><font color="#999999" size="-1">${com4.communityIntro}</font></a></p>
                </div>
            </c:forEach>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
    </div>
    <%--娱乐休闲类--%>
    <div id="asume" class="tabcontent">
        <div class="by-3" style="margin-top:30px;">
        <c:forEach var="com5" items="${comm5}">
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="${com5.communityPicture}" width="200" height="100">
                <p><a href="#" ><strong>${com5.communityName}</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">${com5.communityIntro}</font></a></p>
            </div>
        </c:forEach>
        </div>
    </div>
    <hr color="#999999"  width="100%" noshade=true >
    <%--其他类--%>
    <div id="other" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="com6" items="${comm6}">
                <div class="by-3a">
                    <img style="margin-bottom:15px; border-radius:10px;" src="${com6.communityPicture}" width="200" height="100">
                    <p><a href="#" ><strong>${com6.communityName}</strong></a></p>
                    <p><a href="#" ><font color="#999999" size="-1">${com6.communityIntro}</font></a></p>
                </div>
            </c:forEach>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
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
<script>
    document.getElementById("defaultOpen").click();
</script>
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("li").each(function(index) {
            $(this).click(function(){
                $("li").removeClass("active");
                $("li").eq(index).addClass("active");
            })

        });
    });
</script>
</body>
</html>
