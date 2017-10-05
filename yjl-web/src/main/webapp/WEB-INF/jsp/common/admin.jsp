<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<link href="<%=basePath%>resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=basePath%>resources/bootstrap-table/bootstrap-table.min.css" rel="stylesheet" />
<script src="<%=basePath%>resources/js/jquery-1.11.1.js"></script>
<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
<script src="<%=basePath%>resources/bootstrap-table/bootstrap-table.min.js" ></script>
<script src="<%=basePath%>resources/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
