<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>新版页面-在线展示</title>
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
	%>
	<jsp:include page="common/import.jsp" />
</head>
<body>
<%--<header>
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
</header>--%>
<jsp:include page="common/header.jsp"/>
<div id="page-content" class="archive-page container">
	<div class="">
		<div class="row">
			<div id="main-content" class="col-md-12">
				<div class="box">
					<div class="row">
						<c:forEach items="${product_list}" var="product" varStatus="vs">
							<div class="col-md-3">
								<img src="<%=basePath%>resources/images/photo_600_400_06.jpg" />
								<h5><a href="#">${product.name}</a></h5>
								<span><i class="fa fa-calendar"></i> <fmt:formatDate value="${product.create_time}" pattern="yyyy/MM/dd  HH:mm:ss" /> </span><br>
								<p style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"><i class="fa fa-comment-o"> : </i>${product.evaluate}</p>
							</div>
						</c:forEach>
					</div>
				</div>
				<hr class="line">
				<div class="box">
					<center>
					<ul class="pagination">
						<li>
						  <a href="#" id="page-before" aria-label="Previous">
							<span aria-hidden="true">上一页</span>
						  </a>
						</li>
						<c:if test="${productPage.pageNo - 2 > 0}"><li><a href="#">${productPage.pageNo - 2}</a></li></c:if>
						<c:if test="${productPage.pageNo - 1 > 0}"><li><a href="#">${productPage.pageNo - 1}</a></li></c:if>
						<li><a href="#">当前页${productPage.pageNo}</a></li>
						<c:if test="${productPage.totalCount/8 - productPage.pageNo > 0}"><li><a href="#">${productPage.pageNo +1 }</a></li></c:if>
						<c:if test="${productPage.totalCount/8 - productPage.pageNo-1 > 0}"><li><a href="#">${productPage.pageNo +2 }</a></li></c:if>
						<li>
						  <a href="#" id="page-next" aria-label="Next">
							<span aria-hidden="true">下一页</span>
						  </a>
						</li>
					</ul>
				</center>
				</div>
			</div>
		</div>
	</div>
</div>/
	<!-- start footer -->
	<footer>
		<div class="wrap-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-footer footer-1">
						<div class="footer-heading"><h3><span style="color: #fff;">北京壹佳陆拍卖有限公司</span></h3></div>
						<div class="content">
							<p>地址:北京市海淀区车道沟一号1号楼西1层</p>
							<p>电话：010-68716986 68716989 18610904127</p>
							<p>邮编：100089</p>
							<p>邮箱：yi_jialu@163.com </p>
							<!-- <strong>Email address:</strong>
							<form action="#" method="post">
								<input type="text" name="your-name" value="" size="40" placeholder="Your Email" />
								<input type="submit" value="SUBSCRIBE" class="btn btn-3" />
							</form> -->
						</div>
					</div>
					<div class="col-md-4 col-footer footer-2">
						<div class="footer-heading"><h4>合作伙伴</h4></div>
						<div class="content">
							<a href="http://www.zggjysw.com/">中国国家艺术网</a><br>
							<a href="http://www.wenwuchina.com/a/58/216526.html">北京大学人文修养与文物鉴定高级研修班</a><br>
							<a href="http://www.chinahexie.org.cn/">中华和谐文化网</a><br>
							<a href="http://http//www.iizyz.com">中华艺术精品展网</a><br>
							<a href="http://www.bca.org.cn/bjcsxh/web/index.html">北京慈善协会</a><br>
							<a href="http://http//zhubao.cngold.org/c/2012-04-18/c1097468.html">澳门永利徕珠宝国际珠宝有限公司</a><br>
							
						</div>
					</div>
					<div class="col-md-4 col-footer footer-3">
						<div class="footer-heading"><h4>友情链接</h4></div>
						<div class="content">
							<ul>
								<li><a href="http://www.zggjysw.com/">中国国家艺术网</a></li>
								<li><a href="http://www.chinahexie.org.cn/">中华和谐文化网</a></li>
								<li><a href="http://www.artmuseumonline.org/">中华艺术精品展网</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right">
			<p>Copyright &copy; 2017.北京壹佳陆拍卖有限公司 All rights reserved.</p>
		</div>
	</footer>
	<!-- Footer -->
<script type="text/javascript">
	$(function (){
		$(".demo1").bootstrapNews({
			newsPerPage: 5,
			autoplay: true,
			pauseOnHover:true,
			direction: 'up',
			newsTickerInterval: 2000,
			onToDo: function () {
			}
		});
		$("#owl-demo-1").owlCarousel({
        autoPlay: 3000,
        items : 1,
        itemsDesktop : [1199,1],
        itemsDesktopSmall : [400,1]
      });
	  $("#owl-demo-2").owlCarousel({
        autoPlay: 3000,
        items : 3
      });
	});
	
	$('.form_date').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: true,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	

(function(){
	urlinfo=window.location.href;
	console.log("category=" + urlinfo.split("category=")[1]);
	//var category = urlinfo.split("category=")[1];
	//var product_page = ${product_list};
	//exhibition(product_page);
	page(${category}, ${productPage.totalCount}, ${productPage.pageNo}, ${productPage.pageSize}, ${nextPage}, ${prePage});
})();
</script>
</body>
</html>