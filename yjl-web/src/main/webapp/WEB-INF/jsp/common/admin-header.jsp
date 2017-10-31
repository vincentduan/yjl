<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<%=basePath%>index/index">壹佳陆</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <%--<li class="active"><a href="<%=basePath%>admin/index">展品管理 <span class="sr-only">(current)</span></a></li>--%>
                <li class="active dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">展品管理 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="<%=basePath%>admin/index">展品列表</a></li>
                        <li><a href="<%=basePath%>admin/add">展品添加</a></li>
                        <li><a href="javascript:void(0);" onclick="getOrderList()">拍卖订单</a></li>
                        <!-- <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li> -->
                    </ul>
                </li>
                <!-- <li><a href="#">新闻公告管理</a></li> -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">新闻公告管理<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:void(0);" onclick="getNewsList()">公告列表</a></li>
                        <li><a href="<%=basePath%>news/add">添加公告</a></li>
                        <!-- <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li> -->
                    </ul>
                </li>
            </ul>
            <!--
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            -->
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<%=basePath%>index/index">返回网站</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">账户信息 <span class="caret"></span></a>
                    <!--
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                    -->
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
