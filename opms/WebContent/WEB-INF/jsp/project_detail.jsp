<%@page import="com.opms.unti.ProjectState"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="overflow: hidden;" lang="en">
<head>
    <meta charset="UTF-8">
    <title>OPMS管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="author" content="lock">
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/img/favicon.ico" type="<%=request.getContextPath() %>/image/png">
    <link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/style-responsive.css" rel="stylesheet">
<script>
         function changeState(projectid,status){
			var httpRequest=new XMLHttpRequest;
			httpRequest.open("POST","updatePmsProjectsState1?projectid="+projectid+"&status="+status,true);
			httpRequest.send(null);
		}
</script>

</head>
<body class="sticky-header">
<section>
          <div class="left-side sticky-left-side" style="overflow: hidden;" tabindex="5000">
        <div class="logo">
            <a href="#">
                <img src="img/logo-left.png" alt="OPMS管理系统">
            </a>
        </div>
        <div class="logo-icon text-center">
            <a href="#">
                <img src="img/logo_icon.png" style="width: 40px;" alt="OPMS管理系统">
            </a>
        </div>
        <div class="left-side-inner">
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img alt="libai" src="img/96d7546cbe9cbe9e36ce11ffd9afcc95-cropper.jpg" class="media-object">
                    <div class="media-body">
                        <h4>
                            <a href="">${sessionScope.user.username}</a>
                        </h4>
                        <span>OPMS系统</span>
                    </div>
                </div>
                <h5 class="left-nav-title">控制台</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                    <li>
                        <a href="">
                            <i class="fa fa-user"></i>
                            <span>个人设置</span>
                        </a>
                    </li>
                    <li>
                        <a href="tologout">
                            <i class="fa fa-sign-out"></i>
                            <span>退出</span></a>
                    </li>
                </ul>
            </div>

            <ul class="nav nav-pills nav-stacked custom-nav js-left-nav">
                <li class="">
                    <a href="#">
                        <i class="fa fa-home"></i>
                        <span>我的主页</span>
                    </a>
                </li>
                <li class="">
                    <a href="listProjectInfo">
                        <i class="fa fa-book"></i>
                        <span>项目管理</span>
                    </a>
                </li>
                <li>
                    <a href="listCheckworkbyuserid">
                        <i class="fa fa-tasks"></i>
                        <span>考勤管理</span>
                    </a>
                </li>
                <li>
                    <a href="approvalindex">
                        <i class="fa fa-suitcase"></i>
                        <span>审批管理</span>
                    </a>
                </li>
                <li>
                    <a href="all_knowledge_manage">
                        <i class="fa fa-tasks"></i>
                        <span>知识分享</span>
                    </a>
                </li>
                <li>
                    <a href="listAlbums">
                        <i class="fa fa-plane"></i>
                        <span>员工相册</span>
                    </a>
                </li>
                <li>
                    <a href="listResumes">
                        <i class="fa fa-laptop"></i>
                        <span>简历管理</span>
                    </a>
                </li>
                <li>
                    <a href="listPmsUsersProfile">
                        <i class="fa fa-user"></i>
                        <span>组织管理</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-content">
        <div class="header-section">
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <div class="menu-right">
                <ul class="notification-menu">
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">你有 0 最新信息</h5>
                            <ul class="dropdown-list normal-list">
                                <li class="text-center">目前还没有最新消息</li>
                                <li class="new">
                                    <a href="">查看更多</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="javascript:;" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <img src="<%=request.getContextPath() %>/img/96d7546cbe9cbe9e36ce11ffd9afcc95-cropper.jpg" alt="libai">
                            ${user.username}
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li>
                                <a href="">
                                    <i class="fa fa-user"></i>
                                    个人主页
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-cog"></i>
                                    基本资料
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-camera"></i>
                                    更换头像
                                </a>
                            </li>
                            <li>
                                <a href="profilePwd">
                                    <i class="fa fa-cog"></i>
                                    更换密码
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-th-list"></i>
                                    我的任务</a>
                            </li>
                            <li>
                                <a href="tologout">
                                    <i class="fa fa-sign-out"></i>
                                    退出
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="page-heading">
            <h3> 项目管理 </h3>
            <ul class="breadcrumb pull-left">
                <li> <a href="">OPMS</a> </li>
                <li> <a href="listProjectInfo">项目管理</a> </li>
                <li class="active"> 项目 </li>
            </ul>
            <div class="pull-right">
                <a href="listTeamMesg?projectid=${project.projectid}" class="btn btn-success">团队</a>
                <a href="toProjectNeed?projectid=${project.projectid}" class="btn btn-success">需求</a>
                <a href="toProjectTask?projectid=${project.projectid}" class="btn btn-success">任务</a>
                <a href="listPmsProjectsBug?projectid=${project.projectid}" class="btn btn-success">Bug</a>
                <a href="listPmsProjectsDoc" class="btn btn-success">文档</a>
                <a href="listPmsProjectsVersion" class="btn btn-success">版本</a>
                <a href="listCharts" class="btn btn-warning">报表</a>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="wrapper">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="profile-desk">
                                        <h1>项目介绍</h1>
                                        <span class="designation">${project.name}</span>
                                        <div class="content"> ${project.projectdescribe} </div>
                                        <a class="btn p-follow-btn" href="getEditProjectInfo?projectid=${project.projectid}"> <i class="fa fa-check"></i> 编辑</a>&nbsp;
                                        <a onclick="changeState('${project.projectid}',<%=ProjectState.HANGUP %>)" class="btn p-follow-btn js-project-single " data-id="104582058893905920" data-status="1">挂起</a>
                                        <a onclick="changeState('${project.projectid}',<%=ProjectState.DELAY %>)" class="btn p-follow-btn js-project-single " data-id="104582058893905920" data-status="2">延期</a>
                                        <a onclick="changeState('${project.projectid}',<%=ProjectState.DOING %>)" class="btn p-follow-btn js-project-single active" data-id="104582058893905920" data-status="3">进行</a>
                                        <a onclick="changeState('${project.projectid}',<%=ProjectState.END %>)" class="btn p-follow-btn js-project-single " data-id="104582058893905920" data-status="4">结束</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel">
                        <div class="panel-body">
                            <ul class="p-info">
                                <li>
                                    <div class="title">项目名称</div>
                                    <div class="desk">${project.name}</div>
                                </li>
                                <li>
                                    <div class="title">代号</div>
                                    <div class="desk">${project.aliasname}</div>
                                </li>
                                <li>
                                    <div class="title">起止时间</div>
                                    <div class="desk">${project.getStringStartDate()}至${project.getStringEndDate()}</div>
                                </li>
                                <li>
                                    <div class="title">可用工作日</div>
                                    <div class="desk js-workday">${project.datebetween()}</div>
                                </li>
                                <li>
                                    <div class="title">项目负责人</div>
                                    <div class="desk">${project.getProjectResponsePeople()}</div>
                                </li>
                                <li>
                                    <div class="title">产品负责人</div>
                                    <div class="desk">${project.getProductResponsePeople()}</div>
                                </li>
                                <li>
                                    <div class="title">测试负责人</div>
                                    <div class="desk">${project.getTestResponsePeople()}</div>
                                </li>
                                <li>
                                    <div class="title">发布负责人</div>
                                    <div class="desk">${project.getPublishResponsePeople()}</div>
                                </li>
                                <li>
                                    <div class="title">项目状态</div>
                                    <div class="desk">
                                       <c:if test="${project.status==1}"><span> 挂起中 </span></c:if>
                                       <c:if test="${project.status==2}">延期中</c:if>
                                       <c:if test="${project.status==3}">进行中</c:if>
                                       <c:if test="${project.status==4}"><span>结束</span>                                       
                                       </c:if>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer> 2016 © Admin by Lock &nbsp;&nbsp;<a href="">OPMS官网</a> · <a href="">OPMS手册</a></footer>
    </div>
</section>
<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery.nicescroll.js"></script>
<script src="<%=request.getContextPath() %>/js/scripts.js"></script>
<div id="ascrail2000" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(66, 79, 99) none repeat scroll 0% 0%; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
    <div style="position: relative; top: 0px; float: right; width: 6px; height: 404px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2000-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(66, 79, 99) none repeat scroll 0% 0%; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;">
    <div style="position: relative; top: 0px; height: 6px; width: 1366px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2001" class="nicescroll-rails" style="width: 3px; z-index: 100; background: rgb(66, 79, 99) none repeat scroll 0% 0%; cursor: default; position: fixed; top: 0px; left: 137px; height: 636px; display: none; opacity: 0;">
    <div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2001-hr" class="nicescroll-rails" style="height: 3px; z-index: 100; background: rgb(66, 79, 99) none repeat scroll 0% 0%; top: 633px; left: 0px; position: fixed; cursor: default; display: none; opacity: 0;">
    <div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px; left: 0px;"></div>
</div>
<script src="<%=request.getContextPath() %>/js/jquery.validate.js"></script>
<script src="<%=request.getContextPath() %>/js/opms.js"></script>
</body>
</html>
