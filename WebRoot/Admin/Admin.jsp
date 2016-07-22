<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>徐州工程学院学科竞赛后台管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.5/dist/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet"
	href="bootstrapvalidator/css/bootstrapValidator.min.css" />
   <script type="text/javascript"
	        src="bootstrap-3.3.5/js/tests/vendor/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script src="bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
	src="bootstrap-datetimepicker-master/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript"
	src="bootstrapvalidator/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="js/fzd_admin.js"></script>
		<style>
ul.publishingUl li {
	line-height: 40px;
	border-bottom: dotted 1px lightgray;
}

ul.publishingUl li:hover {
	background-color: #EEE;
}

span.spanTime {
	float: right;
}

.publishingName {
	color: darkred;
}

.mylabStyle{
	font-size:13px;
}
*{
	font-size:"微软雅黑";
}
.footingul li {
	float: left;
	padding: 10px;
}
</style>
		<script>
		$(function(){
			$("#returnIndex").click(function(){
				window.location.href="index.jsp";
			});
			
		});
	</script>
	</head>
  
  <body>
    <div class="container" style="overflow:hidden;">
		<div class="row" style="height:150px;">
			<div class="col-md-1"></div>
			<div class="col-md-10"
				style="height:150px;background-image:url(img/heading.jpg);background-size:100% 100%;background-repeat: no-repeat;">
				<h3>
					<label class="label label-success">&nbsp;信电学院学科竞赛后台管理&nbsp;</label>
				</h3>
			</div>
			<div class="col-md-1"></div>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="well well-sm">
					<ul class="nav nav-pills webdirection" >
					    <li role="presentation" class="active"><a href="" id="returnIndex" style="display:block;" target="content"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
						<li role="presentation"><a href="Admin/findAll.jsp" target="content"><span class="glyphicon glyphicon-search"></span>&nbsp;查询所有竞赛信息</a></li>		
						<li role="presentation"><button class="btn btn-primary" id="btnPicking">
								<span class="glyphicon glyphicon-pencil"></span>&nbsp;发布竞赛信息
							</button></li>			
					</ul>
				</div>
				<div class="panel panel-default">
					<div class="panel-body" style="height:750px;">
						<iframe src="findAllCMPager.action?pno=1" width="100%" height="100%" border="none"
							frameborder="0" name="content" id="content2"></iframe>
					</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="container">
							<div class="col-md-2"></div>
							<div class="col-md-8">
								<ul class="footingul" style="list-style: none;">
									<li><a href="http://www.xzit.edu.cn/" target="_blank"><span
											class="glyphicon glyphicon-th-large"></span>&nbsp;学校官网</a></li>
									<li><a href="http://gh.xzit.edu.cn/" target="_blank"><span
											class="glyphicon glyphicon-wrench"></span>&nbsp;工会</a></li>
									<li><a href="http://tw.xzit.edu.cn/" target="_blank"><span
											class="glyphicon glyphicon-book"></span>&nbsp;团委</a></li>
									<li><a href="http://etc.xzit.edu.cn/" target="_blank"><span
											class="glyphicon glyphicon-info-sign"></span>&nbsp;信息化中心</a></li>
									<li><a href="http://hqfwzx.xzit.edu.cn/" target="_blank"><span
											class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;后勤服务中心</a></li>
								</ul>
							</div>
							<div class="col-md-2"></div>
						</div>
						<hr />
						<div class="well well-sm">
							<p style="text-align: center;font-size:15px;">13计卓版权所有
								@copyright 2015</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	<!-- 竞赛信息模态框（Modal） -->
	<div class="modal  fade" id="myPickingModal">
		<div class="modal-dialog">
			<form id="myPicking"
				action="${pageContext.request.contextPath}/addContestMessage" method="post">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal" type="button">&times;</button>
						<h4 class="modal-title">
							<span class="glyphicon glyphicon-leaf"></span>&nbsp;竞赛信息
						</h4>
					</div>
					<div class="modal-body">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="form-group">
									<label for="ItemsName" class="col-sm-2 control-label mylabStyle">竞赛名称</label>
									<div class="col-sm-10">
										<input type="text" id="conName" name="conName"
											class="form-control" placeholder="请输入竞赛名称" />
									</div>
								</div>
								<br /> <br />
								
								<div class="form-group">
									<label for="dtp_input1" class="col-sm-2 control-label mylabStyle">竞赛发布时间</label>
									<div class="input-group date form_datetime col-sm-10"
										data-date="2016-04-01"
										data-date-format="yyyy-MM-dd"
										style="margin-left:105px;width:280px;"
										data-link-field="dtp_input1">
										<input class="form-control" name="publishTime" size="16"
											type="text" value="" placeholder="请选择竞赛发布时间" readonly>
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-remove"></span></span> <span
											class="input-group-addon"><span
											class="glyphicon glyphicon-th"></span></span>
									</div>
									<input type="hidden" id="dtp_input1" value="" />
								</div>
								<div class="form-group">
									<label for="dtp_input1" class="col-sm-2 control-label mylabStyle">报名开始时间</label>
									<div class="input-group date form_datetime col-sm-10"
										data-date="2016-04-01"
										data-date-format="yyyy-MM-dd"
										style="margin-left:105px;width:280px;"
										data-link-field="dtp_input1">
										<input class="form-control" name="enrollStart" size="16"
											type="text" value="" placeholder="请选择报名开始时间" readonly>
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-remove"></span></span> <span
											class="input-group-addon"><span
											class="glyphicon glyphicon-th"></span></span>
									</div>
									<input type="hidden" id="dtp_input1" value="" />
								</div>
							
							
									<div class="form-group">
									<label for="dtp_input1" class="col-sm-2 control-label mylabStyle">报名截止时间</label>
									<div class="input-group date form_datetime col-sm-10"
										data-date="2016-04-01"
										data-date-format="yyyy-MM-dd"
										style="margin-left:105px;width:280px;"
										data-link-field="dtp_input1">
										<input class="form-control" name="enrollEnd" size="16"
											type="text" value="" placeholder="请选择报名截止时间" readonly>
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-remove"></span></span> <span
											class="input-group-addon"><span
											class="glyphicon glyphicon-th"></span></span>
									</div>
									<input type="hidden" id="dtp_input1" value="" />
								</div>
								
								<div class="form-group">
									<label for="dtp_input1" class="col-sm-2 control-label mylabStyle">作品开始提交时间</label>
									<div class="input-group date form_datetime col-sm-10"
										data-date="2016-04-01"
										data-date-format="yyyy-MM-dd"
										style="margin-left:105px;width:280px;"
										data-link-field="dtp_input1">
										<input class="form-control" name="submitStart" size="16"
											type="text" value="" placeholder="请选择作品开始提交时间" readonly>
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-remove"></span></span> <span
											class="input-group-addon"><span
											class="glyphicon glyphicon-th"></span></span>
									</div>
									<input type="hidden" id="dtp_input1" value="" />
								</div>
								
								<div class="form-group">
									<label for="dtp_input1" class="col-sm-2 control-label mylabStyle">作品提交截止时间</label>
									<div class="input-group date form_datetime col-sm-10"
										data-date="2016-04-01"
										data-date-format="yyyy-MM-dd"
										style="margin-left:105px;width:280px;"
										data-link-field="dtp_input1">
										<input class="form-control" name="submitEnd" size="16"
											type="text" value="" placeholder="请选择作品提交截止时间" readonly>
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-remove"></span></span> <span
											class="input-group-addon"><span
											class="glyphicon glyphicon-th"></span></span>
									</div>
									<input type="hidden" id="dtp_input1" value="" />
								</div>
								
			
								
								
								<br/>
								<div class="form-group">
									<label for="CategoryId" class="col-sm-2 control-label mylabStyle">比赛类型</label>
									<div class="col-sm-10">
										<select class="form-control " id="project"
											name="project">
											<option value="">--请选择比赛类型--</option>
											<option value="1">程序设计</option> 
											<option value="2">智能汽车</option> 
											<option value="3">电子商务</option> 
											<option value="4">电子设计</option> 
											<option value="5">数学建模</option> 
											<option value="6">摄影竞赛</option> 
										</select>
									</div>
								</div>
								<br /> <br />
								
									<div class="form-group">
									<label for="CategoryId" class="col-sm-2 control-label mylabStyle">参赛方式</label>
									<div class="col-sm-10">
										<select class="form-control " id="POrT"
											name="POrT">
											<option value="">--请选择参赛方式--</option>
											<option value="0">个人</option> 
											<option value="1">团队</option> 
											
										</select>
									</div>
								</div>
								<br /> <br />
								<div class="form-group">
									<label for="ItemDescribtion" class="col-sm-2 control-label mylabStyle">相关说明</label>
									<div class="col-sm-10">
										<textarea class="form-control" id="explains"   style="height: 100px;"
											name="explains" placeholder="请输入竞赛相关说明"></textarea>
									</div>
								</div>
								<br /> <br /> <br /> <br /> <br/>
								<div class="form-group">
									<label for="picker" class="col-sm-2 control-label mylabStyle">评委组组长</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="jurorLeader"
											name="jurorLeader" placeholder="请输入评委组组长" />
									</div>
								</div>
								<br /> <br />
											<div class="form-group">
									<label for="picker" class="col-sm-2 control-label mylabStyle">面向年级</label>
									<div class="col-sm-10">
									
									<select class="form-control " id="grade"
											name="grade">
											<option value="">--请选择面向年级--</option>
											<option value="0">大一</option> 
											<option value="1">大二</option> 
											<option value="3">大三</option> 
											<option value="4">大四</option> 
											<option value="5">全校学生</option> 
											</select>
									</div>
								</div>
								<br /> <br />
								<div class="form-group">
									<label for="pickPhone" class="col-sm-2 control-label mylabStyle">一组人数</label>
									<div class="col-sm-10">
										<select class="form-control " id="groupNum"
											name="groupNum">
											<option value="">--请选择一组人数--</option>
											<option value="1">个人赛</option> 
											<option value="2">双人赛</option> 
											<option value="3">三人赛</option> 
											<option value="4">四人或以上</option> 
											</select>
									</div>
								</div>
								<br /> <br />
								
									<div class="form-group">
									<label for="pickPhone" class="col-sm-2 control-label mylabStyle">竞赛组织者</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="coOrganizer"
											name="coOrganizer" placeholder="输入竞赛组织者" />
									</div>
								</div>
								<br /> <br />
									<div class="form-group">
									<label for="pickPhone" class="col-sm-2 control-label mylabStyle">代理机构</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="supportAgency"
											name="supportAgency" placeholder="输入代理机构" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" id="btnClose" class="btn btn-default"
							data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
  </body>
</html>
