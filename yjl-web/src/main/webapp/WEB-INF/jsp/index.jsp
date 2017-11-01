<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>新版页面-首页</title>
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
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-8 column">
					<div class="carousel slide" id="carousel-659411">
						<ol class="carousel-indicators">
							<li class="active" data-slide-to="0" data-target="#carousel-659411">
							</li>
							<li data-slide-to="1" data-target="#carousel-659411">
							</li>
							<li data-slide-to="2" data-target="#carousel-659411">
							</li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img alt="国画" src="<%=basePath%>resources/images/1.jpg" />
								<!-- <div class="carousel-caption">
									<h4>
										中国风
									</h4>
									<p>
										Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
									</p>
								</div> -->
							</div>
							<div class="item">
								<img alt="国画" src="<%=basePath%>resources/images/2.jpg" />
								<!-- <div class="carousel-caption">
									<h4>
										Second Thumbnail label
									</h4>
									<p>
										Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
									</p>
								</div> -->
							</div>
							<div class="item">
								<img alt="国画" src="<%=basePath%>resources/images/3.jpg" />
								<!-- <div class="carousel-caption">
									<h4>
										Third Thumbnail label
									</h4>
									<p>
										Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
									</p>
								</div> -->
							</div>
						</div> <a class="left carousel-control" href="#carousel-659411" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-659411" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
				</div>
				<div class="col-md-4 column">
					<div class="panel panel-default">
						<div class="panel-heading">
							<span class="glyphicon glyphicon-list-alt"></span><b>新闻公告</b></div>
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-12">
									<ul class="demo1">
										<c:forEach items="${news_list}" var="l" varStatus="vs">
											<li class="news-item">
												<table cellpadding="4">
													<tr>
														<td><img src="<%=basePath%>resources/images/8.png" width="40px" class="img-rounded" /></td>
														<!-- <td><strong>5分钟前</strong>收到 <a href="#">邮箱联系人Hillary</a>发送的邮件......<small><a href="#">详细内容</a></small></td> -->
														<td>&nbsp;<a href="#"><%--<fmt:formatDate value="${new.create_time}" pattern="yyyy/MM/dd" />--%>${l.title}</a></td>
													</tr>
												</table>
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel-footer">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="page-content" class="index-page container">
		<div class="row clearfix">
			<div class="col-md-6 column">
				
				<!-- VIDEO START -->
				<div class="box wrap-vid">
							<div class="zoom-container">
								<div class="zoom-caption">
									<span class="youtube">youku</span>
									<a href="http://v.youku.com/v_show/id_XNTc4MDE2NTUy.html">
										<i class="fa fa-play icon-play" style="color: #fff"></i>
									</a>
									<p>壹佳陆视频介绍</p>
								</div>
								<img src="<%=basePath%>resources/images/photo_600_400_03.jpg" />
							</div>
							<h3 class="vid-name"><a href="#">壹佳陆公司介绍</a></h3>
							<div class="info">
								<h5>By <a href="#">Kelvin</a></h5>
								<span><i class="fa fa-calendar"></i>30/6/2017</span> 
								<span><i class="fa fa-heart"></i>1,200</span>
							</div>
							<p class="more">北京壹佳陆拍卖有限公司是经北京市商务局批准成立的综合性拍卖公司。公司占地300多平米，主要经营现代字画、玉器、艺术品的拍卖，也是北京第一家专门服务于慈善事业的拍卖公司。公司遵循“公开、公平、公正、诚实信用”的原则，诚信经营、规范运作，为客户提供优质的中介服务。公司同时倡导全民参与，以弘扬慈善事业为宗旨，让百姓直接参与到慈善事业中，用拍卖变现的形式，实现拍卖平民化、慈善大众化、爱心全球化。</p>
				</div>
				<!-- VIDEO END -->
				<!-- PHOTO START -->
				<div class="box">
					<div class="box-header header-photo">
						<h2>藏品展示</h2>
					</div>
					<div class="box-content">
						<div id="owl-demo-2" class="owl-carousel">
							<div class="item">
								<img alt="玉器" title="玉器" src="<%=basePath%>resources/images/photo_600_400_01.jpg" />
								<img alt="玉器" title="玉器" src="<%=basePath%>resources/images/photo_600_400_02.jpg" />
							</div>
							<div class="item">
								<img alt="收藏品" title="收藏品" src="<%=basePath%>resources/images/photo_600_400_03.jpg" />
								<img alt="收藏品" title="收藏品" src="<%=basePath%>resources/images/photo_600_400_04.jpg" />
							</div>
							<div class="item">
								<img alt="木雕" title="木雕" src="<%=basePath%>resources/images/photo_600_400_05.jpg" />
								<img alt="玉器" title="玉器" src="<%=basePath%>resources/images/photo_600_400_06.jpg" />
							</div>
							<div class="item">
								<img alt="玛瑙" title="玛瑙" src="<%=basePath%>resources/images/photo_600_400_07.jpg" />
								<img alt="玛瑙" title="玛瑙" src="<%=basePath%>resources/images/photo_600_400_08.jpg" />
							</div>
							<div class="item">
								<img alt="玛瑙" title="玛瑙" src="<%=basePath%>resources/images/photo_600_400_09.jpg" />
								<img alt="珍珠" title="珍珠" src="<%=basePath%>resources/images/photo_600_400_10.jpg" />
							</div>
						</div>
					</div>
				</div>
				<!-- PHOTO END -->
			</div>
			<div class="col-md-3 column">
				<!-- start 最新活动 -->
				<div class="widget wid-vid">
						<div class="heading">
							<h4>最新活动</h4>
						</div>
						<div class="content">
							<ul class="nav nav-tabs">
								<li class="active"><a data-toggle="tab" href="#most">拍卖会</a></li>
								<li><a data-toggle="tab" href="#popular">热门拍卖品</a></li>
								<li><a data-toggle="tab" href="#random">拍卖预告</a></li>
							</ul>
							<div class="tab-content">
								<div id="most" class="tab-pane fade in active">
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<p>北京国际饭店</p>
											</div>
											<img src="<%=basePath%>resources/images/beijingfandianhuiyizhongxin.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="#">2017年拍卖会</a></h5>
											<div class="info">
												<h6>By <a href="#">壹佳陆</a></h6>
												<span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/6/2017</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<p>北京国际饭店</p>
											</div>
											<img src="<%=basePath%>resources/images/beijingfandianhuiyizhongxin.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="#">2017年拍卖会</a></h5>
											<div class="info">
												<h6>By <a href="#">壹佳陆</a></h6>
												<span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/6/2017</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<p>北京国际饭店</p>
											</div>
											<img src="<%=basePath%>resources/images/beijingfandianhuiyizhongxin.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="#">2017年拍卖会</a></h5>
											<div class="info">
												<h6>By <a href="#">壹佳陆</a></h6>
												<span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/6/2017</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
								</div>
								<div id="popular" class="tab-pane fade">
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<p>翡翠</p>
											</div>
											<img src="<%=basePath%>resources/images/photo_600_400_08.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="#">翡翠戒指</a></h5>
											<div class="info">
												<h6>By <a href="#">壹佳陆</a></h6>
												<span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/6/2018</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<p>玉器</p>
											</div>
											<img src="<%=basePath%>resources/images/photo_600_400_06.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="#">玉雕</a></h5>
											<div class="info">
												<h6>By <a href="#">壹佳陆</a></h6>
												<span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/6/2018</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<p>玉器</p>
											</div>
											<img src="<%=basePath%>resources/images/photo_600_400_04.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="#">玉佩</a></h5>
											<div class="info">
												<h6>By <a href="#">壹佳陆</a></h6>
												<span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/6/2018</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
								</div>
								<div id="random" class="tab-pane fade">
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="youtube">优酷</span>
												<a href="single.html">
													<i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
												</a>
												<p>敬请期待</p>
											</div>
											<img src="<%=basePath%>resources/images/4.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="#">敬请期待</a></h5>
											<div class="info">
												<h6>By <a href="#">壹佳陆</a></h6>
												<span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/6/2017</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="youtube">优酷</span>
												<a href="single.html">
													<i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
												</a>
												<p>敬请期待</p>
											</div>
											<img src="<%=basePath%>resources/images/4.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="#">敬请期待</a></h5>
											<div class="info">
												<h6>By <a href="#">壹佳陆</a></h6>
												<span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/6/2017</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="youtube">优酷</span>
												<a href="single.html">
													<i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
												</a>
												<p>敬请期待</p>
											</div>
											<img src="<%=basePath%>resources/images/4.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="#">敬请期待</a></h5>
											<div class="info">
												<h6>By <a href="#">壹佳陆</a></h6>
												<span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/6/2017</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end 最新活动 -->
					<!-- start 最新拍品 -->
					<div class="widget wid-new-post">
						<div class="heading"><h4>最新拍品</h4></div>
						<div class="content">
							<h6>翡翠戒指</h6>
							<img src="<%=basePath%>resources/images/photo_600_400_08.jpg" />
							<ul class="list-inline">
								<li><i class="fa fa-calendar"></i>25/7/2017</li> 
								<li><i class="fa fa-comments"></i>1,200</li>
							</ul>
							<p>18K白色金镶一颗玻璃种翡翠。翠色纯正，形制饱满。为翠中极品。尺寸20.64×16.65×6.52mm。。设计精美，工艺考究。</p>
							<h6>天然珍珠胸针</h6>
							<img src="<%=basePath%>resources/images/photo_600_400_10.jpg" />
							<ul class="list-inline">
								<li><i class="fa fa-calendar"></i>25/7/2017</li> 
								<li><i class="fa fa-comments"></i>1,200</li>
							</ul>
							<p>随形设计自然大气时尚雍容珍珠胸针</p>
						</div>
					</div>
					<!-- end 最新拍品 -->
			</div>
			<div class="col-md-3 column">
				<div class="widget wid-tags">
						<div class="heading"><h4>搜索</h4></div>
						<div class="content">
							<form role="form" class="form-horizontal" method="post" action="">
								<input type="text" placeholder="Enter Search Keywords" value="" name="v_search" id="v_search" class="form-control">
							</form>
						</div>
					</div>
					<!---- Start Widget ---->
					<div class="widget wid-tags">
						<div class="heading"><h4>分类</h4></div>
						<div class="content">
							<a href="#">玉器</a>
							<a href="#">瓷器</a>
							<a href="#">书画</a>
							<a href="#">紫砂</a>
							<a href="#">宝石</a>
							<a href="#">奇石</a>
							<a href="#">文玩</a>
							<a href="#">珍珠</a>
							<a href="#">玛瑙</a>
							<a href="#">其他</a>
						</div>
					</div>
					<!-- end 分类 -->
					<!-- start 日历 -->
					<div class="widget wid-calendar">
						<div class="heading"><h4>Calendar</h4></div>
						<div class="content">
							<center><form action="" role="form">        
								<div class="">
									<div class="input-group date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">                </div>
									<input type="hidden" id="dtp_input2" value="" /><br/>
								</div>
							</form></center>
						</div>
					</div>
					<!-- end 日历 -->
			</div>
		</div>
	</div>
</div>
	<%--<!-- start footer -->
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
	<!-- Footer -->--%>
<jsp:include page="common/footer.jsp" />

<script type="text/javascript">
	$(function (){
		$(".demo1").bootstrapNews({
			newsPerPage: 6,
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
        items : 3,
        
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