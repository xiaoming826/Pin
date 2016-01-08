<!DOCTYPE HTML>
<%@page import="com.xinxin.model.User"%>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
</script>
<script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8"
	id="allmobilize"></script>
<style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我的简历</title>
<meta content="23635710066417756375" property="qc:admins">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link href="h/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script>
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
</head>
<body>
	<div id="body">
		<jsp:include page="header.jsp" />
		<%
			User user = (User) session.getAttribute("currentUser");
		%>
		<!-- end #header -->
		<div id="container">
			<div class="clearfix">
				<div class="content_l">
					<div class="fl" id="resume_name">
						<div class="nameShow fl">
							<h1 title="jason的简历"><%=user.getName()%>简历
							</h1>
							<!-- <span class="rename">重命名</span> | <a target="_blank"
								href="h/resume/preview.html">预览</a> -->
						</div>
						<form class="fl dn" id="resumeNameForm">
							<input type="text" value="jason的简历" name="resumeName"
								class="nameEdit c9"> <input type="submit" value="保存">
							| <a target="_blank" href="h/resume/preview.html">预览</a>
						</form>
					</div>
					<!--end #resume_name-->
					<!-- <div class="fr c5" id="lastChangedTime">
						最后一次更新：<span>2014-07-01 15:14 </span>
					</div> -->
					<!--end #lastChangedTime-->
					<!-- <div id="resumeScore">
						<div class="score fl">
							<canvas height="120" width="120" id="doughnutChartCanvas"
								style="width: 120px; height: 120px;"></canvas>
							<div style="" class="scoreVal">
								<span>15</span>分
							</div>
						</div>

						<div class="which fl">
							<div>工作经历最能体现自己的工作能力，且完善后才可投递简历哦！</div>
							<span rel="workExperience"><a>马上去完善</a></span>
						</div>
					</div> -->
					<!--end #resumeScore-->

					<div class="profile_box" id="basicInfo">
						<h2>基本信息</h2>

						<form id="profileForm">
							<table>
								<tbody>
									<tr>
										<td valign="top"><span class="redstar">*</span></td>
										<td><input type="text" placeholder="姓名" value="<%=user.getName()%>"
											name="name" id="name"></td>
										<td valign="top"></td>
										<td>
											<ul class="profile_radio clearfix reset">
												<li class="current">男<em></em> <input type="radio"
													checked="checked" name="gender" value="男">
												</li>
												<li>女<em></em> <input type="radio" name="gender"
													value="女">
												</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td valign="top"><span class="redstar">*</span></td>
										<td><input type="hidden" id="topDegree" value="大专"
											name="topDegree"> <input type="button" value="大专"
											id="select_topDegree"
											class="profile_select_190 profile_select_normal">
											<div class="boxUpDown boxUpDown_190 dn" id="box_topDegree"
												style="display: none;">
												<ul>
													<li>大专</li>
													<li>本科</li>
													<li>硕士</li>
													<li>博士</li>
													<li>其他</li>
												</ul>
											</div></td>
										<td valign="top"><span class="redstar">*</span></td>
										<td><input type="hidden" id="workyear" value=""
											name="workyear"> <input type="button" value="学历"
											id="select_workyear"
											class="profile_select_190 profile_select_normal">
											<div class="boxUpDown boxUpDown_190 dn" id="box_workyear"
												style="display: none;">
												<ul>
													<li>应届毕业生</li>
													<li>1年</li>
													<li>2年</li>
													<li>3年</li>
													<li>4年</li>
													<li>5年</li>
													<li>6年</li>
													<li>7年</li>
													<li>8年</li>
													<li>9年</li>
													<li>10年</li>
													<li>10年以上</li>
												</ul>
											</div></td>
									</tr>
									<tr>
										<td valign="top"><span class="redstar">*</span></td>
										<td colspan="3"><input type="text" placeholder="手机号码"
											value="18644444444" name="tel" id="tel"></td>
									</tr>
									<tr>
										<td valign="top"><span class="redstar">*</span></td>
										<td colspan="3"><input type="text"
											placeholder="接收面试通知的邮箱" value="jason@qq.com" name="email"
											id="email"></td>
									</tr>
									<tr><td></td><td colspan="3"><h2>自我描述</h2></td></tr>
									<tr>
										<td valign="top"><span class="redstar">*</span></td>
										<td colspan="3"><textarea  id="currentState"
											value="" name="desc"></textarea> 
											
									</tr>
									<tr>
										<td></td>
										<td colspan="3"><input type="submit" value="保 存"
											class="btn_profile_save"> </td>
									</tr>
								</tbody>
							</table>
						</form>
						<!--end #profileForm-->
					</div>
					
				</div>
				<!--end #basicInfo-->

			</div>
			<!------------------------------------- end ----------------------------------------->

			<script src="style/js/Chart.min.js" type="text/javascript"></script>
			<script src="style/js/profile.min.js" type="text/javascript"></script>
			<!-- <div id="profileOverlay"></div> -->
			<div class="" id="qr_cloud_resume" style="display: none;">
				<div class="cloud">
					<img width="134" height="134" src=""> <a class="close"
						href="javascript:;"></a>
				</div>
			</div>
			<div class="clear"></div>
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655"
				id="resubmitToken"> <a rel="nofollow" title="回到顶部"
				id="backtop" style="display: none;"></a>
		</div>
		<!-- end #container -->
	</div>
	

	<script src="style/js/core.min.js" type="text/javascript"></script>
	<script src="style/js/popup.min.js" type="text/javascript"></script>

	<!--  -->

	<script type="text/javascript">
$(function(){
	$('#noticeDot-1').hide();
	$('#noticeTip a.closeNT').click(function(){
		$(this).parent().hide();
	});
});
var index = Math.floor(Math.random() * 2);
var ipArray = new Array('42.62.79.226','42.62.79.227');
var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
var CallCenter = {
		init:function(url){
			var _websocket = new WebSocket(url);
			_websocket.onopen = function(evt) {
				console.log("Connected to WebSocket server.");
			};
			_websocket.onclose = function(evt) {
				console.log("Disconnected");
			};
			_websocket.onmessage = function(evt) {
				//alert(evt.data);
				var notice = jQuery.parseJSON(evt.data);
				if(notice.status[0] == 0){
					$('#noticeDot-0').hide();
					$('#noticeTip').hide();
					$('#noticeNo').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}else{
					$('#noticeDot-0').show();
					$('#noticeTip strong').text(notice.status[0]);
					$('#noticeTip').show();
					$('#noticeNo').text('('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text(' ('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}
				$('#noticeDot-1').hide();
			};
			_websocket.onerror = function(evt) {
				console.log('Error occured: ' + evt);
			};
		}
};
CallCenter.init(url);
</script>

	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox" class="" role="dialog" tabindex="-1"
		style="display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxTitle" style="float: left;"></div>
					<div id="cboxCurrent" style="float: left;"></div>
					<button type="button" id="cboxPrevious"></button>
					<button type="button" id="cboxNext"></button>
					<button id="cboxSlideshow"></button>
					<div id="cboxLoadingOverlay" style="float: left;"></div>
					<div id="cboxLoadingGraphic" style="float: left;"></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>
	</div>
</body>
</html>