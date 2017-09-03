<%@ page language="java" contentType="text/html; charset=utf-8" import="com.opms.unti.Checktype"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow: hidden;" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>OPMS管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="author" content="lock">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/png">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">
    <link href="css/table-responsive.css" rel="stylesheet">
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
            <form class="searchform">
                <select name="type" class="form-control" id="type">
                    <c:set var="checktype" value="<%=com.opms.unti.Checktype.values() %>"/>
                    <c:forEach items="${checktype}" var="type">
                       <option value="${type.index}">${type.type}</option>
                    </c:forEach>
                </select>
                <button type="button" id="submit" class="btn btn-primary">搜索</button>
            </form>
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
                                    <a href="message_manage.html">查看更多</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="javascript:;" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <img src="img/96d7546cbe9cbe9e36ce11ffd9afcc95-cropper.jpg" alt="${user.username}">
                            ${user.username}
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li>
                                <a href="user_index.html">
                                    <i class="fa fa-user"></i>
                                    个人主页
                                </a>
                            </li>
                            <li>
                                <a href="user_form.html">
                                    <i class="fa fa-cog"></i>
                                    基本资料
                                </a>
                            </li>
                            <li>
                                <a href="avatar.html">
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
                                <a href="task.html">
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
            <h3> 考勤 </h3>
            <ul class="breadcrumb pull-left">
                <li> <a href="#">OPMS</a> </li>
                <li> <a href="listCheckworkbyuserid">考勤管理</a> </li>
                <li class="active"> 考勤 </li>
            </ul>
            <div class="pull-right"><a href="listAllCheckwork" class="btn btn-success">全部员工考勤</a></div>
        </div>
        <div class="clearfix"></div>
        <div class="wrapper">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <header class="panel-heading">考勤
                                    <span class="tools pull-right">
                                        <button onclick="myPrint(document.getElementById('print'))" class="btn btn-warning" style="margin-top: -4px;">打 印</button>
                                              <select class="form-control" id="ym" style="width: 124px; display: inline;">                                                
                                              </select>
                                    </span>
                                </header>
                                <div class="panel-body" style="min-height: 186px;" id="print">
                                    <table class="table table-bordered table-striped table-condensed" border="1">
                                        <thead>
                                        <tr>
                                            <th>日期</th>
                                            <th>打卡</th>
                                            <th>状态</th>
                                            <th>IP</th>
                                        </tr>
                                        </thead>
                                        <tbody id="t_body">
                                        <c:forEach items="${list}" var="PmsCheckworks">
	                                        <tr>
	                                            <td>${PmsCheckworks.created}</td>
	                                            <td>${PmsCheckworks.clock}</td>
	                                            <c:set var="checktype" value="<%=com.opms.unti.Checktype.values() %>"/>
                    							<c:forEach items="${checktype}" var="type">
                       							 <c:if test="${PmsCheckworks.type==type.index}">
	                                           		<td>${type.type}</td>
	                                            </c:if>
                    							</c:forEach>	                                         
	                                            <td>${PmsCheckworks.ip}</td>
	                                        </tr> 
	                                      </c:forEach>  
	                                      </tbody>                                    
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="blog-post">
                                <div class="text-center"> <a href="JavaScript:" id="js-clock" class="btn btn-info">打卡<br>
                                    <span><fmt:formatDate value="${date}" type="time"/></span></a>
                                     </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="blog-post">
                                <h3>当月小计</h3>
                                <ul id="subtotal">
                                    <li>出勤天数:${subtotal.workdays} 天</li>

                                    <li>正常：${subtotal.normal}次 </li>

                                    <li>迟到：${subtotal.late}次 </li>

                                    <li>早退：${subtotal.early}次 </li>

                                    <li>请假: 56 小时</li>
                                    <li>外出: 0 小时</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer> 2016 © Admin by Lock &nbsp;&nbsp;<a href="http://opms.milu365.cn/">OPMS官网</a> · <a href="http://opms.docs.milu365.cn/">OPMS手册</a></footer>

    </div>
