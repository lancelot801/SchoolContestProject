$(function() {	
	// 添加竞赛信息
	$("#btnPicking").click(function() {
		$("#myPickingModal").modal().draggable({
			handle : ".modal-header",
			cursor : 'move',
		    refreshPositions : false
		});
		$("#myPickingModal").modal().css({
			height:"550px",
			scroll:"yes"
		});
	});
	
//	//触发按钮事件
//	$("#btnAdd").click(function()
//	{	
//		//alert("添加信息");
//		var params=$('#myPickingModal').serialize();
//		//alert(params);
//			$.ajax({
//				url:"addContestMessage.action",
//				type:'post',
//				dataType:'json',
//				data:params,
//				success:alert("添加竞赛信息成功")
//			});		
//	});
	
	function convert(Time) {
		var timeString = "";
		timeString = Time.replace("/Date(", "").replace(")/", "").trim();
		var quit = timeString.substring(7, 10);
		timeString = timeString.replace(quit, "");
		return new Date(parseInt(timeString) * 1000).toLocaleString();
	}
	// 时间
	$('.form_datetime').datetimepicker({
		language : 'zh-CN',
		minView:"month",
		format : "yyyy-mm-dd ", // 选择日期后，文本框显示的日期格式
		weekStart : 1,
		todayBtn : 1,
		autoclose : 1,
		todayHighlight : 1,
		startView : 2,
		forceParse : 0,
		showMeridian : 1
	});
});