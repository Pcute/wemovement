<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <base href="<%=basePath%>">
</head>
<body>
<h2>Hello World!</h2>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="refresh" content="0;url=jsp/homepage.jsp"/>
</body>
</html>
