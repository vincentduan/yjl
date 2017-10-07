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
<html>
<head>
    <title>管理页面</title>
    <jsp:include page="common/admin.jsp"/>

</head>
<body>
<header>
    <jsp:include page="common/admin-header.jsp"/>
</header>

<div class="container">
    <div class="col-md-12">
        <table class="product-table">

        </table>

    </div>

</div>
<script type="text/javascript">
    $(function () {
        initTable();
    });
    function initTable() {
        var url = "http://localhost:8080/yjl/admin/getProductList";
        $(".product-table").bootstrapTable({
            method:'GET',
            dataType:'json',
            striped:true,
            url:url,
            pagination:true,
            paginationVAlign:"top",
            columns:[
                {
                    field : 'name',
                    title : '展品名称',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'category',
                    title : '分类',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'create_time',
                    title : '上架时间',
                    align : 'center',
                    valign : 'middle',
                    formatter:function(value,row,index){
                        return new Date(parseInt(value)).toLocaleString().replace(/:\d{1,2}$/,' ');
                    }
                },{
                    field : 'price',
                    title : '拍卖价格',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'evaluate',
                    title : '评价',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'id',
                    title : '操作',
                    align : 'center',
                    valign : 'middle',
                    formatter:function(value,row,index){
                        var edit = "<a href='http://localhost:8080/yjl/admin/edit/"+value+"'>编辑</a>  ";
                        var del = "<a href='http://localhost:8080/yjl/admin/del/"+value+"'>删除</a>";
                        return edit+del;
                    }
            }
            ]
        })
    }
</script>
</body>
</html>
