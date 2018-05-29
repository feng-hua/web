<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>花花世界</title>
	<style>
	/**初始化开始**/
	body{
		font-family:"\5b8b\4f53";
		font-size:12px;
	}
	body,ul,li,dd,dt,dl,p,div,img{
		padding:0;
		margin:0;
	}
	a{
		text-decoration:none;
		color:#000;
	}
	ul,li{
		list-style:none;
	}
	.fl{
		float:left;
	}
	.fr{
		float:right;
	}
	/**清除浮动**/
	.clearfix:after{
		display:block;
		conter:"-";
		height:0;
		line-height:0;
		visibility:hidden;
		clear:both;
	}
	.clearfix{
		zoom:1;
	}
	/***顶部导航开始*/
	.nav-top{
		background-color: #eee;
	}
	.nav-top-con{
		width:970px;
		height:30px;
		margin:0 auto;
	}
	.nav-top-con-l,nav-top-con-r{
		height:30px;
		line-height:30px;

	}
	.nav-top-con-r ul li a{
		display:inline-biock;
		line-height:30px;
		padding:10px;
	}
	/**logo搜索开始**/
	.logo-seach{
		width:970px;
		height:100px;
		margin:20px auto;
	}
	.logo{
		width:65px;
		height:95px;
	}
	.seach input[type="text"] {
		width:450px;
		height:30px;
	}
	.seach{
		margin-top:25px;
	}
	.seach-btn{
		display: inline-block;
		width: 50px;
		height: 36px;
		border: none;
		background: #85c031;
		cursor: pointer;
		margin-left: -7px;
		color: #fff;
	}
	/**主导航开始**/
	.nav{
		width:970px;
		height:40px;
		margin:0 auto;
		background-color: #85c031;
	}
	.nav ul li a{
		display:inline-block;
		height:40px;
		font:16px/40px 微软雅黑;
		padding-left:40px;
	}
	.nav ul li a:hover{
		color:#fff;
	}
	/**banner开始**/
	.banner{
		width:1903px;
		height:440px;
		border-top:2px solid #ff6a00;
		margin:10px auto 0;
	}
	/**鲜花栏目导航开始**/
    .flower{
    	width:970px;
		height:35px;
		margin:5px auto 15px;
		border-bottom:2px solid #85c031;
    }
    .flower a{
    	display:inline-block;
    	height:35px;
		font:16px/35px 微软雅黑;
    }
    .flower-list{
    	width:970px;
    	margin:0 auto;
    }
    .flower-list ul{
    	width:971px;
    	height:500px;
    }
    .flower-list ul li{
    	border:1px solid #ccc;
    	margin-left:5px;
    	margin-bottom:8px;
    	padding-left:10px;
    	float:left;
    }
        .flower{
    	width:970px;
		height:35px;
		margin:5px auto 15px;
		border-bottom:2px solid #85c031;
    }
    /**永生花列表开始**/
    .flower-f1{
    	width:970px;
    	height:800px;
    	margin:0 auto;
    }
    .flower-f1-t{
    	width:970px;
    	height:400px;
    }
    .flower-f1-t-l{
    	width:478px;
    	height:400px;
    	border:1px solid #eee;
    }
    .flower-f1-t-l-pic{
    	width:272px;
    	height:400px;
    }
    .flower-f1-t-l-pic img{
    	width:262px;
    	height:384px;
    	margin:10px 0 0 10px;
    }
    .flower-f1-t-l-con{
    	width:205px;
    	height:400px;
    }
    .t-l-con1{
    	font-family:微软雅黑;
    	font-size:14px;
    	color:#aaa;
    	padding-left:15px;
    	margin-top:25px;
    	margin-bottom:50px;
    }
    .flower-con{
    	color:#f00;
    	font-size:18px;
    	font-weight:700;
    	font-style:italic;
    }
    .flower-f1-t-r{
    	width:478px;
    	height:400px;
    	border:1px solid #eee;
    }
    .bug-btn{
    	width:138px;
    	height:45px;
    	border:1px solid #85c031;
    	background: #85c031;
    	margin-left:22px;  	
    }
    .bug-btn a{
    	display:inline-block;
    	font-size:20px;
    	line-height:40px;
    	color:#eee;
    	font-weight:700;
    	padding-left:30px;
    }
    
    /*中间分割线*/
    .con-con{
    	width:970px;
    	height:1px;
    	border-bottom:1px solid #eee;
    	margin-top:10px;
    	margin-botton:10px;
    }
    /**花语大全开始**/
    .flower-f2{
    	width:970px;
    	height:400px;
    	margin:0 auto;
    }
    .flower-f2-l{
    	width:320px;
    	height:400px;
    	border:1px solid #eee;
    }
    .flower-f2-l-t{
    	width:315px;
    	height:30px;
    	border-bottom:2px solid #eee;
    	padding:5px 0 0 5px;
    }
    .f2-l-tt1 p{
    	font-size:14px;
    	font-weight:700;
    	height:30px;
    	line-height:30px;
    }
    .f2-l-tt2 a{
    	display:inline-block;
    	height:30px;
    	line-height:30px;
    	color:#85c031;
    }
    .flower-f2-l-h{
    	width:315px;
    	height:130px;
    }
    .f2-l-hl{
    	width:160px;
    	height:120px;
    }
    .f2-l-hl img{
    	margin:5px 0 0 5px;
    }
    .f2-l-hr{
    	width:155px;
    	height:120px;
    }
    .f2-l-hr dt{
    	padding:10px 0 5px 5px;
    	font-weight:700;
    }
    .f2-l-hr dt a:hover{
    	color:#85c031;
    }

    .f2-l-hr dd{
    	padding:5px 0 5px 5px;
    	height:15px;
    	line-height:15px;
    }
    .f2-l-list{
    	width:315px;
    	height:220px;
    }
    .f2-l-list ul{
    	margin-left:20px;
    }
    .f2-l-list li{
    	height:28px;
    	line-height:28px;
    }
    .list-nub{
    	display:inline-block;
    	width:14px;
    	height:14px;
    	line-height:14px;
    	background:#85c031;
    	color:#fff;
    	text-align:center;
    	font-weight:700;
    	margin-right:10px;
    }
    .f2-l-list li a:hover{
    	color:#85c031;
    	text-decoration:underline;

    }
    .flower-f2-c{
    	width:320px;
    	height:400px;
    	border:1px solid #eee;
    	margin-left:2px;
    }
    .flower-f2-r{
    	width:320px;
    	height:400px;
    	border:1px solid #eee;
    }
    .friendlink{
    	width:970px;
    	height:100px;
    	border-top:1px solid #eee;
    	border-bottom:2px solid #85c031;
    	margin-top:25px;
    }
    .fr-link{
    	font-size:14px;
    	font-weight:700;
    	height:50px;
    	padding-top:15px;


    }
    .friendlink ul li{
    	float:left;
    	height:20px;
    	line-height:20px;
    	padding-left:20px;
    	padding-top:15px;
    }
    .fooder{
    	width:970px;
    }
    .fooder ul li{
    	float:left;
    	padding:10px;
    	text-align:center;
    }
    .fooder ul li span{
    	padding-left:10px;
    }
    .fooder-1{
    	width:970px;
    	height:40px;
    }
    .fooder-2 p{
    	width:970px;
    	height:30px;
    	text-align:center;
    	
    }


	</style>
