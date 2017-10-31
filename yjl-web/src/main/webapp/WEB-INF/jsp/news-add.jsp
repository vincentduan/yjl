<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: vincent
  Date: 2017/10/4
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<head>
    <title>Title</title>
    <jsp:include page="common/admin.jsp"/>
    <script src="<%=basePath%>resources/ckEditor/ckeditor.js" ></script>
    <script src="<%=basePath%>resources/yjl/myEditor.js"></script>
    <script src="<%=basePath%>resources/bootstrap-fileupload/js/plugins/piexif.js"></script>
    <script src="<%=basePath%>resources/bootstrap-fileupload/js/fileinput.js"></script>
    <script src="<%=basePath%>resources/bootstrap-fileupload/js/locales/zh.js" type="text/javascript"></script>
    <script src="<%=basePath%>resources/bootstrap-fileupload/js/plugins/sortable.js" type="text/javascript"></script>
    <link href="<%=basePath%>resources/bootstrap-fileupload/css/fileinput.css" rel="stylesheet">
</head>
<body>
<jsp:include page="common/admin-header.jsp"/>
<div class="container">
    <div class="col-md-10 .col-md-offset-2">
        <form action="<%=basePath%>news/add" method="post" class="form-horizontal" enctype="multipart/form-data">
            <div class="form-group">
                <label for="title" class="col-md-2 control-label">标题：</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="title" name="title"  placeholder="title">
                </div>
            </div>

            <div class="form-group">
                <label for="content" class="col-md-2 control-label">内容：</label>
                <div class="col-md-10">
                    <textarea id="content" name="content"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <button id="submit" class="btn btn-default">提交</button>
                    <button id="cancel" class="btn btn-default" onclick="window.history.back(-1);" >取消</button>
                </div>
            </div>
        </form>
    </div>
</div>
<jsp:include page="common/admin-script.jsp"/>
<script>
    CKEDITOR.config.height = 500;
    CKEDITOR.config.width = 'auto';
    CKEDITOR.replace( 'content' );

</script>
</body>
</html>
