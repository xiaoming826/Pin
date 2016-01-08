<%@page import="com.xinxin.model.JobInfo"%>
<%@page import="com.xinxin.dao.impl.JobInfoDaoImpl"%>
<%@page import="com.xinxin.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8"
	src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld" />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>${jobinfo.title }</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
	var ctx = "h";
	console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css" />
<link rel="stylesheet" type="text/css" href="style/css/external.min.css" />
<link rel="stylesheet" type="text/css" href="style/css/popup.css" />
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
<script src="style/js/jquery-hbzx.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
	var youdao_conv_id = 271546;
</script>
<script type="text/javascript" src="style/js/conv.js"></script>
</head>
<body>
	<div id="body">
		<jsp:include page="header.jsp" />
		<!-- end #header -->
		<div id="container">
			<div class="clearfix">
				<div class="content_l">
					<dl class="job_detail">
						<dt>
							<h1 title="内容运营">
								<em></em>
								<div>${company.name }招聘</div>
								${jobinfo.title }
							</h1>


							<!-- <a class="inline jd_collection" href="job?action=collection" title="登录"> -->
							</a>
						</dt>
						<dd class="job_request">
							<span class="red">${jobinfo.money }</span> <span>${company.companyAddrs }</span> <span>经验3-5年
							</span> <span> ${jobinfo.experience }</span> <br /> <span> 电话：${company.tel }</span>
							<div>发布时间：${jobinfo.dateTime }</div>
						</dd>
						<dd class="job_bt">
							<h3 class="description">职位描述</h3>
							<p>
								${jobinfo.content }
							</p>
						</dd>

						<!-- <dd class="unresume">
							<div>
								你还没有简历呢，你可以<a href="login.html" target="_blank"
									title="完善在线简历">完善在线简历</a>，也可<a class="inline" href="#loginPop"
									title="登录">上传附件简历</a>直接投递
							</div>
						</dd> -->
						<!-- <div class="saoma saoma_btm">
							<div class="dropdown_menu">
								<div class="drop_l">
									<img src="style/images/job_qr_btm.png" width="131" height="131" />
								</div>
								<div class="drop_r">
									<div class="drop_title"></div>
									<p>
										想知道HR在看简历嘛？<br /> 想在微信中收到面试通知？<br /> <span><<
											扫一扫，给你解决</span>
									</p>
								</div>
							</div>
						</div> -->
						<dd>
						<%
							User user =(User)session.getAttribute("currentUser");
							if(user==null){
								%>
								<a href="job?action=apply&id=${jobinfo.id }" title="登录" class="inline btn fr btn_apply">申请</a>
								<%
							}else{
								JobInfo job=(JobInfo)request.getAttribute("jobinfo");
								boolean isapply= new JobInfoDaoImpl().isApply(job.getId(), user.getId()+"");
								if(isapply){
									%>
									<a href="#" title="登录" class="inline btn fr btn_apply">已经申请</a>
									<%
								}else{
									%>
									<a href="job?action=apply&id=${jobinfo.id }" title="申请" class="inline btn fr btn_apply">申请</a>
									<%
								}
							}
						%>
							
						</dd>
					</dl>
					<div id="weibolist"></div>
				</div>
				<!-- <div class="content_r">
					<dl class="job_company">
						<dt>
							<a href="h/c/683.html" target="_blank"> <img class="b2"
								src="style/images/ff80808140ac5ed90140b953972e0215.png"
								width="80" height="80" alt="北京立方网信息技术有限公司" />
								<div>
									<h2 class="fl">
										立方网 <img src="style/images/valid.png" width="15" height="19"
											alt="拉勾认证企业" /> <span class="dn">拉勾认证企业</span>

									</h2>
								</div>
							</a>
						</dt>
						<dd>
							<ul class="c_feature reset">
								<li><span>领域</span> 移动互联网,游戏</li>
								<li><span>规模</span> 50-150人</li>
								<li><span>主页</span> <a href="http://L99.com"
									target="_blank" title="http://L99.com" rel="nofollow">http://L99.com</a>
								</li>
							</ul>

							<h4>发展阶段</h4>
							<ul class="c_feature reset">
								<li><span>目前阶段</span> A轮</li>
								<li><span>投资机构</span> IDG(A轮)，腾讯(A轮)</li>
							</ul>

								                    	<h4>公司产品</h4>
	                        <ul class="c_feature reset">
	                        		                        		<li><span>在哪</span></li>
	                        		                        		<li><span>立方网</span></li>
	                        		                        		<li><span>立方飞鸽</span></li>
	                        		                        </ul>
                                                
                       	<h4>公司标签</h4>
                        <ul class="company_tags reset" id="hasLabels">
                        	                            	<li><span>专业主厨</span></li>
                                                        	<li><span>帅哥多</span></li>
                                                        	<li><span>扁平管理</span></li>
                                                        	<li><span>弹性工作</span></li>
                                                        	<li><span>岗位晋升</span></li>
                                                        	<li><span>领导好</span></li>
                                                       <li class="link"><a>编辑</a></li>
                        </ul>
                        <div class="clear"></div>
                        <div id="addLabel" class="addLabel dn">
                            <input type="text" class="fl" id="label" name="label" placeholder="添加自定义标签" />	
                            <input type="submit" id="add" value="贴上" />
                        </div>

							<h4>工作地址</h4>
							<div>武汉市武昌区螃蟹岬凤凰大厦A1-1301</div>
							<div id="smallmap"></div>
							<a href="javascript:;" id="mapPreview">查看完整地图</a>
						</dd>
					</dl>
					<a
						href="h/subject/s_zhouyou.html?utm_source=BD__lagou&utm_medium=&utm_campaign=zhouyou"
						target="_blank" class="eventAd"> <img
						src="style/images/zhouyou.jpg" width="280" height="135" />
					</a>
				</div> -->
			</div>
			
				<style>
