<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%--
  Created by IntelliJ IDEA.
  User: 17878
  Date: 2018/12/12
  Time: 8:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
<head>
    <base href="<%=basePath%>">
    <title>微动</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="/css/release.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="body">
    <%--头部--%>
<%@include file="head.jsp"%>
    <div class="basic_information">
        <div class="basic_information_head">
            <span><font size="+1"><strong>基本信息</strong></font></span>
        </div><!--basic_information_head-->
        <form  name="form1" action="releaseactivity.do" method="post" enctype="multipart/form-data">
            <div class="information"><font>活动分类</font>

                    <select name="actClass">
                        <c:forEach var="allCla" items="${actClass}">
                            <option value="${allCla.claId}">${allCla.claName}</option>
                        </c:forEach>
                        <%--<option value="">学术课题</option><option>学术论文</option>
                        <option>科技制作</option><option>调查报告</option>
                        <option>创新实践</option><option>知识技能实践</option>
                        <option>学术讲座</option><option>其他创新项目</option>
                        <option>假期社会实践</option><option>公益社会实践</option>
                        <option>学生干部实践</option><option>社团社会实践</option>
                        <option>勤工俭学</option><option>其他社会实践</option>
                        <option>音乐教育</option><option>美术教育</option>
                        <option>舞蹈教育</option><option>文学创作</option>
                        <option>表演类艺术体育教育</option><option>其他艺术教育</option>
                        <option>三字一话</option><option>现代教育技术</option>
                        <option>课堂教学技能</option>--%>
                        </select>
               </div>

            <div class="information"><font>活动名称</font><input name="actName" value="象棋争夺战" type="text"  placeholder="清输入活动的名称" maxlength="10" /><br />
            </div>
            <div class="information"><font>报名时间</font><input name="actSignTime" value="2018-12-15" type="text" placeholder="写入活动报名时间：2018.12.1"></div>
            <div class="information"><font>活动时间</font><input name="actActTime" type="text"
                                                             value="2018-12-15"           placeholder="写入活动开始时间:2018-12-20" /><br />
            </div>
            <div class="information"><font>活动地点</font><input name="actAdress" value="先骕楼" type="text" placeholder="写入活动举办地点" /><br /></div>
            <div class="information"><font>活动人数</font><input name="peopleNum" value="12" type="text" placeholder="写入活动需要人数" /><br /></div>
            <div class="information_image">
                <div class="information_image_left"> 活动图片</div>
                <div class="information_image_center">
                    <img src="bgImage.png"  width="200" height="100" id="img_driver" alt="no" style="border: 1px solid #EEE0E0" >
                </div>
                <div class="information_image_right">
                    <font color="#F78A8C" >温馨提示:</font><br />
                    <font>1、图片的格式长宽比为2：1（例：200px*100px）</font><br />
                    <font>2、图片的格式可以为png/jpg/jepg</font><br />

                    <a href="javaScript:;"><button type="button" class="btn btn-block btn-primary btn-sm" onclick="driverUpload();">点击上传图片</button></a>
                    <input name="actImage" type="file" id="input_upload_driver"  style="display: none" accept="image/jpg, image/png, image/jpeg"  onChange="preview(this,'img_driver');">
                </div>
            </div>
            <div class="information"><font>活动主题</font><input name="actTopic" type="text" placeholder="写入活动发起的单位或者个人信息" /><br /></div>
            <div class="information"><font>活动详情</font><textarea name="actIntro" rows="10" cols="81" placeholder="写入活动的描述"></textarea></div>


        <a href="javaScript;"><button class="btn btn-default btn-sm active" style="margin:20px 350px; " onClick="keptFuntion()" >点击保存信息</button></a>

        </form>
    </div><!--basic_information-->


<%@include file="foot.jsp"%>

</div><!--body-->
<script type="text/javascript">
    function keptFuntion(){
        alert("保存当前信息");
        document.form1.submit();

    }
</script>
<script type="text/javascript">
    /**
     * 文件上传
     */
    function driverUpload() {
        $('#input_upload_driver').click(); // 模拟文件上传按钮点击操作
    }

    /**
     * 缩略图预览
     * @param file
     * @param container
     */
    var preview = function(file, container){
        //缩略图类定义
        var Picture  = function(file, container){
            var height = 0,
                width  = 0,
                ext    = '',
                size   = 0,
                name   = '',
                path   =  '';
            var self   = this;
            if(file){
                name = file.value;
                if(window.navigator.userAgent.indexOf("MSIE")>=1){
                    file.select();
                    path = document.selection.createRange().text;
                }else {
                    if(file.files){
                        path = window.URL.createObjectURL(file.files[0]);
                    }else{
                        path = file.value;
                    }
                }
            }else{
                throw '无效的文件';
            }
            ext = name.substr(name.lastIndexOf("."), name.length);
            if(container.tagName.toLowerCase() != 'img'){
                throw '不是一个有效的图片容器';
                container.visibility = 'hidden';
            }
            container.src = path;
            container.alt = name;
            container.style.visibility = 'visible';
            height = container.height;
            width  = container.width;
            size   = container.fileSize;
            this.get = function(name){
                return self[name];
            };
            this.isValid = function(){
                if(allowExt.indexOf(self.ext) !== -1){
                    throw '不允许上传该文件类型';
                    return false;
                }
            }
        };

        try{
            var pic =  new Picture(file, document.getElementById('' + container));
        }catch(e){
            alert(e);
        }
    };
</script>
</body>
</html>
