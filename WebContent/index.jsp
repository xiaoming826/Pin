<%@page import="com.xinxin.model.Company"%>
<%@page import="com.xinxin.dao.impl.CompanyDaoImpl"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.xinxin.model.JobInfo"%>
<%@page import="java.util.List"%>
<%@page import="com.xinxin.dao.impl.JobInfoDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<script id="allmobilize" charset="utf-8"
	src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld" />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="" name="description">
<meta content="" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />


<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css" />
<link rel="stylesheet" type="text/css" href="style/css/external.min.css" />
<link rel="stylesheet" type="text/css" href="style/css/popup.css" />
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/additional-methods.js"></script>
<script type="text/javascript" src="style/js/conv.js"></script>
</head>
<body>
	<div id="body">
		<jsp:include page="header.jsp" />
		<!-- end #header -->
		<div id="container">
			<div class="content">
				<div id="search_box">
					<form id="searchForm" name="searchForm" action="job"
						method="get">
						<ul id="searchType">
							<li data-searchtype="1" class="type_selected">职位</li>
							<li data-searchtype="4">公司</li>
						</ul>
						<div class="searchtype_arrow"></div>
						<input type="text" id="search_input" name="word" tabindex="1" width="800px"
							value="" placeholder="请输入职位名称，如：产品经理" /> <input type="hidden"
							name="spc" id="spcInput" value="" /> <input type="hidden"
							name="action"  value="query" /> <input type="hidden"
							name="pl" id="plInput" value="" /> <input type="hidden"
							name="gj" id="gjInput" value="" /> <input type="hidden"
							name="xl" id="xlInput" value="" /> <input type="hidden"
							name="yx" id="yxInput" value="" /> <input type="hidden"
							name="gx" id="gxInput" value="" /> <input type="hidden"
							name="st" id="stInput" value="" /> <input type="hidden"
							name="labelWords" id="labelWords" value="" /> <input
							type="hidden" name="lc" id="lc" value="" /> <input type="hidden"
							name="workAddress" id="workAddress" value="" /> <input
							type="hidden" name="city" id="cityInput" value="" /> <input
							type="submit" id="search_button" value="搜索" />

					</form>
				</div>
				<style>
.ui-autocomplete {
	width: 488px;
	background: #fafafa !important;
	position: relative;
	z-index: 10;
	border: 2px solid #91cebe;
}

.ui-autocomplete-category {
	font-size: 16px;
	color: #999;
	width: 50px;
	position: absolute;
	z-index: 11;
	right: 0px; /*top: 6px; */
	text-align: center;
	border-top: 1px dashed #e5e5e5;
	padding: 5px 0;
}

.ui-menu-item {
	*width: 439px;
	vertical-align: middle;
	position: relative;
	margin: 0px;
	margin-right: 50px !important;
	background: #fff;
	border-right: 1px dashed #ededed;
}

