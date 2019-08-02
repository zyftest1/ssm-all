<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>客户列表-BootCRM</title>

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">CRM客户管理系统 v2.0</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-messages">
					<li><a href="#">
							<div>
								<strong>令狐冲</strong> <span class="pull-right text-muted">
									<em>昨天</em>
								</span>
							</div>
							<div>今天晚上向大哥找我吃饭，讨论一下去梅庄的事...</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>查看全部消息</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-messages --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-tasks">
					<li><a href="#">
							<div>
								<p>
									<strong>任务 1</strong> <span class="pull-right text-muted">完成40%</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-success"
										role="progressbar" aria-valuenow="40" aria-valuemin="0"
										aria-valuemax="100" style="width: 40%">
										<span class="sr-only">完成40%</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<p>
									<strong>任务 2</strong> <span class="pull-right text-muted">完成20%</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-info" role="progressbar"
										aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
										style="width: 20%">
										<span class="sr-only">完成20%</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>查看所有任务</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-tasks --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-alerts">
					<li><a href="#">
							<div>
								<i class="fa fa-comment fa-fw"></i> 新回复 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-envelope fa-fw"></i> 新消息 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-tasks fa-fw"></i> 新任务 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-upload fa-fw"></i> 服务器重启 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>查看所有提醒</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-alerts --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> 用户设置</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
					<li class="divider"></li>
					<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
							退出登录</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="查询内容...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button>
							</span>
						</div> <!-- /input-group -->
					</li>
					<li><a href="customer.action" class="active"><i
							class="fa fa-edit fa-fw"></i> 客户管理</a></li>
					<li><a href="salevisit.action"><i
							class="fa fa-dashboard fa-fw"></i> 客户拜访</a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">客户管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline" action="${pageContext.request.contextPath }/customer/list.action" method="get">
						<div class="form-group">
							<label for="customerName">客户名称</label> 
							<input type="text" class="form-control" id="customerName" value="${custName }" name="custName">
						</div>
						<div class="form-group">
							<label for="customerFrom">客户来源</label> 
							<select	class="form-control" id="customerFrom" placeholder="客户来源" name="custSource">
								<option value="">--请选择--</option>
								<c:forEach items="${customerSources}" var="item">
									<option value="${item.dictId}">
<%--											<c:if test="${item.dictId == custSource}"> selected</c:if>>--%>
											${item.dictItemName}
									</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="custIndustry">所属行业</label> 
							<select	class="form-control" id="custIndustry"  name="custIndustry">
								<option value="">--请选择--</option>
								<c:forEach items="${customerJobs}" var="item">
									<option value="${item.dictId}">
											${item.dictItemName}
									</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="custLevel">客户级别</label>
							<select	class="form-control" id="custLevel" name="custLevel">
								<option value="">--请选择--</option>
								<c:forEach items="${customerLevels}" var="item">
									<option value="${item.dictId}">${item.dictItemName}</option>
								</c:forEach>
							</select>
						</div>
						<button type="submit" class="btn btn-primary">查询</button>
<%--						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#customerInsertDialog">添加</button>--%>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">客户信息列表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>客户名称</th>
									<th>客户来源</th>
									<th>客户所属行业</th>
									<th>客户级别</th>
									<th>固定电话</th>
									<th>手机</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.list}" var="row">
									<tr>
										<td>${row.custId}</td>
										<td>${row.custName}</td>
										<td>${row.custSource}</td>
										<td>${row.custIndustry}</td>
										<td>${row.custLevel}</td>
										<td>${row.custPhone}</td>
										<td>${row.custMobile}</td>
										<td>
											<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="editCustomer(${row.custId})">修改</a>
											<a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer(${row.custId})">删除</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="col-md-12 text-right">
						 <!--分页 -->
							<nav aria-label="Page navigation">
								<ul class="pagination">
									<c:if test="${page.hasPreviousPage}">
										<li>
											<a href="/customer/index/${page.prePage}" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span>
											</a>
										</li>
									</c:if>
									<c:if test="${not page.hasPreviousPage}">
										<li class="disabled">
											<a href="/customer/index/${page.prePage}" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span>
											</a>
										</li>
									</c:if>
									<c:forEach begin="1" end="${page.pages}" step="1" var="p">
										<li><a href="/customer/index/${p}">${p}</a></li>
									</c:forEach>

									<c:if test="${page.hasNextPage}">
										<li>
											<a href="/customer/index/${page.nextPage}" aria-label="Next">
												<span aria-hidden="true">&raquo;</span>
											</a>
										</li>
									</c:if>
									<c:if test="${not page.hasNextPage}">
										<li class="disabled">
											<a href="#" aria-label="Next">
												<span aria-hidden="true">&raquo;</span>
											</a>
										</li>
									</c:if>
								</ul>
							</nav>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- 客户编辑对话框 -->
	<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改客户信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_customer_form" method="post">
						<input type="hidden" id="edit_cust_id" name="custId"/>
						<input type="hidden" name="_method" value="PUT"/>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">客户名称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_customerName" placeholder="客户名称" name="custName">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;">客户来源</label> 
							<div class="col-sm-10">
								<select	class="form-control" id="edit_customerFrom" placeholder="客户来源" name="custSource">
									<option value="">--请选择--</option>
									<c:forEach items="${fromType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custIndustry" style="float:left;padding:7px 15px 0 27px;">所属行业</label>
							<div class="col-sm-10"> 
								<select	class="form-control" id="edit_custIndustry"  name="custIndustry">
									<option value="">--请选择--</option>
									<c:forEach items="${industryType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">客户级别</label>
							<div class="col-sm-10">
								<select	class="form-control" id="edit_custLevel" name="custLevel">
									<option value="">--请选择--</option>
									<c:forEach items="${levelType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custLevel}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_linkMan" class="col-sm-2 control-label">联系人</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_linkMan" placeholder="联系人" name="custLinkman">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_phone" class="col-sm-2 control-label">固定电话</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_phone" placeholder="固定电话" name="custPhone">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_mobile" class="col-sm-2 control-label">移动电话</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_mobile" placeholder="移动电话" name="custMobile">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_zipcode" class="col-sm-2 control-label">邮政编码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_zipcode" placeholder="邮政编码" name="custZipcode">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_address" class="col-sm-2 control-label">联系地址</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_address" placeholder="联系地址" name="custAddress">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="customerInsertDialog" tabindex="-1" role="dialog"
		 aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="insertModalLabel">添加客户信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="insert_customer_form" method="post">
