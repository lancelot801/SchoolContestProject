<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/fzd_login.js"></script>
  </head>
  
  <body>
  
  	<div class="main">
			<div class="login">

				<div class="inset">
					<!--start-main-->
					<form action="loginf.action" method="post">
						<div>
							<h2>管理员登录</h2>
							<span><label>用户名</label></span>
							<span><input type="text" class="textbox" name="adminId"></span>
						</div>
						<div>
							<span><label>密码</label></span>
							<span><input type="password" class="password" name="password"></span>
						</div>
						<s:fielderror/><!-- 错误信息 -->
						<div style="font-color:red">
						<div class="sign">
							<Button  type="submit"  id="login" class="submit"  type="Button">登录</Button>
						</div>
						</div>
					</form>
				</div>
			</div>

		</div>
  </body>
</html>
