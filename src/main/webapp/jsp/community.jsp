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
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
<%@include file="head.jsp"%>
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
                    <a href="communityinformationindex.do?id=${comall.communityId}"><img style="margin-bottom:15px; border-radius:10px;" src="${comall.communityPicture}" width="200" height="100">
                    <p><strong>${comall.communityName}</strong></p>
                    <p><font color="#999999" size="-1">${comall.communityIntro}</font></p></a>
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
                    <a href="communityinformationindex.do?id=${com1.communityId}"><img style="margin-bottom:15px; border-radius:10px;" src="${com1.communityPicture}" width="200" height="100">
                    <p><strong>${com1.communityName}</strong></p>
                    <p><font color="#999999" size="-1">${com1.communityIntro}</font></p></a>
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
                    <a href="communityinformationindex.do?id=${com2.communityId}"><img style="margin-bottom:15px; border-radius:10px;" src="${com2.communityPicture}" width="200" height="100">
                    <p><strong>${com2.communityName}</strong></p>
                    <p><font color="#999999" size="-1">${com2.communityIntro}</font></p></a>
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
                    <a href="communityinformationindex.do?id=${com3.communityId}"><img style="margin-bottom:15px; border-radius:10px;" src="${com3.communityPicture}" width="200" height="100">
                    <p><strong>${com3.communityName}</strong></p>
                    <p><font color="#999999" size="-1">${com3.communityIntro}</font></p></a>
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
                    <a href="communityinformationindex.do?id=${com4.communityId}"><img style="margin-bottom:15px; border-radius:10px;" src="${com4.communityPicture}" width="200" height="100">
                    <p><strong>${com4.communityName}</strong></p>
                    <p><font color="#999999" size="-1">${com4.communityIntro}</font></p></a>
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
                <a href="communityinformationindex.do?id=${com5.communityId}"><img style="margin-bottom:15px; border-radius:10px;" src="${com5.communityPicture}" width="200" height="100">
                <p><strong>${com5.communityName}</strong></p>
                <p><font color="#999999" size="-1">${com5.communityIntro}</font></p></a>
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
                    <a href="communityinformationindex.do?id=${com6.communityId}"><img style="margin-bottom:15px; border-radius:10px;" src="${com6.communityPicture}" width="200" height="100">
                    <p><strong>${com6.communityName}</strong></p>
                    <p><font color="#999999" size="-1">${com6.communityIntro}</font></p></a>
                </div>
            </c:forEach>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
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