</section>
<input type="hidden" id="created" value="<%=session.getAttribute("created")%>"/>
<script src="/OPMS/js/jquery.min.js"></script>
<script src="/OPMS/js/bootstrap.min.js"></script>
<script src="/OPMS/js/jquery.nicescroll.js"></script>
<script src="/OPMS/js/scripts.js"></script>
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
<script src="js/jquery.validate.js"></script>
<script src="js/opms.js"></script>
<script>    
    $(function(){
    	var created=$('#created').val();
    	var str=created.substr(0,5)+created.substr(6,1);
    	var myDate = new Date();
	    var year=myDate.getFullYear();
	    var month=myDate.getMonth(); 
        var html = '';
        for(var i=month+1;i>0; i--) {
            html += '<option value="'+year+'-'+addZero(i)+'">'+year+'年'+addZero(i)+'月</option>';
        }
        $('#ym').html(html);
       //按年月查询
        $('#ym').on('change', function(){
        	var created=$(this).val();
        	$.post('listCheckworkbycreated',{created:created},function(data){
        		var html='';
        		 jQuery.each(data.list, function(i,PmsCheckworks){
        			var created =jsonTimeStamp(PmsCheckworks.created).substr(0,11);
                 	var clock=jsonTimeStamp(PmsCheckworks.clock).substr(11,20);
                 	var type;                 	
               		if(PmsCheckworks.type==1){
               			type="正常";
               		}else if(PmsCheckworks.type==2){
               			type="迟到";
               		}else if(PmsCheckworks.type==3){
               			type="早退";
               		}else{
               			type="加班";
               		}
                 	html +='<tr>'
                         +'<td>'+created+'</td>'
                         +'<td>'+clock+'</td>'
                         +'<td>'+type+'</td>'
                         +'<td>'+PmsCheckworks.ip+'</td>'
                         +'</tr>'
                 }); 
        		 var subtotal=data.subtotal;
        		 var h='<li>出勤天数:'+subtotal.workdays +'天</li>'
	                 +'<li>正常：'+subtotal.normal+'次</li>'
	                 +'<li>迟到：'+subtotal.late+'次 </li>'
	                 +'<li>早退：'+subtotal.early+'次 </li>'
	                 +'<li>请假: 56 小时</li>'
	                 +'<li>外出: 0 小时</li>'
        		 $('#subtotal').html(h);
        		 $('#t_body').html(html);
        		 $('#type').val(0);
        		 $('#ym option').each(function(i){
        	            if ($('#ym').val() == $(this).attr('value')) {
        	                $(this).attr('selected', true);
        	            }
        	        });
        	},'json');
        
        });
       
		
        $.ajax({
            success:function(result, status, xhr){
                var originalDate = new Date(xhr.getResponseHeader("Date"));
                var date = originalDate;
                callbackTime(date)
            }
        });
        var srv_nowtime;
        function callbackTime(req){
            srv_nowtime = new Date(req).getTime();
            showTime();
            window.setInterval(showTime, 1000);
        }
        function showTime(){
            srv_nowtime += 1000;
            var nowtime = new Date(srv_nowtime); 
            $('#js-clock span').text(addZero(nowtime.getHours())+":"+addZero(nowtime.getMinutes())+":"+addZero(nowtime.getSeconds()));
        }
        
    })
    $(function(){
    	  $('#js-clock').on('click', function(){
              var that = $(this);
              var time = that.find('span').text();
              $.post('insertCheckwork',{ clock: time },function(data){
            	  dialogInfo(data.message);                 
            	  if(data.message!="今日打卡次数超过两次"){
            		  setTimeout(function(){window.location.href='listCheckworkbyuserid';}, 2000);
            	  }else{
            		  setTimeout(function(){ $('#dialogInfo').modal('hide'); }, 2000);
            	  }         	  
              },'json');
              
          });
    })
    $(function(){
    	var myDate = new Date();
	    var year=myDate.getFullYear();
	    var month=myDate.getMonth()+1; 
	    var str=''+year+'-0'+month+'';
    	$('#submit').on('click',function(){
			var type=$('#type').val();
			if(type==0){
				window.location.href='listCheckworkbyuserid';
			}else{
				$.post('listCheckworkbytype',{type:type},function(data){
	        		var html='';
	        		 jQuery.each(data.list, function(i,PmsCheckworks){
	        			var created =jsonTimeStamp(PmsCheckworks.created).substr(0,11);
	                 	var clock=jsonTimeStamp(PmsCheckworks.clock).substr(11,20);
	                 	var type;                 	
	               		if(PmsCheckworks.type==1){
	               			type="正常";
	               		}else if(PmsCheckworks.type==2){
	               			type="迟到";
	               		}else if(PmsCheckworks.type==3){
	               			type="早退";
	               		}else{
	               			type="加班";
	               		}
	                 	html +='<tr>'
	                         +'<td>'+created+'</td>'
	                         +'<td>'+clock+'</td>'
	                         +'<td>'+type+'</td>'
	                         +'<td>'+PmsCheckworks.ip+'</td>'
	                         +'</tr>'
	                 }); 
	        		 $('#t_body').html(html);
	        		 var subtotal=data.subtotal;
	        		 var h='<li>出勤天数:'+subtotal.workdays+'天</li>'
		                 +'<li>正常：'+subtotal.normal+'次</li>'
		                 +'<li>迟到：'+subtotal.late+'次 </li>'
		                 +'<li>早退：'+subtotal.early+'次 </li>'
		                 +'<li>请假: 56 小时</li>'
		                 +'<li>外出: 0 小时</li>'
	        		 $('#subtotal').html(h);
	        		 $('#type option').each(function(i){
	        	            if (str == $(this).attr('value')) {
	        	                $(this).attr('selected', true);
	        	            }
	        	      });
	        		 $('#ym').val(str);
				},'json');
			}			
		});
		
    });
    function jsonTimeStamp(milliseconds){
   	 var datetime = new Date();
   	 datetime.setTime(milliseconds);
   	 var year=datetime.getFullYear(); 
   	 var month = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1) : datetime.getMonth() + 1;
   	 var date = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime.getDate();
   	 var hour = datetime.getHours()< 10 ? "0" + datetime.getHours() : datetime.getHours();
   	 var minute = datetime.getMinutes()< 10 ? "0" + datetime.getMinutes() : datetime.getMinutes();
   	 var second = datetime.getSeconds()< 10 ? "0" + datetime.getSeconds() : datetime.getSeconds();
   	 return year + "-" + month + "-" + date+" "+hour+":"+minute+":"+second;
  }

</script>
<div class="modal fade" id="dialogInfo" tabindex="-1" role="dialog" aria-labelledby="dialogInfoTitle" style="display: none;" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="dialogInfoTitle">OPMS提示</h4>
            </div>
            <div class="modal-body">
                <p>打卡成功</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>