#cboxContent {
	overflow: visible;
}

#colorbox, #cboxOverlay, #cboxWrapper {
	overflow: visible;
}
</style>
			
			<!------------------------------------- end ----------------------------------------->

			<!-- <script type="text/javascript" src="style/js/job_detail.js"></script>
			<script type="text/javascript" src="style/js/count.js"></script> -->

			<!-- <script type="text/javascript">
var options = {
    	"snsId": "snwb",
    	"uid": "",
    	"token": "",
    	"openId": "",
    	"appKey": "",
    	"merchantId": "11253",
    	"merchantType": "news",
    	"socialLoginUrl_sina": ctx+"/ologin/auth/sina.html",
    	"socialLoginUrl_qq": "",
    	"weiboId_sina": "3619164344010985",
    	"weiboId_qq": "",
    	"socialAllUrl": ctx+"/user/hbzx.html",
    	"productId": "140204",
    	"productCategory": "",
    	"productName": "内容运营",
    	"productArea": "武汉",
    	"productPrice": "",
    	"productUrl": ctx+"/jobs/140204.html",
    	"productImage": ctx+"/upload/logo/ff80808140ac5ed90140b953972e0215.png",
    	"excerpt": "武汉 / 全职 / 4k-6k / 经验3-5年 / 本科及以上 / 职位诱惑 : 大家都来了 你还在等什么！！",
    	"sendContent":"我觉得这个职位不错，你觉得咋样？",
    	"shareContent":"请输入你对此职位的评论",
    	"autoSend": false,
    	"load": true
　　}
</script>
<script src="style/js/common.js" type="text/javascript"></script> -->
			 
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken"
				value="6e1925fdbe7142468f154abd1d33f5a8" /> <a id="backtop"
				title="回到顶部" rel="nofollow"></a>
		</div>
		<!-- end #container -->
	</div>
	<!-- end #body -->
	

	<!-- <script type="text/javascript" src="style/js/core.min.js"></script>
	<script type="text/javascript" src="style/js/popup.min.js"></script> -->

	<!--  -->

</body>
</html>