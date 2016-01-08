<%@page import="com.xinxin.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="header">
			<div class="wrapper"><!-- 
				<a href="index.jsp class="logo"> <img
					src="style/images/logo.png" width="229" height="43"
					alt="专注互联网招聘" />
				</a> -->
				<ul class="reset" id="navheader">
					<li class="current"><a href="index.jsp">首页</a></li>
					<li><a href="companylist.jsp">公司</a></li>
					<li><a href="jianli.jsp" rel="nofollow">我的简历</a></li>
					<li><a href="create.jsp" rel="nofollow">发布职位</a></li>
				</ul>
				<%User user =(User)session.getAttribute("currentUser");
					if(user==null){
						%>
						<ul class="loginTop">
						<li><a href="login.html" rel="nofollow">登录</a></li>
						<li>|</li>
						<li><a href="register.html" rel="nofollow">注册</a></li>
						</ul>
						<% 
					}else{
						%>
						<ul class="loginTop">
						<li><a href="#" rel="nofollow">你好，<%=user.getName() %></a></li>
						<li>|</li>
						<li><a href="user?action=logout" rel="nofollow">退出</a></li>
						</ul>
						<%
					}
				%>
				
			</div>
		</div>