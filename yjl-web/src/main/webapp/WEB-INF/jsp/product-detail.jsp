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
<jsp:include page="common/header.jsp"/>
<div id="page-content" class="single-page container">
	<div class="row">
		<div id="main-content" class="col-md-12">
			<div class="box">
				<div class="wrap-vid">
                    <div style="text-align:center"><img src="<%=basePath%>resources/upload/${product.pic}"></div>
				</div>
                <br>
				<div class="line"></div>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3" >
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-md-2 control-label">名称</label>
                                <div class="col-md-10">
                                    <p class="form-control-static">${product.name}</p>
                                </div>
                                <label class="col-md-2 control-label">价格</label>
                                <div class="col-md-10">
                                    <p class="form-control-static">${product.price}</p>
                                </div>
                                <label class="col-md-2 control-label">评价</label>
                                <div class="col-md-10">
                                    <p class="form-control-static">${product.evaluate}</p>
                                </div>
                                <label class="col-md-2 control-label">上架时间</label>
                                <div class="col-md-10">
                                    <p class="form-control-static"><fmt:formatDate value="${product.create_time}" pattern="yyyy/MM/dd  HH:mm:ss" /></p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                ${brief}
				<div class="vid-tags">
					<a href="#">${category}</a>
				</div>
				<div class="line"></div>
				<div class="comment">
					<h3>留下联系方式</h3>
					<form name="form1" method="post" action="">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control input-lg" name="name" id="name" placeholder="姓名" required="required" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="email" class="form-control input-lg" name="email" id="email" placeholder="电子邮件" required="required" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
													<textarea name="message" id="message" class="form-control" rows="4" cols="25" required="required"
															  placeholder="Message"></textarea>
								</div>
								<button type="submit" class="btn btn-4 btn-block" name="btnBooking" id="btnBbooking">
									Book Now</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
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

</script>
</body>
</html>