<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/9
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
                    <strong><a class="navbar-brand " href="homepage.html">微&nbsp;&nbsp;&nbsp;动</a></strong>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <ul class="nav navbar-nav " style="float:left;">
                        <li><a href="massorganizations.html" >&nbsp;&nbsp;社&nbsp;团&nbsp;&nbsp;</a></li>
                        <li><a href="activity.html">&nbsp;活&nbsp;动&nbsp;&nbsp;</a></li>
                        <li><a href="information.html">&nbsp;比&nbsp;赛</a></li>
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
            <img src="avtivityicon.png" width="80" height="60"> <font size="+2"><strong>活动</strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4">丰富多彩的活动</font>
        </div>

        <hr width="88%" size="5" noshade=true>

        <div id="top-2" style="margin-top:30px;">
            <div class="tab" id="top-2-1">
                <ul>
                    <li> <strong>活动分类：</strong> </li>
                    <li class="active"><a href="javascript:void(0)" id="defaultOpen" class="tablinks" onClick="openCom(event,'theory')" style="margin-left:30px;">思想道德类</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'technology')" style="margin-left:30px;">社会实践类</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'art')" style="margin-left:30px;">学术科技类</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'sports')" style="margin-left:30px;">文化艺术类</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'organizations')" style="margin-left:30px;">社团活动类</a><span></span></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'all')"   style="margin-left:30px;">技能培训与其他</a><span></span></li>
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

    <div id="all" class="tabcontent">
        <div id="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div id="by-3" style="margin-top:20px;">
            <div id="by-3-1">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=3250797564,3005981821&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>1111</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12</font>
                <p><a href="#" ><font color="#999999" size="-1">普通话水平测试是对应试人运用普通话的规范程度、熟练程度的口语考试。考试形式为口试</font></a></p>
            </div>
            <div id="by-3-2">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=393338396,3843155276&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>2222</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12</font>
                <p><a href="#" ><font color="#999999" size="-1">由教育部考试中心主办，面向社会，用于考查应试人员计算机应用知识与技能的全国性计算机水平考试体系</font></a></p>
            </div>
            <div id="by-3-3">
                <img style="margin-bottom:15px; border-radius:10px;" src="timg(3).jpg" width="200" height="100">
                <p><a href="#"><strong>3333</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12</font>
                <p><a href="#" ><font color="#999999" size="-1">大学英语四级考试是由国家教育部高等教育司主持的全国性英语考试</font></a></p>
            </div>
            <div id="by-3-4">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>4444</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12</font>
                <p><a href="#" ><font color="#999999" size="-1">大学英语六级考试是由国家统一出题的，统一收费，统一组织考试，用来评定应试人英语能力的全国性的考试</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong></strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12</font>
                <p><a href="#" ><font color="#999999" size="-1">教师资格证考试，是由教育部考试中心官方设定的教师资格考试。</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>学校素拓课外培训班:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12</font>
                <p><a href="#" ><font color="#999999" size="-1">学校举办的吉他、街舞等技能培训，颁发结业证</font></a></p>
            </div>
        </div>

    </div> <!--其他的 -->

    <div id="theory" class="tabcontent">
        <div id="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div id="by-3" style="margin-top:20px;">
            <div id="by-3-1">
                <a href="#" ><img style="margin-bottom:15px; border-radius:10px;" src="u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
                    <p><strong>心理讲座:</strong></p>
                    <font size="-1" color="#999999">活动时间:2018.12.12</font>
                    <p><font color="#999999" size="-1">弘扬和传承中华传统文化，繁荣和丰富校园文化生活</font></p>
                </a>
            </div>
            <div id="by-3-2">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>共青团团课:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12</font>
                <p><a href="#" ><font color="#999999" size="-1">协会主要以丰富多彩的户外活动为主，辅以心理讲座</font></a></p>
            </div>
            <div id="by-3-3">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>就业指导讲座:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12</font>
                <p><a href="#" ><font color="#999999" size="-1">实现自身价值与社会价值相统一，树立远大理想与艰苦奋斗统一的原则</font></a></p>
            </div>
            <div id="by-3-4">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>百家讲坛讲座:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12</font>
                <p><a href="#" ><font color="#999999" size="-1">想在一片更远的天空成长，请来我们怀里！扶桑花开，别再等待！</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>党课宣讲:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12</font>
                <p><a href="#" ><font color="#999999" size="-1">以研究人文为基础，谈古论今</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1015704753,1572170115&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>国防讲座:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12</font>
                <p><a href="#" ><font color="#999999" size="-1">经典名著论坛，教授推荐好书</font></a></p>
            </div>
        </div>

    </div><!--思想的 -->

    <div id="technology" class="tabcontent">
        <div id="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div id="by-3" style="margin-top:20px;">
            <div id="by-3-1">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>校女生节活动：</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">欢迎同学们踊跃参加我们的足球社，一起感受足球的魅力</font></a>=</p>
            </div>
            <div id="by-3-2">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>党员下寝活动：</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">学习日语，掌握日语，运用日语；走进文化，了解文化</font></a></p>
            </div>
            <div id="by-3-3">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>献血活动:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">全心全意为外语爱好者服务</font></a></p>
            </div>
            <div id="by-3-4">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>蓝天定向越野:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">进取、共赢、求实、创新</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>敬老院活动:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">跃校园文化,丰富课余生活,在生活中寻找美、发现美、捕捉美</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1015704753,1572170115&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>书香晨光活动:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">以技能培训和实践锻炼为目的，会员们运用所学专业，学以致用</font></a></p>
            </div>
        </div>

    </div><!--社会实践 -->

    <div id="art" class="tabcontent">
        <div id="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div id="by-3" style="margin-top:20px;">
            <div id="by-3-1">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>校辩论赛:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">弘扬民族传统文化，普及京剧艺术</font></a></p>
            </div>
            <div id="by-3-2">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>南昌学生魔方联赛:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">繁荣文学创作，弘扬人文精神</font></a></p>
            </div>
            <div id="by-3-3">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>MCM竞赛:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">推进高雅艺术，普及群众性艺术活动，提高广大同学艺术修养</font></a></p>
            </div>
            <div id="by-3-4">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>计算机团体天梯赛:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">在经典中传承，在墨香中进步</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>大学生英语竞赛:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">千年技艺，你我传承</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1015704753,1572170115&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>高校金融挑战赛</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">为热爱动漫的同学提供一个交流、学习、展示的平台</font></a></p>
            </div>
        </div>

    </div><!--学术科技-->


    <div id="sports" class="tabcontent">
        <div id="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div id="by-3" style="margin-top:20px;">
            <div id="by-3-1">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>瑶湖杯足球赛:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">我们一起切磋球艺，我们一起以球会友</font></a></p>
            </div>
            <div id="by-3-2">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>校女子拔河赛:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">加入文旅学院旅行者社团，参加各种有趣的活动</font></a></p>
            </div>
            <div id="by-3-3">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>微型马拉松赛:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">礼义廉耻，忍耐克己，百折不屈</font></a></p>
            </div>
            <div id="by-3-4">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>师大图书馆微小说征集:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">爱好读书，感受读书魅力</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>蓝桥杯选拔测试:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">软院蓝桥杯选拔测试</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1015704753,1572170115&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>校心理话剧赛:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">心理协会举办的话剧大赛，欢迎大家踊跃参与</font></a></p>
            </div>
        </div>

    </div><!--文化艺术-->

    <div id="organizations" class="tabcontent">
        <div id="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div id="by-3" style="margin-top:20px;">
            <div id="by-3-1">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>i学习夜跑接力赛:</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">我们一起切磋球艺，我们一起以球会友</font></a></p>
            </div>
            <div id="by-3-2">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>瑶湖读史社团</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">读史活动:</font></a></p>
            </div>
            <div id="by-3-3">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>刀画协会</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">微课堂活动:</font></a></p>
            </div>
            <div id="by-3-4">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>蓝天社团</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">地球一小时活动:</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>国教学院</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#9999999" size="-1">青春留学生交流会:</font></a></p>
            </div>
            <div id="by-3-5">
                <img style="margin-bottom:15px; border-radius:10px;" src="u=1015704753,1572170115&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>羽协</strong></a></p>
                <font size="-1" color="#999999">活动时间:2018.12.12-2018.12.30</font>
                <p><a href="#" ><font color="#999999" size="-1">理事层联谊活动:</font></a></p>
            </div>
        </div>

    </div><!--社团活动-->

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
