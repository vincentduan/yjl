<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>新版页面-收藏知识</title>
	<link href="./css/bootstrap.min.css" rel="stylesheet">
	<link href="./css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="./css/default.css" rel="stylesheet">
	<link href="./css/normalize.css" rel="stylesheet">
	<link href="./css/site.css" rel="stylesheet">
	<link href="./css/owl.carousel.css" rel="stylesheet">
    <link href="./css/owl.theme.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css">
	<link rel="stylesheet" href="./css/font-awesome.min.css"  type="text/css">
	<link href="./css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
</head>
<body>
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
			<!-- <ul class="list-inline navbar-right top-social">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
				<li><a href="#"><i class="fa fa-youtube"></i></a></li>
			</ul> -->
		</div>
	</nav>
	<!--end Navigation-->
</header>

<div class="featured container">
	<div id="owl-demo" class="owl-carousel">
		<div class="item">
			<div class="zoom-container">
				<img src="images/20151119107378585.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="images/20175251323586067.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="images/201510211439293092.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="images/201511211354516451.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="images/2016324155131954.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="images/2016317163347170.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="images/2016226105593708.jpg" />
			</div>
		</div>
		<div class="item">
			<div class="zoom-container">
				<img src="images/2016225101166671.jpg" />
			</div>
		</div>
	</div>
</div>

<div id="page-content" class="archive-page container">
	<div class="">
		<div class="row">
			<div id="main-content" class="col-md-4">
				<div class="box">
					<center>
						<div class="box-header">
							<h3 class="center">收藏知识<small>-目录</small></h3>
						</div>
					</center>
					<div class="box-content">
						<ul>
							<li><a href="javascript:void(0);" onclick="getArticalContent(1);">书法鉴定方法</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(2);">和田玉的一些保养方法</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(3);">识别真假紫砂只需3分钟</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(4);">三点鉴定真玉</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(5);">保管字画的简易方法</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(6);">画品种及名称</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(7);">玉之极品和田玉</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(8);">奇石收藏知识</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(9);">翡翠质地</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(10);">玉件的保养与清洗</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(11);">如何选择佩戴适龄的灵动翡翠</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(12);">书画用印的忌讳</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(13);">翡翠的鉴别方法</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(14);">翡翠的形成</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(15);">浅谈中国书画装裱的重要性</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(16);">和田玉的鉴定</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(17);">投资当代书画艺术作品　切记三个为</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(18);">中国将成全球拍卖市场</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(19);">带玉的好处和功效</a></li>
							<li><a href="javascript:void(0);" onclick="getArticalContent(20);">玉：石头到玉器再到文化(一)</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="main-content" class="col-md-8">
				<div class="box">
					<center>
						<div class="box-header">
							<h4 class="center" id = "artical-title">和田玉的一些保养方法</h4>
						</div>
					</center>
					<div class="box-content" id = "artical-content">
						<p style="text-indent:2em">和田玉贵为“国玉”，到手之后每个人都它都是爱护有佳，在这里小编给出大家一些和田玉保养的知识供大家参考。

       1：玉件到手，先用常温清水浸泡2－3个小时（待表面附着物软化），然后用牙刷刷洗干净，再放入热水（新玉约70、80度左右，老玉约50、60度左右）中浸泡，浸泡到热水与玉慢慢自然冷却，通常我都会置于空气不流通的保温场所，让热水徐徐冷却。也籍此让玉的毛细孔得到充分的舒张，将内部污垢吐干净。如此进行约3个循环，之后大约每3个月到半年进行1次，夏季则约1到2个月进行1次。

       2：第二天开始盘玩，（请注意不让玉器直接接触肌肤），闲暇时可拿在手上盘玩，但记得手是干净的。还有平时千万记得不要把玉器放在脸上和鼻子上去抹油（经常见到），那油可不是所谓的玉的滋养液哦，反而适得其反会将玉门（毛细孔）封死，使盘出来的玉光泽显得很闷。还有我也不用猪鬃刷，因为刷出来的包浆感觉会带有贼光。在此建议平常可用柔软的”白色纯棉“长毛巾盘，但不宜使用染色布或或化纤性质的硬布料擦拭。

       3：在夏季经1个星期（冬季2－3个星期）盘玩后，每天晚上洗澡时用温清水（约40度），先浸泡一段时间再刷洗干净，请注意千万避免与肥皂直接接触，之后就只要常保持玉件的清洁即可。如方便也可常洗刷，众所周知，汗液带有盐分、挥发性脂肪酸及尿素等。玉件接触太多的汗，佩戴后又不即刻清理干净，时间一长玉件便会受到侵蚀，外层受损，影响原有的光泽度。尤其是白玉，更忌汗和油脂。白玉若过多接触汗液则容易变成淡黄色，不再纯白如脂。

       请注意玉最忌讳以下物质――香水、化学剂、肥皂和人体汗液。

       经过一段时间的盘玩，玉件本身的质地会渐渐地显露出来，好的玉温润有余，灵气十足，且会越看越赏心悦目！</p>
					</div>
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
		<p>Copyright &copy; 2017.北京壹佳陆拍卖有限公司 All rights reserved.</a></p>
	</div>
</footer>
<!-- Footer -->
<script src="./js/jquery-1.11.1.js"></script>
<script src="./js/jquery.bootstrap.newsbox.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/owl.carousel.js"></script>
<script type="text/javascript" src="./js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="./js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript">
	$(document).ready(function() {
      $("#owl-demo").owlCarousel({
        autoPlay: 3000,
        items : 5,
        itemsDesktop : [1199,4],
        itemsDesktopSmall : [979,4]
      });
    });

function getArticalContent(id){
	$.get("http://47.93.187.75:8080/yjl-web/index/" + id + "/detail", function(data, status){
		$("#artical-title").text(data.title);
		$("#artical-content").text(data.content);
	});
}

</script>
</body>
</html>