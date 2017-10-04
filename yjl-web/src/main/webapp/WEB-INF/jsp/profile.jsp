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

<div class="featured container">
	<div id="owl-demo" class="owl-carousel">
		<div class="item">
			<div class="zoom-container">
				<img src="<%=basePath%>resources/images/20151119107378585.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="<%=basePath%>resources/images/20175251323586067.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="<%=basePath%>resources/images/201510211439293092.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="<%=basePath%>resources/images/201511211354516451.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="<%=basePath%>resources/images/2016324155131954.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="<%=basePath%>resources/images/2016317163347170.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="<%=basePath%>resources/images/2016226105593708.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="<%=basePath%>resources/images/2016225101166671.jpg" />
			</div>
		</div>
	</div>
</div>

<div id="page-content" class="archive-page container">
	<div class="">
		<div class="row">
			<div id="main-content" class="col-md-12">
				<div class="box">
					<center>
						<div class="box-header">
							<h1 class="center">公司简介</h1>
						</div>
					</center>
					<div class="box-content">
						<p style="text-indent:2em">北京壹佳陆拍卖有限公司是经北京市商务局批准成立的综合性拍卖公司。公司占地300多平米，主要经营现代字画、玉器、艺术品的拍卖，也是北京第一家专门服务于慈善事业的拍卖公司。</p><p>
公司遵循“公开、公平、公正、诚实信用”的原则，诚信经营、规范运作，为客户提供优质的中介服务。公司同时倡导全民参与，以弘扬慈善事业为宗旨，让百姓直接参与到慈善事业中，用拍卖变现的形式，实现拍卖平民化、慈善大众化、爱心全球化。</p><p>
为发扬中华民族扶贫济危的优良传统，帮助贫困群众。北京壹佳陆拍卖有限公司成立之初就与北京市慈善协会建立了良好的协作关系，并共同建立了“壹佳陆银发关爱资金”，用于关爱老年人的心理健康。公司曾成功举办首都慈善爱心义拍活动，得到社会广泛好评。</p><p style="text-indent:2em">
北京壹佳陆拍卖有限公司于2011年12月在北京长安俱乐部举行了义拍，由北京市慈善协会主办，北京慈善艺术院协办，北京壹佳陆拍卖有限公司承办，并请了有关领导和部分画家参加。此次义拍活动由全国人大常委会原副委员长、市慈善协会名誉会长何鲁丽举起道锤，由著名画家阿老为拍卖会开锤，并请原中拍协会副秘书长、现为中央财经大学拍卖中心名誉主任王凤海（国家注册拍卖师）主持拍卖会，义拍圆满成功。</p><p>
到现场参加活动的领导有：原第十届全国人大常委会副委员长何鲁丽、北京市政府原常务副市长翟鸿祥、北京市慈善协会原副会长朱蓉先、慈善家李春平、市慈善协会副会长雷占泉等等。</p><p style="text-indent:2em">
公司董事长杨玉柱先生具有国际战略眼光，并于2012年4月份与香港永利集团董事长叶云妮女士签订战略协议，为公司的发展迈出了具有战略意义的一步。</p><p style="text-indent:2em">
此外，公司实施“创新管理、人才机制、人性化服务”三大经营战略，积极推动和谐社会首善之区的建设，通过搭建专业化公益化拍卖服务平台，积极打造“规范运作、遵法经营、诚信服务”的企业形象。目前，壹佳陆主要从事现代字画、玉器及工艺品的拍卖，涵盖中国书画、油画、瓷器玉器、竹木牙角、钻石翡翠等。</p><p style="text-indent:2em">
在壹佳陆，慈善不是数字，慈善不是金钱，慈善不是秀场。壹佳陆用自己的勤劳与智慧广纳收藏家、鉴赏家、投资家等社会各界人士一起，为推广和普及中国艺术品的收藏鉴赏及中国慈善事业贡献着力量。我们坚信，随着社会的发展、市场优胜劣汰的规则及法律法规的完善与实施，中国慈善事业、拍卖领域将迎来一场新变革，而我们则会在这场变革中更加活跃的发展壮大。</p><p style="text-indent:2em">
展望未来，壹佳陆将凭借创新、管理、人才建设、透明化服务等优势，持续公司活力，推进公司发展进程，使慈善拍卖遍布全国，惠及四方。
					</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="common/footer.jsp"/>
<script type="text/javascript">
	$(document).ready(function() {
      $("#owl-demo").owlCarousel({
        autoPlay: 3000,
        items : 5,
        itemsDesktop : [1199,4],
        itemsDesktopSmall : [979,4]
      });

    });
</script>
</body>
</html>