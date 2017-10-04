<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<link href="<%=basePath%>resources/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>resources/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="<%=basePath%>resources/css/default.css" rel="stylesheet">
<link href="<%=basePath%>resources/css/normalize.css" rel="stylesheet">
<link href="<%=basePath%>resources/css/site.css" rel="stylesheet">
<link href="<%=basePath%>resources/css/owl.carousel.css" rel="stylesheet">
<link href="<%=basePath%>resources/css/owl.theme.css" rel="stylesheet">
<link rel="stylesheet" href="<%=basePath%>resources/css/style.css">
<link rel="stylesheet" href="<%=basePath%>resources/css/font-awesome.min.css"  type="text/css">
<link href="<%=basePath%>resources/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

<script src="<%=basePath%>resources/js/jquery-1.11.1.js"></script>
<script src="<%=basePath%>resources/js/jquery.bootstrap.newsbox.min.js"></script>
<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
<script src="<%=basePath%>resources/js/owl.carousel.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=basePath%>resources/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=basePath%>resources/js/yjl.js" charset="UTF-8"></script>