</head>
<body>
<!--顶部导航-->
<div class="nav-top">
		<div class="nav-top-con">
			<div class="nav-top-con-l fl">
				您好，欢迎来到花花世界！
			</div>
			<div class="nav-top-con-r fr">
				<ul>
					<li>
						<a href="#">网站导航</a>
						<a href="#">会员中心</a>
						<a href="#">收藏本站</a>
						<a href="#">客服中心</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
<!--logo搜索-->
<div class="logo-seach clearfix">
		<div class="logo fl"><img src="image/logo.gif" alt="logo">
		</div>
		<div class="seach fr">
			<input type="text" value="请输入关键字">
			<span >
				<button class="seach-btn" type="button">搜索</button>
			</span>
		</div>
</div>
<!--主导航-->
<div class="nav clearfix">
	<ul>
		<li class="nav-warp fl">
			<a href="#">首页</a>
			<a href="#">鲜花</a>
			<a href="#">永生花</a>
			<a href="#">花语大全</a>
		</li>
	</ul>
</div>
<!--banner开始-->
<div class="banner"><img src="image/banner.jpg" alt=""></div>
<!--鲜花栏目导航-->
<div class="flower"><a href="#">鲜花 </a>  
	<span>送·让你怦然心动的人</span>
</div>
<!--鲜花产品列表-->
<div class="flower-list">
	<ul>
		<li><a href="#"></a>
		    <img src="image/1.jpg" alt="">
		</li>
		<li><a href="#"></a>
		    <img src="image/2.jpg" alt="">
		</li>
		<li><a href="#"></a>
		    <img src="image/3.jpg" alt="">
		</li>
		<li><a href="#"></a>
		    <img src="image/4.jpg" alt="">
		</li>
		<li><a href="#"></a>
		    <img src="image/5.jpg" alt="">
		</li>
		<li><a href="#"></a>
		    <img src="image/6.jpg" alt="">
		</li>
		<li><a href="#"></a>
		    <img src="image/7.jpg" alt="">
		</li>
		<li><a href="#"></a>
		    <img src="image/8.jpg" alt="">
		 </li>
	</ul>
