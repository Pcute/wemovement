<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/9
  Time: 13:28
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
    <link href="/css/activity.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="body">

    <div id="head" class="row">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color:#BFF4D4">
            <div class="container-fluid">
                <div class="navbar-header col-lg-1 col-md-1 col-sm-1 col-xs-1" >
                    <strong><a class="navbar-brand " href="images/homepage.jsp">微&nbsp;&nbsp;&nbsp;动</a></strong>
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
            <img src="images/avtivityicon.png" width="80" height="60"> <font size="+2"><strong>活动</strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4">丰富多彩的活动</font>
        </div>

        <hr width="88%" size="5" noshade=true>

        <div id="top-2" style="margin-top:30px;">
            <div class="tab" id="top-2-1">
                <ul>
                    <li> <strong>活动分类：</strong> </li>
                    <li class="active"><a href="javascript:void(0)" id="defaultOpen" class="tablinks" onClick="openCom(event,'theory')" style="margin-left:30px;">思想政治与道德修养</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'volunteer')" style="margin-left:30px;">社会实践与志愿服务</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'academic')" style="margin-left:30px;">学术科技与创新创业</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'art')" style="margin-left:30px;">文化艺术与身心发展</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'organizations')" style="margin-left:30px;">社团活动与社会工作</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'teach')" style="margin-left:30px;">教师教育与教学技能</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'other')"   style="margin-left:30px;">技能培训与其他</a><span></span></li>
                    <%--<li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'all')"   style="margin-left:30px;">技能培训与其他</a><span></span></li>--%>
                </ul>
            </div>
        </div>  <!--top-2 -->
    </div> <!--top -->

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
        <%--思想政治与道德修养--%>
    <div id="theory" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="act1" items="${actlist1}">
                <div class="by-3a">
                    <a href="#" ><img style="margin-bottom:15px; border-radius:10px;" src="${act1.activityPicture}" width="200" height="100">
                        <p><strong>${act1.activityName}</strong></p>
                        <font size="-1" color="#999999">活动时间:${act1.activityTime}</font>
                        <p><font color="#999999" size="-1">${act1.activityIntro}</font></p>
                    </a>
                </div>
            </c:forEach>
        </div>

    </div>
    <%--社会实践与志愿服务--%>
    <div id="volunteer" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="act2" items="${actlist2}">
                <div class="by-3a">
                    <a href="#" ><img style="margin-bottom:15px; border-radius:10px;" src="${act2.activityPicture}" width="200" height="100">
                        <p><strong>${act2.activityName}</strong></p>
                        <font size="-1" color="#999999">活动时间:${act2.activityTime}</font>
                        <p><font color="#999999" size="-1">${act2.activityIntro}</font></p>
                    </a>
                </div>
            </c:forEach>
        </div>

    </div>
    <%--学术科技与创新创业--%>
    <div id="academic" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="act3" items="${actlist3}">
                <div class="by-3a">
                    <a href="#" ><img style="margin-bottom:15px; border-radius:10px;" src="${act3.activityPicture}" width="200" height="100">
                        <p><strong>${act3.activityName}</strong></p>
                        <font size="-1" color="#999999">活动时间:${act3.activityTime}</font>
                        <p><font color="#999999" size="-1">${act3.activityIntro}</font></p>
                    </a>
                </div>
            </c:forEach>
        </div>

    </div>
    <%--文化艺术与身心发展--%>
    <div id="art" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="act4" items="${actlist4}">
                <div class="by-3a">
                    <a href="#" ><img style="margin-bottom:15px; border-radius:10px;" src="${act4.activityPicture}" width="200" height="100">
                        <p><strong>${act4.activityName}</strong></p>
                        <font size="-1" color="#999999">活动时间:${act4.activityTime}</font>
                        <p><font color="#999999" size="-1">${act4.activityIntro}</font></p>
                    </a>
                </div>
            </c:forEach>
        </div>

    </div>
    <%--社团活动与社会工作--%>
    <div id="organizations" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="act5" items="${actlist5}">
                <div class="by-3a">
                    <a href="#" ><img style="margin-bottom:15px; border-radius:10px;" src="${act5.activityPicture}" width="200" height="100">
                        <p><strong>${act5.activityName}</strong></p>
                        <font size="-1" color="#999999">活动时间:${act5.activityTime}</font>
                        <p><font color="#999999" size="-1">${act5.activityIntro}</font></p>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
    <%--教师教育与教学技能--%>
    <div id="teach" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="act6" items="${actlist6}">
                <div class="by-3a">
                    <a href="#" ><img style="margin-bottom:15px; border-radius:10px;" src="${act6.activityPicture}" width="200" height="100">
                        <p><strong>${act6.activityName}</strong></p>
                        <font size="-1" color="#999999">活动时间:${act6.activityTime}</font>
                        <p><font color="#999999" size="-1">${act6.activityIntro}</font></p>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
    <%--技能培训与其他--%>
    <div id="other" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="act7" items="${actlist7}">
                <div class="by-3a">
                    <a href="#" ><img style="margin-bottom:15px; border-radius:10px;" src="${act7.activityPicture}" width="200" height="100">
                        <p><strong>${act7.activityName}</strong></p>
                        <font size="-1" color="#999999">活动时间:${act7.activityTime}</font>
                        <p><font color="#999999" size="-1">${act7.activityIntro}</font></p>
                    </a>
                </div>
            </c:forEach>
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
