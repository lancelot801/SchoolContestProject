<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="bootstrap-3.3.5/dist/css/bootstrap.css" />
<link rel="stylesheet" href="dist/css/dropify.min.css">
<link href="css/pagination.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/normalize.css">
<link rel="stylesheet" type="text/css" href="css/component.css">
<script>
	(function(e, t, n) {
		var r = e.querySelectorAll("html")[0];
		r.className = r.className.replace(/(^|\s)no-js(\s|$)/, "$1js$2")
	})(document, window, 0);
</script>
<script type="text/javascript"
	src="bootstrap-3.3.5/js/tests/vendor/jquery.min.js"></script>
<script src="bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script src="dist/js/dropify.min.js"></script>
<script type="text/javascript" src="js/fzd_findAll.js"></script>
<!-- 引入分页的js和css -->
<script type="text/javascript" src="js/kkpager.min.js"></script>
<link rel="stylesheet" href="css/kkpager_blue.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/styles.css">
<script type="text/javascript">
	$(function() {

		//生成分页
		//有些参数是可选的，比如lang，若不传有默认值
		kkpager.generPageHtml({
			pno : ${pageBean.currentPage},
			//总页码
			total : ${pageBean.totalPage},
			//总数据条数
			totalRecords : ${pageBean.allRows},
			//链接前部
			hrefFormer : 'findSubmitCM',
			//链接尾部
			hrefLatter : '.action',
			getLink : function(n) {
				return this.hrefFormer + this.hrefLatter + "?pno=" + n;
			}
		});
	});
</script>

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

.mylabStyle {
	font-size: 13px;
}

* {
	font-size: "微软雅黑";
}

.footingul li {
	float: left;
	padding: 10px;
}
</style>
</head>