</div>
<!--永生花栏目开始-->
<!--鲜花栏目导航-->
<div class="flower"><a href="#">永生花</a>  
	<span>许·她一生承诺</span>
</div>
<!--永生花列表开始-->
<div class="flower-f1">
	<!--永生花列表上部分盒子-->
	<div class="flower-f1-t">
		<!--永生花列表上部分盒子左边-->
		<div class="flower-f1-t-l fl">
			<div class="flower-f1-t-l-pic fl"><img src="image/17.jpg" alt=""></div>
			<div class="flower-f1-t-l-con fr">
				<div class="t-l-con1"><span class="flower-con">花语：</span>“等待爱情、只要用力呼吸，就能看见奇迹、等待无望的爱、心心相印和浪漫”！<br>“那一月，我转过所有经轮，不为超度，只为触摸你的指尖。”守住内心的信念，终会触摸到美好的爱情。<br>记忆就像薰衣草，曾经在这里发生的故事如同昨日烟云，淡远而温和，淡到极处，又刻在心底……恍惚的一瞬，才明白薰衣草花语就是等待……</div>
				<div class="bug-btn"><a href="#">立即购买</a></div>
			</div>
		</div>
		<!--永生花列表上部分盒子右边-->
		<div class="flower-f1-t-r fr">
			<div class="flower-f1-t-l-pic fl"><img src="image/20.jpg" alt=""></div>
			<div class="flower-f1-t-l-con fr">
				<div class="t-l-con1"><span class="flower-con">花语：</span>“等待爱情、只要用力呼吸，就能看见奇迹、等待无望的爱、心心相印和浪漫”！<br>“那一月，我转过所有经轮，不为超度，只为触摸你的指尖。”守住内心的信念，终会触摸到美好的爱情。<br>记忆就像薰衣草，曾经在这里发生的故事如同昨日烟云，淡远而温和，淡到极处，又刻在心底……恍惚的一瞬，才明白薰衣草花语就是等待……</div>
				<div class="bug-btn"><a href="#">立即购买</a></div>
			</div>
		</div>
	</div>
	<div class="con-con"></div>
	<!--永生花列表下部分盒子-->
	<div class="flower-f1-t">
		<!--永生花列表上部分盒子左边-->
		<div class="flower-f1-t-l fl">
			<div class="flower-f1-t-l-pic fl"><img src="image/21.jpg" alt=""></div>
			<div class="flower-f1-t-l-con fr">
				<div class="t-l-con1"><span class="flower-con">花语：</span>“等待爱情、只要用力呼吸，就能看见奇迹、等待无望的爱、心心相印和浪漫”！<br>“那一月，我转过所有经轮，不为超度，只为触摸你的指尖。”守住内心的信念，终会触摸到美好的爱情。<br>记忆就像薰衣草，曾经在这里发生的故事如同昨日烟云，淡远而温和，淡到极处，又刻在心底……恍惚的一瞬，才明白薰衣草花语就是等待……</div>
				<div class="bug-btn"><a href="#">立即购买</a></div>
			</div>
		</div>
		<!--永生花列表上部分盒子右边-->
		<div class="flower-f1-t-r fr">
			<div class="flower-f1-t-l-pic fl"><img src="image/11.jpg" alt=""></div>
			<div class="flower-f1-t-l-con fr">
				<div class="t-l-con1"><span class="flower-con">花语：</span>“等待爱情、只要用力呼吸，就能看见奇迹、等待无望的爱、心心相印和浪漫”！<br>“那一月，我转过所有经轮，不为超度，只为触摸你的指尖。”守住内心的信念，终会触摸到美好的爱情。<br>记忆就像薰衣草，曾经在这里发生的故事如同昨日烟云，淡远而温和，淡到极处，又刻在心底……恍惚的一瞬，才明白薰衣草花语就是等待……</div>
				<div class="bug-btn"><a href="#">立即购买</a></div>
			</div>
		</div>
	</div>
