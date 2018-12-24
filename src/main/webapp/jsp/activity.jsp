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
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
<%@include file="head.jsp"%>
    <div id="top" style="margin-top:52px;">
        <div id="top-1">
            <img src="images/avtivityicon.png" width="80" height="60"> <font size="+2"><strong>活动</strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4">丰富多彩的活动</font>
        </div>

        <hr width="88%" size="5" noshade=true>

        <div id="top-2" style="margin-top:30px;">
            <div class="tab" id="top-2-1">
                <ul>
                    <li> <strong>活动分类：</strong> </li>
                    <li class="active"><a href="javascript:void(0)" id="defaultOpen" class="tablinks" onClick="openCom(event,'all')" style="margin-left:30px;">全部</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'theory')" style="margin-left:30px;">思想政治与道德修养</a><span></span></li>
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
    <%--全部活动--%>
    <div id="all" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="all" items="${actlistAll}">
                <div class="by-3a">
                    <a href="activityintro.do?id=${all.activityId}" ><img style="margin-bottom:15px; border-radius:10px;" src="${all.activityPicture}" width="200" height="100">
                        <p><strong>${all.activityName}</strong></p>
                        <font size="-1" color="#999999">活动时间:${all.activityTime}</font>
                        <p><font color="#999999" size="-1">${all.activityIntro}</font></p>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
        <%--思想政治与道德修养--%>
    <div id="theory" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <c:forEach var="act1" items="${actlist1}">
                <div class="by-3a">
                    <a href="activityintro.do?id=${act1.activityId}" ><img style="margin-bottom:15px; border-radius:10px;" src="${act1.activityPicture}" width="200" height="100">
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
                    <a href="activityintro.do?id=${act2.activityId}" ><img style="margin-bottom:15px; border-radius:10px;" src="${act2.activityPicture}" width="200" height="100">
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
                    <a href="activityintro.do?id=${act3.activityId}" ><img style="margin-bottom:15px; border-radius:10px;" src="${act3.activityPicture}" width="200" height="100">
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
                    <a href="activityintro.do?id=${act4.activityId}" ><img style="margin-bottom:15px; border-radius:10px;" src="${act4.activityPicture}" width="200" height="100">
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
                    <a href="activityintro.do?id=${act5.activityId}" ><img style="margin-bottom:15px; border-radius:10px;" src="${act5.activityPicture}" width="200" height="100">
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
                    <a href="activityintro.do?id=${act6.activityId}" ><img style="margin-bottom:15px; border-radius:10px;" src="${act6.activityPicture}" width="200" height="100">
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
                    <a href="activityintro.do?id=${act7.activityId}" ><img style="margin-bottom:15px; border-radius:10px;" src="${act7.activityPicture}" width="200" height="100">
                        <p><strong>${act7.activityName}</strong></p>
                        <font size="-1" color="#999999">活动时间:${act7.activityTime}</font>
                        <p><font color="#999999" size="-1">${act7.activityIntro}</font></p>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
    <%@include file="foot.jsp"%>
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
