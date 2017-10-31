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
        <table class="product-table"></table>
    </div>

</div>
<jsp:include page="common/admin-script.jsp"/>
<script type="text/javascript">
    $(function () {
        initTable();
    });

</script>
</body>
</html>