<!--花语大全开始-->
<div class="flower"><a href="#">花语大全</a>  
	<span>说·我应该早点告诉你</span>
</div>
<!--花语大全开始-->
<div class="flower-f2">
	<div class="flower-f2-l fl">
		<div class="flower-f2-l-t">
			<div class="f2-l-tt1 fl"><p>玫瑰花语</p></div>
			<div class="f2-l-tt2 fr"><a href="#">更多>></a></div>
		</div>
		<div class="flower-f2-l-h">
			<div class="f2-l-hl fl"><img src="image/22.jpg"></div>
			<div class="f2-l-hr fr">
			<dl>
				<dt><a href="">白色情人节，让玫瑰花记录感动的瞬间!</a></dt>
				<dd>鲜花作为白色情人节送人首选，不过是生活中最稀松平常的事物，亦不能随意变...</dd>
			</dl>
			</div>
		</div>
		<div class="f2-l-list">
			<ul>
				<li><span class="list-nub">1</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">2</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">3</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">4</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">5</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">6</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">7</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">8</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
			</ul>
		</div>
	</div>
	<div class="flower-f2-c fl">
				<div class="flower-f2-l-t">
			<div class="f2-l-tt1 fl"><p>满天星语</p></div>
			<div class="f2-l-tt2 fr"><a href="#">更多>></a></div>
		</div>
		<div class="flower-f2-l-h">
			<div class="f2-l-hl fl"><img src="image/24.jpg"></div>
			<div class="f2-l-hr fr">
			<dl>
				<dt><a href="">白色情人节，让玫瑰花记录感动的瞬间!</a></dt>
				<dd>鲜花作为白色情人节送人首选，不过是生活中最稀松平常的事物，亦不能随意变...</dd>
			</dl>
			</div>
		</div>
		<div class="f2-l-list">
			<ul>
				<li><span class="list-nub">1</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">2</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">3</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">4</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">5</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">6</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">7</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">8</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
			</ul>
		</div>
	</div>
	<div class="flower-f2-r fr">
				<div class="flower-f2-l-t">
			<div class="f2-l-tt1 fl"><p>薰衣草语</p></div>
			<div class="f2-l-tt2 fr"><a href="#">更多>></a></div>
		</div>
		<div class="flower-f2-l-h">
			<div class="f2-l-hl fl"><img src="image/23.jpg"></div>
			<div class="f2-l-hr fr">
			<dl>
				<dt><a href="">白色情人节，让玫瑰花记录感动的瞬间!</a></dt>
				<dd>鲜花作为白色情人节送人首选，不过是生活中最稀松平常的事物，亦不能随意变...</dd>
			</dl>
			</div>
		</div>
		<div class="f2-l-list">
			<ul>
				<li><span class="list-nub">1</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">2</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">3</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">4</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">5</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">6</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">7</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
				<li><span class="list-nub">8</span><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></li>
			</ul>
		</div>
	</div>
</div>
<!--友情链接开始-->
<div class="friendlink">
	<div class="fr-link fl">友情链接：</div>
	<ul>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
		<li><a href="#">鲜花网</a></li>
	</ul>
</div>
<div class="fooder">
	<div class="fooder-1">
		<ul>
			<li><a href="#">关于我们</a><span>|</span></li>
			<li><a href="#">关于我们</a><span>|</span></li>
			<li><a href="#">关于我们</a><span>|</span></li>
			<li><a href="#">关于我们</a><span>|</span></li>
			<li><a href="#">关于我们</a><span>|</span></li>
			<li><a href="#">关于我们</a><span>|</span></li>
			<li><a href="#">关于我们</a><span>|</span></li>
			<li><a href="#">关于我们</a><span>|</span></li>
			<li><a href="#">关于我们</a><span>|</span></li>
			<li><a href="#">关于我们</a><span>|</span></li>
		</ul>
	</div>
	<div class="fooder-2">
		<p>©2017 花花世界 版权所有</p>
	</div>
</div>
</body>
</html>