<body>
	<div class="container-fluid" style="overflow: hidden;">
		<div class="row">
			<div class="col-md-pull-12">
				<ol class="breadcrumb">
					<li>当前的位置</li>
					<li><a href="User/MyPublishing.jsp">学科竞赛信息</a></li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-md-pull-12">
				<div class="row featurette">
					<div class="panel panel-primary">
						<div class="panel-heading">
							&nbsp;&nbsp; <span class="glyphicon glyphicon-bookmark">&nbsp;学科竞赛信息列表</span>
						</div>

						<!-- 去掉竖条<div class="panel-body" style="height: 690px;"> -->
						<div class="panel-body">

							<table class="table table-bordered table-hover table-striped"
								style="font-size:13px;" id="table1">
								<thead>
									<tr>
										<th class="text-primary">竞赛编号</th>
										<th class="text-primary">竞赛名称</th>
										<th class="text-primary">评审组长</th>
										<th class="text-primary">竞赛描述</th>
										<th class="text-primary">操作</th>
									</tr>
								</thead>
								<!-- 加载数据 -->
								<tbody id="datalist">
								<!-- s:iterator绑定数据 -->
									<s:iterator value="#request.pageBean.list" id="item">
										<tr>								
											<td><s:property value="#item.conId" /></td>
											<td><s:property value="#item.conName" /></td>
											<td><s:property value="#item.jurorLeader" /></td>
											<td><s:property value="#item.explains" /></td>
											<td class="text-center">
											<label><button class="btn btn-info btn-sm glyphicon glyphicon-search queryBtn">查看竞赛信息</button>
											</label>&nbsp;&nbsp;&nbsp;
											<span>
											<button class="btn btn-info btn-sm glyphicon glyphicon-file QueryfileBtn">查看附件</button>
											</span>&nbsp;&nbsp;&nbsp;
											<span>
											<button class="btn btn-info btn-sm glyphicon glyphicon-plus Addteacher">添加评委老师</button>
											</span>
											</td>
										</tr>
									</s:iterator>
								</tbody>

							</table>
							<div id="kkpager"></div>
						</div>

					</div>

				</div>

			</div>

		</div>
	</div>

	<!-- 竞赛信息模态框（Modal） -->
	<div class="modal  fade" id="myPickingModal">
		<div class="modal-dialog">
			<form id="myPicking" action="updateCM.action" method="post">
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
									<label for="ItemsName"
										class="col-sm-2 control-label mylabStyle">竞赛编号</label>
									<div class="col-sm-10">
										<input type="text" id="conId" name="conId" readonly="readonly"
											class="form-control" placeholder="请输入竞赛编号" />
									</div>
								</div>
								<br /> <br />
								<div class="form-group">
									<label for="ItemsName"
										class="col-sm-2 control-label mylabStyle">竞赛名称</label>
									<div class="col-sm-10">
										<input type="text" id="conName" name="conName"
											class="form-control" placeholder="请输入竞赛名称" />
									</div>
								</div>
								<br /> <br />

								<div class="form-group">
									<label for="dtp_input1"
										class="col-sm-2 control-label mylabStyle">报名开始时间</label>
									<div class="col-sm-10">
										<input type="text" id="enrollStart" name="enrollStart"
											class="form-control" placeholder="报名开始时间" />
									</div>
									<input type="hidden" id="dtp_input1" value="" />
								</div>
								<br />
								<br />

								<div class="form-group">
									<label for="dtp_input1"
										class="col-sm-2 control-label mylabStyle">报名截止时间</label>
									<div class="col-sm-10">
										<input type="text" id="enrollEnd" name="enrollEnd"
											class="form-control" placeholder="报名截止时间" />
									</div>
									<input type="hidden" id="dtp_input1" value="" />
								</div>
								<br />
								<br />
								<div class="form-group">
									<label for="dtp_input1"
										class="col-sm-2 control-label mylabStyle">作品开始提交时间</label>
									<div class="col-sm-10">
										<input type="text" id="submitStart" name="submitStart"
											class="form-control" placeholder="作品开始提交时间" />
									</div>
									<input type="hidden" id="dtp_input1" value="" />
								</div>
								<br />
								<br />
								<div class="form-group">
									<label for="dtp_input1"
										class="col-sm-2 control-label mylabStyle">作品提交截止时间</label>
									<div class="col-sm-10">
										<input type="text" id="submitEnd" name="submitEnd"
											class="form-control" placeholder="作品提交截止时间" />
									</div>
									<input type="hidden" id="dtp_input1" value="" />
								</div>
								<br />
								<br />
								<br />
								<div class="form-group">
									<label for="CategoryId"
										class="col-sm-2 control-label mylabStyle">比赛类型</label>
									<div class="col-sm-10">
										<select class="form-control " id="project" name="project">
											<option value="">--请选择比赛类型--</option>
											<option value="0">程序设计</option>
											<option value="1">智能汽车</option>
											<option value="2">电子商务</option>
											<option value="3">电子设计</option>
											<option value="4">数学建模</option>
											<option value="5">摄影竞赛</option>
										</select>
									</div>
								</div>
								<br /> <br />

								<div class="form-group">
									<label for="CategoryId"
										class="col-sm-2 control-label mylabStyle">参赛方式</label>
									<div class="col-sm-10">
										<select class="form-control " id="POrT" name="POrT">
											<option value="">--请选择参赛方式--</option>
											<option value="0">团队</option>
											<option value="1">个人</option>

										</select>
									</div>
								</div>
								<br /> <br />
								<div class="form-group">
									<label for="ItemDescribtion"
										class="col-sm-2 control-label mylabStyle">相关说明</label>
									<div class="col-sm-10">
										<textarea class="form-control" id="explains"
											style="height: 100px;" name="explains"
											placeholder="请输入竞赛相关说明"></textarea>
									</div>
								</div>
								<br /> <br /> <br /> <br /> <br />
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
										<input type="text" class="form-control" id="grade"
											name="grade" placeholder="请输入面向年级" />
									</div>
								</div>
								<br /> <br />
								<div class="form-group">
									<label for="pickPhone"
										class="col-sm-2 control-label mylabStyle">一组人数</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="groupNum"
											name="groupNum" placeholder="输入一组人数" />
									</div>
								</div>
								<br /> <br />
								<div class="form-group">
									<label for="pickPhone"
										class="col-sm-2 control-label mylabStyle">竞赛组织者</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="coOrganizer"
											name="coOrganizer" placeholder="输入竞赛组织者" />
									</div>
								</div>
								<br /> <br />
								<div class="form-group">
									<label for="pickPhone"
										class="col-sm-2 control-label mylabStyle">代理机构</label>
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
					
					</div>
				</div>
			</form>
		</div>
	</div>



	<!-- 模态框） -->
	<div class="modal fade" id="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">
						<label id="myModalLabel"></label>
					</h4>
				</div>

				<s:form class="form-horizontal bv-form" id="form" action="uploadfzd"
					enctype="multipart/form-data" method="post">

					<div id="content" class="modal-body" style="text-align: center">
						<input type="file" name="file" id="file"
							class="inputfile inputfile-4"
							data-multiple-caption="{count} files selected" multiple
							style="display: none" data-max-file-size="20M" /> <label
							for="file"><figure>
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="17"
								viewBox="0 0 20 17">
							<path
								d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z" /></svg></figure>
							<span>Choose a file&hellip;</span></label>
					</div>
					<input type="text" style="display: none" id="conId2" name="conId2">
					<div class="modal-footer">
						<button type="button" id="btnClose" class="btn btn-default"
							data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary" id="btnUploadfile">提交</button>
					</div>
				</s:form>



				<!--  测试
						<s:form class="" id="form" action="uploadfzd" enctype="multipart/form-data" method="post" > 
						
						<input  type="text" style="height: 100px;width: 100px" id="conId2"  name="conId2"  value="">
						 
							<div id="content" class="modal-body" style="text-align: center">
								<input type="file" name="file" id="file" class="inputfile inputfile-4" data-multiple-caption="{count} files selected" multiple />
						
							</div>
							
						<div class="modal-footer">
						<button type="button" id="btnClose" class="btn btn-default"
							data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary"  id="btnUploadfile" >提交</button>
					</div>
						</s:form>
						-->


			</div>
		</div>
	</div>

	<!-- geren Modal -->
	<div class="modal fade" id="myModal1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">已上传的附件</h4>
				</div>
				<div id="gerent" class="modal-body">

					<input type="text" class="form-control" id="CMfilePath"
						name="CMfilePath">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

				</div>
			</div>
		</div>
	</div>
	<script src="js/custom-file-input.js"></script>

	<!-- 模态框） -->
	<div class="modal fade" id="dialog3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">添加评委老师</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal bv-form">
						<div class="form-group ">
							<label class="col-xs-4  control-label"> 竞赛编号： </label>
							<div class="col-xs-4">
								<input class="form-control" id="aspectConId" readonly="readonly" />
							</div>
						</div>
						<div class="form-group ">
							<label class="col-xs-4  control-label">评委组长： </label>
							<div class="col-xs-4">
								<input class="form-control" id="headman"  />
							</div>
						</div>
						<div class="form-group ">
							<label class="col-xs-4  control-label"> 其他评委老师： </label>
							<div id="player" class="col-xs-4">
								<input class="form-control"  />
							</div>
							<div class="col-xs-1 ">
								<a id="add" class="btn glyphicon glyphicon-plus"></a>
							</div>
							</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						关闭</button>
					<button class="btn btn-primary" id="submitBtn">确认</button>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