<%--						<input type="hidden" name="_method" value="PUT"/>--%>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">客户名称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="insert_customerName" placeholder="客户名称" name="custName">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;">客户来源</label>
							<div class="col-sm-10">
								<select	class="form-control" id="insert_customerFrom" placeholder="客户来源" name="custSource">
									<option value="">--请选择--</option>
									<option value="6">电话营销</option>
									<option value="7">网络营销</option>
<%--									<c:forEach items="${fromType}" var="item">--%>
<%--										<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}"> selected</c:if>>${item.dict_item_name }</option>--%>
<%--									</c:forEach>--%>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custIndustry" style="float:left;padding:7px 15px 0 27px;">所属行业</label>
							<div class="col-sm-10">
								<select	class="form-control" id="insert_custIndustry"  name="custIndustry">
									<option value="">--请选择--</option>
									<option value="1">教育培训</option>
									<option value="2">电子商务</option>
									<option value="3">对外贸易</option>
									<option value="4">酒店旅游</option>
									<option value="5">房地产</option>
<%--									<c:forEach items="${industryType}" var="item">--%>
<%--										<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>--%>
<%--									</c:forEach>--%>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">客户级别</label>
							<div class="col-sm-10">
								<select	class="form-control" id="insert_custLevel" name="custLevel">
									<option value="">--请选择--</option>
									<option value="22">普通客户</option>
									<option value="23">VIP客户</option>
								<%--									<c:forEach items="${levelType}" var="item">--%>
