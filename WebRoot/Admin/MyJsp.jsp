<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>信电学院学科竞赛后台管理系统</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 	<link href="../assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
  	<link href="../assets/css/bui-min.css" rel="stylesheet" type="text/css" />
  	 <link href="../assets/css/main-min.css" rel="stylesheet" type="text/css" />
	
  </head>
  
  <body>
<div class="header">
    
      <div class="dl-title">
          <span class="lp-title-port">学科竞赛系统</span><span class="dl-title-text">后台管理</span>
        
      </div>

    <div class="dl-log">欢迎您，<lable>
			<s:property value="#session.account"/> </lable>
			<a href="login.jsp" title="退出系统" class="dl-log-quit">[退出]</a>
    </div>
  </div>
   <div class="content">
    <div class="dl-main-nav">
      <div class="dl-inform"><div class="dl-inform-title">贴心小秘书<s class="dl-inform-icon dl-up"></s></div></div>
      <ul id="J_Nav"  class="nav-list ks-clear">
        <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">首页</div></li>
        
      </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
   </div>
  <script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="../assets/js/bui.js"></script>
  <script type="text/javascript" src="../assets/js/config.js"></script>

  <script>
    BUI.use('common/main',function(){
      var config = [{
          id:'menu', 
          homePage : 'code',
          menu:[{
              text:'发布竞赛信息',
              items:[
                {id:'code',text:'所有竞赛信息',href:'findAllCMPager.action?pno=1',closeable : false},
                {id:'publish',text:'发布竞赛信息',href:'Adminpublish.jsp'},
              ]
            },{
              text:'查看竞赛信息',
              items:[
                {id:'start',text:'报名中的竞赛',href:'findStartCM.action?pno=1'}  ,
                {id:'after',text:'待提交作品的竞赛',href:'findSubmitCM.action?pno=1'} ,
                {id:'end',text:'已结束的竞赛',href:'findEndCM.action?pno=1'},
              ]
            },]
          },{
          }];
      new PageUtil.MainPage({
        modulesConfig : config
      });
    });
  </script>

  </body>
</html>
