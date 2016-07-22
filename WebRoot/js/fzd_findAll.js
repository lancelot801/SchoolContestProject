var queryPara = {};
$(document).ready(function() {

	// $.getJSON("findAllCM.action", function(json) {
	// var tr;
	// $("#datalist").empty();
	// $.each(json,function(index, contestmessage) {
	// tr+="<tr>";
	// tr+="<td>" + contestmessage.conId + "</td>";
	// tr+="<td>" + contestmessage.conName + "</td>";
	// tr+="<td>" + contestmessage.jurorLeader + "</td>";
	// tr+="<td>" + contestmessage.explains+ "</td>";
	// tr+="<td class=\"text-center\">"+"<label><button class=\"btn btn-info
	// btn-sm glyphicon glyphicon-search
	// queryBtn\">查看或修改</button></label>&nbsp;&nbsp;&nbsp;&nbsp;<span><button
	// class=\"btn btn-info btn-sm glyphicon glyphicon-file
	// AddfileBtn\">添加附件</button></span>&nbsp;&nbsp;&nbsp;<span><button
	// class=\"btn btn-info btn-sm glyphicon glyphicon-file
	// QueryfileBtn\">查看附件</button></span>&nbsp;&nbsp;&nbsp;<span><button
	// class=\"btn btn-info btn-sm glyphicon glyphicon-remove
	// deleteBtn\">删除</button></span>"+"</td>";
	// tr+="<td>"+"<div id=\"News-Pagination\"></div></td>";
	// tr+="</tr>";
	// });
	// $("#datalist").append(tr);
	// 触发按钮事件
	$("button.btnAdd").click(function() {
		var params = $('#myPickingModal').serialize();
		$.ajax({
			url : "addContestMessage",
			type : 'post',
			dataType : 'json',
			data : params,
		});
	});

	$("button.ScoreDetailBtn").click(function() {
		var i=1;
		var id = $(this).parents("tr").find("td").eq(0).html();
		$("#markDetailsModel").modal().draggable({
			handle : ".modal-header",
			cursor : 'move',
			refreshPositions : false
		});
		$("#aspectConId").val(id);
		
		$('#add').click(function() {
			//alert(i);
			//	<div class="col-sm-2">
			//<input class="form-control"   id="aspectId" name="aspectId" placeholder="编号"/>
			//</div>
			//$('#player').append("</br><input class=\"form-control\" />");
//			<select class="form-control " id="aspect" name="markList[0].aspect">
//			<option value="">请选择评分类型</option>
//			<option value="创新性">创新性</option>
//			<option value="实用性">实用性</option>
//		</select>
			$('#markplayer').append("<br/><div class=\"row\"><div class=\"col-sm-2\"></div><div class=\"col-sm-2\">" +
					"<input class=\"form-control\"   readonly=\"readonly\" name=\"markList["+i+"].aspectId\"" +
					" value=\""+(i+1)+"\"/></div><div class=\"col-sm-4\">" +
					"<select class=\"form-control\"  name=\"markList["+i+"].aspect\">" +
							"<option value=\"\">请选择评分类型</option>" +
							"<option value=\"创新性\">创新性</option>" +
							"<option value=\"实用性\">实用性</option>" +
							"</select></div><div class=\"col-sm-2\">" +
					"<input class=\"form-control\"  name=\"markList["+i+"].score\"" +
					"placeholder=\"分数\"/></div></div>");
			i+=1;
		});
		$("#submitMarkBtn").unbind('click');
//		$("#submitMarkBtn").click(function() {
//			$.ajax({
//				url : "addMarkList",
//				// data:{'xx':ds,d},
//				type : "post",
//				success : function(data) {
//					$("#markDetailsModel").modal("hide");
//					alert("添加评分标准成功");
//					//window.location.href = "Admin/findAll.jsp";
//				},
//				error : function(error) {
//					alert(error.responseText);
//				},
//				async : false
//			});
//		});
		//$("#markDetailsModel").modal("hide");
		//alert("添加评分标准成功");
	});

	$("button.Addteacher").click(function() {
		$("#dialog3").modal();
		var id = $(this).parents("tr").find("td:eq(0)").text().trim(); // 当前行的第一列
		// alert("id"+id);
		$("#aspectConId").val(id);
		$('#add').click(function() {
			$('#player').append("</br><input class=\"form-control\" />");
		});
		// 为确认按钮绑定事件
		$("#submitBtn").unbind('click');
		$("#submitBtn").click(function() {
		
			var needBreak = false;
			$('#player input').each(function() {
				if ($(this).val().trim() == "") {
					$(this).attr("placeholder", "评委老师不能为空");
					needBreak = true;
					return false;
				}
			});

			if (needBreak)
				return;
			
			queryPara.conId = id;
			queryPara.teaId = $('#headman').val(); //评委组长
			$.getJSON("createHeadTeacher.action", queryPara, function(json) {
				if (json == 0) {
					alert("您已添加评委老师，请勿重复添加！");
					return;
				}
		});
			$('#player input').each(function() {
				queryPara.teaId= $(this).val();
				$.getJSON("createOtherTeacher.action", queryPara, function() {

				});
			});
			$("#dialog3").modal("hide");
			alert("添加评委老师成功！");
		});
	});
	
	$("button.deleteBtn").click(function() {
		if (confirm('确定要删除此信息吗？')) {
			var id = $(this).parents("tr").find("td").eq(0).html();
			$.ajax({
				url : "removeCM.action?theConId=" + id,
				// data:{'xx':ds,d},
				type : "post",
				success : function(data) {
					alert("删除成功");
					window.location.href = "Admin/findAll.jsp";
				},
				error : function(error) {
					alert(error.responseText);
				},
				async : false
			});
			// alert('删除成功！');
			return true;
		} else {
			return false;
		}
	});

	// 为上传按钮绑定事件
	$("button.AddfileBtn").click(function() {
		var id = $(this).parents("tr").find("td:eq(0)").text().trim(); // 当前行的第一列
		// alert("id"+id);
		$("#conId2").val(id);
	});

	$("button.AddfileBtn").click(function() {
		// alert('添加附件');
		$("#dialog").modal().draggable({
			handle : ".modal-header",
			cursor : 'move',
			refreshPositions : false
		});
	});

	$("button.QueryfileBtn").click(function() {
		// alert('添加附件');
		$("#myModal1").modal().draggable({
			handle : ".modal-header",
			cursor : 'move',
			refreshPositions : false
		});
	});

	// 触发查询事件
	$("button.queryBtn").click(function() {
		var id = $(this).parents("tr").find("td").eq(0).html();
		$("#myPickingModal").modal().draggable({
			handle : ".modal-header",
			cursor : 'move',
			refreshPositions : false
		});

		// window.myPickingModalDialog(,dialogArgments.features);
		// alert(id);
		$.ajax({
			url : "findCMByConId.action?theConId=" + id,
			type : "post",
			success : function(data) {
				var obj = JSON.parse(data);
				// alert(obj.length);
				// alert(obj[0].conId);
				// alert(obj[0].conName);
				// alert(obj[0].project);
				// alert(convert(obj[0].enrollStart.toString()));
				$("#conId").val(obj[0].conId);
				$("#conName").val(obj[0].conName);
				$("#project").val(obj[0].project);
				$("#jurorLeader").val(obj[0].jurorLeader);
				$("#enrollStart").val((obj[0].enrollStart.toString()));
				$("#enrollEnd").val((obj[0].enrollEnd.toString()));
				$("#submitStart").val((obj[0].submitStart.toString()));
				$("#submitEnd").val((obj[0].submitEnd.toString()));
				$("#grade").val(obj[0].grade);
				$("#POrT").val(obj[0].POrT);
				$("#explains").val(obj[0].explains);
				$("#coOrganizer").val(obj[0].coOrganizer);
				$("#supportAgency").val(obj[0].supportAgency);
				$("#groupNum").val(obj[0].groupNum);

			},
			error : function(error) {
				alert(error.responseText);
			},
			async : false
		});
	});

	// 触发查询事件
	$("button.QueryfileBtn").click(function() {
		var id = $(this).parents("tr").find("td").eq(0).html();

		$.ajax({
			url : "queryFile.action?theConId=" + id,
			type : "post",
			success : function(data) {
				var obj = JSON.parse(data);
				// alert(obj.extrasfile.toString());
				$("#CMfilePath").val(obj.extrasfile.toString());
			},
			error : function(error) {
				alert(error.responseText);
			},
			async : false
		});
	});
});

// 将时间戳转化为标准时间
function convert(Time) {
	var timeString = "";
	timeString = Time.replace("/Date(", "").replace(")/", "").trim();
	var quit = timeString.substring(7, 10);
	timeString = timeString.replace(quit, "");
	return new Date(parseInt(timeString) * 1000).toLocaleString();
}
// 时间
$('.form_datetime').datepicker({
	language : 'zh-CN',
	format : "yyyy-mm-dd", // 选择日期后，文本框显示的日期格式
	weekStart : 1,
	todayBtn : 1,
	autoclose : 1,
	todayHighlight : 1,
	startView : 2,
	forceParse : 0,
	showMeridian : 1
});