<%--										<option value=""></option>--%>
<%--									</c:forEach>--%>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_linkMan" class="col-sm-2 control-label">联系人</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="insert_linkMan" placeholder="联系人" name="custLinkman">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_phone" class="col-sm-2 control-label">固定电话</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="insert_phone" placeholder="固定电话" name="custPhone">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_mobile" class="col-sm-2 control-label">移动电话</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="insert_mobile" placeholder="移动电话" name="custMobile">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_zipcode" class="col-sm-2 control-label">邮政编码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="insert_zipcode" placeholder="邮政编码" name="custZipcode">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_address" class="col-sm-2 control-label">联系地址</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="insert_address" placeholder="联系地址" name="custAddress">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="insertCustomer()">确认</button>
				</div>
			</div>
		</div>
	</div>
	<form action="" method="post" id="restForm">
		<input type="hidden" name="_method" value="delete"/>
	</form>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="<%=basePath%>js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/sb-admin-2.js"></script>
	
	<script type="text/javascript">
		function editCustomer(id) {
			$("#edit_customerFrom").empty();
			$("#edit_custIndustry").empty();
			$("#edit_custLevel").empty();
			$.ajax({
				type:"get",
				url:"/customer/cus/"+id,
				// data:{"id":id},
				success:function(data) {

					var customer = data.customer;
					var cusForm = data.customerSources;
					var cusIndustry = data.customerJobs;
					var custLevel = data.customerLevels;
					//绑定来源
					var opt ,opt1,opt2;
					for (var i = 0;i < cusForm.length;i++){
						if (cusForm[i].dictId == customer.custSource){
							opt = opt + "<option value="+cusForm[i].dictId+" selected = selected>"+cusForm[i].dictItemName+"</option>";
						}else {
							opt = opt + "<option value="+cusForm[i].dictId+">"+cusForm[i].dictItemName+"</option>";
						}
					}
					for (var i = 0;i < cusIndustry.length;i++){
						if (cusIndustry[i].dictId == customer.custIndustry){
							opt1 = opt1 + "<option value="+cusIndustry[i].dictId+" selected = selected>"+cusIndustry[i].dictItemName+"</option>";
						}else {
							opt1 = opt1 + "<option value="+cusIndustry[i].dictId+">"+cusIndustry[i].dictItemName+"</option>";
						}
					}
					for (var i = 0;i < custLevel.length;i++){
						if (custLevel[i].dictId == customer.custLevel){
							opt2 = opt2 + "<option value="+custLevel[i].dictId+" selected = selected>"+custLevel[i].dictItemName+"</option>";

						}else {
							opt2 = opt2 + "<option value="+custLevel[i].dictId+">"+custLevel[i].dictItemName+"</option>";

						}
					}

					$("#edit_customerFrom").append(opt);
					$("#edit_custIndustry").append(opt1);
					$("#edit_custLevel").append(opt2);
					$("#edit_cust_id").val(customer.custId);
					$("#edit_customerName").val(customer.custName);
					$("#edit_customerFrom").val(customer.custSource)
					$("#edit_custIndustry").val(customer.custIndustry)
					$("#edit_custLevel").val(customer.custLevel)
					$("#edit_linkMan").val(customer.custLinkman);
					$("#edit_phone").val(customer.custPhone);
					$("#edit_mobile").val(customer.custMobile);
					$("#edit_zipcode").val(customer.custZipcode);
					$("#edit_address").val(customer.custAddress);
					
				}
			});
		}
		function updateCustomer() {
			// $.post(
			// 		"/customer/index/",
			// 		$("#edit_customer_form").serialize(),
			// 		function(data){
			// 	alert(data);
			// 	window.location.reload();
			// });
			// var  cusName = $("#edit_customerName").val();
			$.ajax({
				url:"/customer/index/",
				type: "POST",
				dataType:"json",
				data:$('#edit_customer_form').serialize(),
				success:function (data) {
					alert(data.msg);
					window.location.reload();
				}
			})
		}

		function deleteCustomer(id) {
			if(confirm('确实要删除该客户吗?')) {
				$.ajax({
					url:"/customer/index/"+id,
					type:"POST",
					dataType: "json",//预期服务器返回的数据类型
					data: $('#restForm').serialize(),
					success:function(data) {
						alert(data.msg);
						window.location.reload();
					}
				});
			}
		}

		function insertCustomer() {
			// $("#edit_customerFrom").empty();
			// $("#edit_custIndustry").empty();
			// $("#edit_custLevel").empty();
			// $.ajax({
			// 	type:"get",
			// 	url:"/customer/cus/"+id,
			// 	// data:{"id":id},
			// 	success:function(data) {
			//
			// 		var customer = data.customer;
			// 		var cusForm = data.customerSources;
			// 		var cusIndustry = data.customerJobs;
			// 		var custLevel = data.customerLevels;
			// 		//绑定来源
			// 		var opt ,opt1,opt2;
			// 		for (var i = 0;i < cusForm.length;i++){
			// 			opt = opt + "<option value="+cusForm[i].dictId+">"+cusForm[i].dictItemName+"</option>";
			// 		}
			// 		for (var i = 0;i < cusIndustry.length;i++){
			// 			opt1 = opt1 + "<option value="+cusIndustry[i].dictId+">"+cusIndustry[i].dictItemName+"</option>";
			// 		}
			// 		for (var i = 0;i < custLevel.length;i++){
			// 			opt2 = opt2 + "<option value="+custLevel[i].dictId+">"+custLevel[i].dictItemName+"</option>";
			// 		}
			// 		$("#edit_customerFrom").append(opt);
			// 		$("#edit_custIndustry").append(opt1);
			// 		$("#edit_custLevel").append(opt2);
			// 		$("#edit_customerFrom").val(customer.custSource)
			// 		$("#edit_custIndustry").val(customer.custIndustry)
			// 		$("#edit_custLevel").val(customer.custLevel)
			// 	}
			// });
			$.ajax({
				url:"/customer/indexInsert/",
				type: "POST",
				dataType:"json",
				data:$('#insert_customer_form').serialize(),
				success:function (data) {
					alert(data.msg);
					window.location.reload();
				}
			})
		}
		// function next(pageNum) {
		// 	$.ajax({
		// 		url:"/customer/index.do",
		// 		data:{"pageNum":pageNum},
		// 		type:"post",
		// 		success:function (data) {
		// 			// window.location.reload();
		// 		}
		// 	})
		// }
	</script>

</body>

</html>
