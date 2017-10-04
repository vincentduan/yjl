<%--
  Created by IntelliJ IDEA.
  User: vincent
  Date: 2017/10/4
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<header>
    <!--start Navigation-->
    <div class="container">
        <h2>
            北京壹佳陆拍卖有限公司&nbsp;<img src="<%=basePath%>resources/images/logo1.png" width="70px" />
        </h2>
    </div>

    <nav id="menu" class="navbar container" style="background-color:#3d626e;">
        <div class="navbar-header">
            <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
            <a class="navbar-brand" style="background-color:#324f43;" href="#">
                <div class="logo"><span>壹佳陆</span></div>
            </a>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.jsp">首页</a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">在线展示<i class="fa fa-arrow-circle-o-down"></i></a>
                    <div class="dropdown-menu" style="margin-left: -203.625px;">
                        <div class="dropdown-inner">
                            <ul class="list-unstyled">
                                <li><a href="exhibition.jsp?category=0">玉器</a></li>
                                <li><a href="exhibition.jsp?category=1">瓷器</a></li>
                                <li><a href="exhibition.jsp?category=2">书画</a></li>
                                <li><a href="exhibition.jsp?category=3">紫砂</a></li>
                            </ul>
                            <ul class="list-unstyled">
                                <li><a href="exhibition.jsp?category=4">宝石</a></li>
                                <li><a href="exhibition.jsp?category=5">奇石</a></li>
                                <li><a href="exhibition.jsp?category=6">文玩</a></li>
                            </ul>
                            <ul class="list-unstyled">
                                <li><a href="exhibition.jsp?category=7">其他</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="dropdown"><a href="collection.jsp">收藏知识</a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">关于我们 <i class="fa fa-arrow-circle-o-down"></i></a>
                    <div class="dropdown-menu">
                        <div class="dropdown-inner">
                            <ul class="list-unstyled">
                                <li><a href="profile.jsp">企业简介</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    <!--end Navigation-->
</header>
