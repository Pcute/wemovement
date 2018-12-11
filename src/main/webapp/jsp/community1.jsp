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
                    <li class="active"><a href="javascript:void(0)" id="defaultOpen" class="tablinks" onClick="openCom(event,'theory')" style="margin-left:30px;">理论研究类</a></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'technology')" style="margin-left:30px;">技能培养类</a></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'art')" style="margin-left:30px;">文学艺术类</a></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'sports')" style="margin-left:30px;">体育休闲类</a></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'asume')" style="margin-left:30px;">娱乐休闲类</a></li>
                    <li><a href="javascript:void(0)" class="tablinks" onClick="openCom(event,'all')"  style="margin-left:30px;">其他</a></li>
                </ul>
            </div>
        </div>  <!--top-2 -->
    </div> <!--top -->
    <div id="all" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=3250797564,3005981821&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>粤动协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">我们共寻粤味，我们聆听粤动人潮巷落，粤港城事</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=393338396,3843155276&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>大学生辩论团</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">辩论者，即以辨明是非为基准，以批驳谬误为目标，以提高认识为己任，以弘扬真理为最终目的</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/timg(3).jpg" width="200" height="100">
                <p><a href="#"><strong>韩语社</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">传播韩国文化，为广大的韩语爱好者提供韩语学习机会的平台</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>电子竞技协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">以提倡电子竞技奥林匹克精神，培养同学们的思维能力、四肢协调能力和意志力为主旨</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>ICO office协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">致力于为建设人文师大，和谐师大做出自己的贡献。</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>科学与幻想协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">科幻不只是一种文艺，也是一种观察世界的角度，一种思考人生的方式</font></a></p>
            </div>
        </div>
        <hr color="#999999"  width="100%" noshade=true >

        <div class="by-3" style="margin-top:30px;">
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>计算机科学协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">学习、思考、分享</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>电子商务协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">推广电子商务知识，提高专业技术水平</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>大学生电子科技创新与创业活动中心</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">以实践培训、电子竞赛、科研创业为基本途径</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>电脑爱好者协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">以服务校友为宗旨，以相互学习和共同进步为方向</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>IT爱好者协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">学习、奉献、团结</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>数学建模协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">基于学术，用于生活</font></a></p>
            </div>
        </div>
        <hr color="#999999"  width="100%" noshade=true >


        <div class="by-3" style="margin-top:30px;">
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>航模爱好者协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">走下网络，走出宿舍，走向操场，享受竞速，享受飞翔的自由</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>手绘艺术协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">为有共同志趣，共同追求的大学生提供一个交流技术的平台</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>演讲与辩论协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">一切从口开始</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>微博协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">凭借网络媒体的优势，汇聚微博之力，为全校师生提供丰富多彩的信息与资讯</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>互联网+科学教育社团</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">挑战教育新理念，公益联盟一起来</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>创客联盟</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">提供创业营销实践的机会，培养社会实践能力</font></a></p>
            </div>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
    </div> <!--其他 -->
    <div id="asume" class="tabcontent">
        <div class="by-3" style="margin-top:30px;">
        <div class="by-3a">
            <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
            <p><a href="#" ><strong>航模爱好者协会</strong></a></p>
            <p><a href="#" ><font color="#999999" size="-1">走下网络，走出宿舍，走向操场，享受竞速，享受飞翔的自由</font></a></p>
        </div>
        </div>
    </div><%--休闲娱乐--%>
    <div id="theory" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>传统文化发展研习会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">弘扬和传承中华传统文化，繁荣和丰富校园文化生活</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>心理协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">协会主要以丰富多彩的户外活动为主，辅以心理讲座</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>青年马克思主义研究会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">实现自身价值与社会价值相统一，树立远大理想与艰苦奋斗统一的原则</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>扶桑文化研究协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">想在一片更远的天空成长，请来我们怀里！扶桑花开，别再等待！</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>三国与人才研究会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">以研究人文为基础，谈古论今</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1015704753,1572170115&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>图书馆读者协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">经典名著论坛，教授推荐好书</font></a></p>
            </div>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
    </div><!--理论的 -->

    <div id="technology" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>足球社</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">欢迎同学们踊跃参加我们的足球社，一起感受足球的魅力</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>和风日语俱乐部</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">学习日语，掌握日语，运用日语；走进文化，了解文化</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>外语爱好者协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">全心全意为外语爱好者服务</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>金融业务协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">进取、共赢、求实、创新</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>摄影协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">跃校园文化,丰富课余生活,在生活中寻找美、发现美、捕捉美</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1015704753,1572170115&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>家电维修协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">以技能培训和实践锻炼为目的，会员们运用所学专业，学以致用</font></a></p>
            </div>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
    </div><!--技能培养 -->

    <div id="art" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>学生京剧团</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">弘扬民族传统文化，普及京剧艺术</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>青蓝文学社</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">繁荣文学创作，弘扬人文精神</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>大学生艺术团</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">推进高雅艺术，普及群众性艺术活动，提高广大同学艺术修养</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>正大书画协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">在经典中传承，在墨香中进步</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>瑶湖印社</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">千年技艺，你我传承</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1015704753,1572170115&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>myway动漫社</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">为热爱动漫的同学提供一个交流、学习、展示的平台</font></a></p>
            </div>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
    </div><!--艺术-->


    <div id="sports" class="tabcontent">
        <div class="by-2" style="margin-bottom:10px;">
            <span style="font-size:20px;"><strong></strong></span>
        </div>
        <div class="by-3" style="margin-top:20px;">
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#" ><strong>羽毛球协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">我们一起切磋球艺，我们一起以球会友</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>旅行者社团</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">加入文旅学院旅行者社团，参加各种有趣的活动</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>九天跆拳道</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">礼义廉耻，忍耐克己，百折不屈</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>篮球协会</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">爱好篮球，感受篮球魅力</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>国际交流联谊社</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">想和你一起在社团出游里寻到宝藏，笑与泪都分享不管情节多跌宕，我们不散场</font></a></p>
            </div>
            <div class="by-3a">
                <img style="margin-bottom:15px; border-radius:10px;" src="frontimages/u=1015704753,1572170115&fm=26&gp=0.jpg" width="200" height="100">
                <p><a href="#"><strong>心语手语社</strong></a></p>
                <p><a href="#" ><font color="#999999" size="-1">心语手语社</font></a></p>
            </div>
        </div>
        <hr color="#999999"  width="100%" noshade=true >
    </div><!--体育-->


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