.ui-menu-item a {
	display: block;
	overflow: hidden;
}
</style>
				<script type="text/javascript" src="style/js/search.min.js"></script>
			<br>
				<ul class="reset hotabbing">
					<li class="current">热门职位</li>
					<li>最新职位</li>
				</ul>
				<div id="hotList">
					<ul class="hot_pos reset">
					<%
					// List<Company> companyList = (List<Company>)request.getAttribute("companyList");
					List<JobInfo> jobs = (List<JobInfo>)request.getAttribute("jobList");
					if(jobs==null){
						jobs = new JobInfoDaoImpl().getAll();
					}
					for (int i = 0; i < jobs.size(); i++) {
						JobInfo job = jobs.get(i);
						if(i%2==0){
							%>
							<li class="clearfix">
							<div class="hot_pos_l">
								<div class="mb10">
									<a href="job?action=show&id=<%=job.getId() %>" target="_blank"><%=job.getTitle() %></a> &nbsp; <span
										class="c9">[<%=job.getAddrs() %>]</span>
								</div>
								<span><em class="c7">月薪： </em><%=job.getMoney() %></span> <span><em
									class="c7">经验：</em> <%=job.getExperience() %></span> <span><em class="c7">最低学历：
								</em> <%=job.getExperience() %> </span> <br /> <span><em class="c7">职位诱惑：</em>发展前景</span> <br /> <span> <%=job.getDateTime() %></span>
								<!-- <a  class="wb">分享到微博</a> -->
							</div>
							<div class="hot_pos_r">
								<div class="mb10 recompany">
									<a href="h/c/399.html" target="_blank"><%=new CompanyDaoImpl().queryById(job.getCid()).getCompanyName() %></a>
								</div>
								<span><em class="c7">电话：</em> <%=new CompanyDaoImpl().queryById(job.getCid()).getTel() %></span> <span><em
									class="c7">创始人：</em><%=new CompanyDaoImpl().queryById(job.getCid()).getName() %></span> <br /> <span><em class="c7">地址：</em>
									<%=new CompanyDaoImpl().queryById(job.getCid()).getCompanyAddrs() %></span> 
								<ul class="companyTags reset">
									<li>五险一金</li>
								</ul>
							</div>
						</li>
							<%
						}else {
							%>
							<li class="odd clearfix">
							<div class="hot_pos_l">
								<div class="mb10">
									<a href="job?action=show&id=<%=job.getId() %>" target="_blank"><%=job.getTitle() %></a> &nbsp; <span
										class="c9">[<%=job.getAddrs() %>]</span>
								</div>
								<span><em class="c7">月薪： </em><%=job.getMoney() %></span> <span><em
									class="c7">经验：</em> <%=job.getExperience() %></span> <span><em class="c7">最低学历：
								</em> <%=job.getExperience() %> </span> <br /> <span><em class="c7">职位诱惑：</em>发展前景</span> <br /> <span> <%=job.getDateTime() %></span>
								<!-- <a  class="wb">分享到微博</a> -->
							</div>
							<div class="hot_pos_r">
								<div class="mb10 recompany">
									<a href="h/c/399.html" target="_blank"><%=new CompanyDaoImpl().queryById(job.getCid()).getCompanyName() %></a>
								</div>
								<span><em class="c7">电话：</em> <%=new CompanyDaoImpl().queryById(job.getCid()).getTel() %></span> <span><em
									class="c7">创始人：</em><%=new CompanyDaoImpl().queryById(job.getCid()).getName() %></span> <br /> <span><em class="c7">地址：</em>
									<%=new CompanyDaoImpl().queryById(job.getCid()).getCompanyAddrs() %></span> 
								<ul class="companyTags reset">
									<li>五险一金</li>
								</ul>
							</div>
						</li>
							<%
						}
					}
					%>
					<!-- 	<li class="odd clearfix">
							<div class="hot_pos_l">
								<div class="mb10">
									<a href="h/jobs/120282.html" target="_blank">资深.Net开发工程师-北京-02466</a>
									&nbsp; <span class="c9">[北京]</span>
								</div>
								<span><em class="c7">月薪： </em>15k-22k</span> <span><em
									class="c7">经验：</em>5-10年</span> <span><em class="c7">最低学历：</em>
									本科</span> <br /> <span><em class="c7">职位诱惑：</em>六险一金，饭补，班车，晋升机制，氛围好</span>
								<br /> <span>14:16发布</span>
								<a  class="wb">分享到微博</a>
							</div>
							<div class="hot_pos_r">
								<div class="mb10">
									<a href="h/c/8143.html" target="_blank">途家网</a>
								</div>
								<span><em class="c7">领域：</em> 移动互联网,O2O</span> <span><em
									class="c7">创始人：</em>罗军</span> <br /> <span> <em class="c7">阶段：
								</em>成长型(B轮)
								</span> <span> <em class="c7">规模：</em>500-2000人
								</span>
								<ul class="companyTags reset">
									<li>绩效奖金</li>
									<li>五险一金</li>
									<li>带薪年假</li>
								</ul>
							</div>
						</li>
						<li class="clearfix">
							<div class="hot_pos_l">
								<div class="mb10">
									<a href="h/jobs/91655.html" target="_blank">市场策划经理-线上活动-北京-02267</a>
									&nbsp; <span class="c9">[北京]</span>
								</div>
								<span><em class="c7">月薪： </em>10k-15k</span> <span><em
									class="c7">经验：</em>5-10年</span> <span><em class="c7">最低学历：</em>
									本科</span> <br /> <span><em class="c7">职位诱惑：</em>六险一金，饭补，班车，晋升机制，氛围好</span>
								<br /> <span>14:16发布</span>
								<a  class="wb">分享到微博</a>
							</div>
							<div class="hot_pos_r">
								<div class="mb10">
									<a href="h/c/8143.html" target="_blank">途家网</a>
								</div>
								<span><em class="c7">领域：</em> 移动互联网,O2O</span> <span><em
									class="c7">创始人：</em>罗军</span> <br /> <span> <em class="c7">阶段：
								</em>成长型(B轮)
								</span> <span> <em class="c7">规模：</em>500-2000人
								</span>
								<ul class="companyTags reset">
									<li>绩效奖金</li>
									<li>五险一金</li>
									<li>带薪年假</li>
								</ul>
							</div>
						</li> -->
						<a href="list.html?city=%E5%85%A8%E5%9B%BD" class="btn fr"
							target="_blank">查看更多</a>
					</ul>
				</div>

				<div class="clear"></div>
				<div id="linkbox">
					<dl>
						<dt>友情链接</dt>
						<dd>
							<a href="http://www.zhuqu.com/" target="_blank">住趣家居网</a> <span>|</span>
							<a href="http://www.woshipm.com/" target="_blank">人人都是产品经理</a> <span>|</span>
							<a href="http://zaodula.com/" target="_blank">互联网er的早读课</a> <span>|</span>
							<a href="http://lieyunwang.com/" target="_blank">猎云网</a> <span>|</span>
							<a href="http://www.ucloud.cn/" target="_blank">UCloud</a> <span>|</span>
							<a href="http://www.iconfans.com/" target="_blank">iconfans</a> <span>|</span>
							<a href="http://www.html5dw.com/" target="_blank">html5梦工厂</a> <span>|</span>
							<a href="http://www.sykong.com/" target="_blank">手游那点事</a> <a
								href="http://www.php100.com/" target="_blank">php100</a> <span>|</span>
							<a href="http://www.uehtml.com/" target="_blank">uehtml</a> <span>|</span>
							<a href="http://www.w3cplus.com/" target="_blank">W3CPlus</a> <span>|</span>
							<a href="http://www.boxui.com/" target="_blank">盒子UI</a> <span>|</span>
							<a href="http://www.uimaker.com/" target="_blank">uimaker</a> <span>|</span>
							<a href="http://www.yixieshi.com/" target="_blank">互联网的一些事</a> <span>|</span>
							<a href="http://www.chuanke.com/" target="_blank">传课网</a> <span>|</span>
							<a href="http://www.eoe.cn/" target="_blank">安卓开发</a> <span>|</span>
							<a href="http://www.eoeandroid.com/" target="_blank">安卓开发论坛</a> <a
								href="http://hao.360.cn/" target="_blank">360安全网址导航</a> <span>|</span>
							<a href="http://se.360.cn/" target="_blank">360安全浏览器</a> <span>|</span>
							<a href="http://www.hao123.com/" target="_blank">hao123上网导航</a> <span>|</span>
							<a href="http://www.ycpai.com" target="_blank">互联网创业</a><span>|</span>
							<a href="http://www.zhongchou.cn" target="_blank">众筹网</a><span>|</span>
							<a href="http://www.marklol.com/" target="_blank">马克互联网</a><span>|</span>
							<a href="http://www.chaohuhr.com/" target="_blank">巢湖英才网</a> <a
								href="http://www.zhubajie.com/" target="_blank">创意服务外包</a><span>|</span>
							<a href="http://www.thinkphp.cn/" target="_blank">thinkphp</a><span>|</span>
							<a href="http://www.chuangxinpai.com/" target="_blank">创新派</a><span>|</span>

							<a href="http://w3cshare.com/" target="_blank">W3Cshare</a><span>|</span>
							<a href="http://www.518lunwen.cn/" target="_blank">论文发表网</a><span>|</span>
							<a href="http://www.199it.com" target="_blank">199it</a><span>|</span>

							<a href="http://www.shichangbu.com" target="_blank">市场部网</a><span>|</span>
							<a href="http://www.meitu.com/" target="_blank">美图公司</a><span>|</span>
							<a href="https://www.teambition.com/" target="_blank">Teambition</a>
							<a href="http://oupeng.com/" target="_blank">欧朋浏览器</a><span>|</span>
							<a href="http://iwebad.com/" target="_blank">网络广告人社区</a> <a
								href="h/af/flink.html" target="_blank" class="more">更多</a>
						</dd>
					</dl>
				</div>
			</div>
			<input type="hidden" value="" name="userid" id="userid" />
			<!-- <div id="qrSide"><a></a></div> -->
			<!--  -->

			<!-- <div id="loginToolBar">
	<div>
		<em></em>
		<img src="style/images/footbar_logo.png" width="138" height="45" />
		<span class="companycount"></span>
		<span class="positioncount"></span>
		<a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
		<div class="right">
			<a href="register.html?from=index_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
		</div>
		<input type="hidden" id="cc" value="16002" />
		<input type="hidden" id="cp" value="96531" />
	</div>
