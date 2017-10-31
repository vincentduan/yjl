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
        <form action="<%=basePath%>admin/edit/${productWithBLOBs.id}" method="post" class="form-horizontal" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name" class="col-md-2 control-label">名称：</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="name" name="name" value="${productWithBLOBs.name}" placeholder="Name">
                </div>
            </div>
            <div class="form-group">
                <label for="name" class="col-md-2 control-label">封面：</label>
                <div class="col-md-8">
                    <div class="file-loading">
                        <input id="file-1" type="file" name="cover" class="file" data-overwrite-initial="false" data-min-file-count="1">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="price" class="col-md-2 control-label">价格：</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="price" name="price" value="${productWithBLOBs.price}" placeholder="Price">
                </div>
            </div>
            <div class="form-group">
                <label for="category" class="col-md-2 control-label">分类：</label>
                <div class="col-md-8">
                    <%--<input type="text" class="form-control" id="category" name="category" value="${productWithBLOBs.category}" placeholder="Category">--%>
                    <select class="form-control" id="category" name="category">
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="evaluate" class="col-md-2 control-label">评价：</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="evaluate" name="evaluate" value="${productWithBLOBs.evaluate}" placeholder="Evaluate">
                </div>
            </div>
            <div class="form-group">
                <label for="brief" class="col-md-2 control-label">详细信息：</label>
                <div class="col-md-10">
                    <textarea id="brief" name="brief">${brief}</textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <input type="hidden" name="id" value="${productWithBLOBs.id}">
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
    //加载CKEditor
    initSample();

    /*$("#submit").click(function () {
        console.log($("#name").val());
        console.log(CKEDITOR.instances.brief.getData())
    })*/

    /*$("#cancel").click(function () {

    })*/


    function categoryOption(){
        var select = $("#category");
        //获取categoryList
        $.ajax({
            type: "get",
            url:"<%=basePath%>category/list",
            dataType: "json",
            success: function(list){
                $.each(list, function(index, e){
                    select.append("<option value='"+e.id+"'>"+e.name+"</option>");
                });
                //设置选中分类
                select.val(${productWithBLOBs.category});
            }
        })
    }
    //设置分类
    categoryOption();

    $("#file-1").fileinput({
        showUpload: false,
        theme: 'zh',
        uploadUrl: '<%=basePath%>admin/edit/${productWithBLOBs.id}', // you must set a valid URL here else you will get an error
        allowedFileExtensions: ['jpg', 'png', 'gif','jpeg'],
        showClose: false,
        dropZoneEnabled:false,
        maxFileSize: 600,
        maxFilesNum: 1,
        resizeImage: true,
        maxImageWidth: 200,
        maxImageHeight: 200,
        resizePreference: 'width',
        slugCallback: function (filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
    });
</script>
</body>
</html>