</div>
 -->
			<!-------------------------------------弹窗lightbox  ----------------------------------------->
			<div style="display: none;">
				<!-- 登录框 -->
				<div id="loginPop" class="popup" style="height: 240px;">
					<form id="loginForm">
						<input type="text" id="email" name="email" tabindex="1"
							placeholder="请输入登录邮箱地址" /> <input type="password" id="password"
							name="password" tabindex="2" placeholder="请输入密码" /> <span
							class="error" style="display: none;" id="beError"></span> <label
							class="fl" for="remember"><input type="checkbox"
							id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
						<a href="h/reset.html" class="fr">忘记密码？</a> <input type="submit"
							id="submitLogin" value="登 &nbsp; &nbsp; 录" />
					</form>
					<div class="login_right">
						<div>还没有帐号？</div>
						<a href="register.html" class="registor_now">立即注册</a>
						<div class="login_others">使用以下帐号直接登录:</div>
						<a href="h/ologin/auth/sina.html" target="_blank" id="icon_wb"
							class="icon_wb" title="使用新浪微博帐号登录"></a> <a
							href="h/ologin/auth/qq.html" class="icon_qq" id="icon_qq"
							target="_blank" title="使用腾讯QQ帐号登录"></a>
					</div>
				</div>
				<!--/#loginPop-->
			</div>
			<!------------------------------------- end ----------------------------------------->
			<script type="text/javascript" src="style/js/Chart.min.js"></script>
			<script type="text/javascript" src="style/js/home.min.js"></script>
			<script type="text/javascript" src="style/js/count.js"></script>
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" /> <a id="backtop"
				title="回到顶部" rel="nofollow"></a>
		</div>
		<!-- end #container -->
	</div>
	<!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="h/about.html" target="_blank" rel="nofollow">联系我们</a> <a
				href="h/af/zhaopin.html" target="_blank">互联网公司导航</a> <a
				href="http://e.weibo.com/Xinxin720" target="_blank" rel="nofollow">微博</a>
			<a class="footer_qr" href="javascript:void(0)" rel="nofollow">微信<i></i></a>
			<div class="copyright">
				&copy;2013-2014 Xinxin <a target="_blank"
					href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="style/js/core.min.js"></script>
	<script type="text/javascript" src="style/js/popup.min.js"></script>

	<!-- <script src="style/js/wb.js" type="text/javascript" charset="utf-8"></script>
 -->

</body>
</html>
