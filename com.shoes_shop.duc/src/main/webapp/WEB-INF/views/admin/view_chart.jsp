<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
	<title></title>
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/js/sweetalert/dist/sweetalert2.min.css">
</head>
<body>
 	<div class="wrapper">
		<div class="container">
			<div class="dashboard">
				<jsp:include page="/WEB-INF/views/admin/common/leftContent.jsp"></jsp:include>
				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">Xem thống kê</p>
						<div class="right__table" id = "refreshTable">
							 <div id="navbar" class="collapse navbar-collapse">
					          <ul class="nav navbar-nav option-chart">
					            <li><a href="#" id="line">Dạng đường cong</a></li>
					            <li><a href="#" id="bar">Dạng cột</a></li>
					            <li><a href="#" id="refreshCharts">Làm mới</a></li>
					          </ul>
					        </div>
							<div class="right__tableWrapper">
							<div id="parentDiv">		
							</div>
							<div class = "explain-chart">
								<div class = "blue-columns">
									<span class = "square" title = "Doanh thu từ đầu tháng đến bây giờ"></span>
									<span class = "square-text">Doanh thu từ đầu tháng đến bây giờ</span>
								</div>
								<div class = "red-columns">
									<span class = "square-red" title = "Doanh thu cùng thời điểm của năm trước"></span>
									<span class = "square-text">Doanh thu cùng thời điểm của năm trước</span>
								</div>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.0.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/Chart.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/getChartData.js"></script>
	<script type="text/javascript">
	userScript.getChartData();
	</script>
	<script src="${pageContext.request.contextPath}/js/sweetalert/dist/sweetalert2.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
<style>
.option-chart{
	display: flex !important;
	margin-bottom: 10px !important;
}

.option-chart li{
	margin-right: 20px !important;
	padding: 5px 10px;
	background-color: #cfdac3;
}

.square{
	padding: 0px 10px;
}
.blue-columns span{
	margin-right: 20px;
}

.red-columns span{
	margin-right: 20px;
}

.blue-columns .square{
 	background-color: rgba(0,174,219,1);
    border: 1px solid rgba(220,220,220,1);
}
.square-red{
	padding: 0px 10px;
	margin-right: 20px;
 	background-color: red !important;
    border: 1px solid rgba(220,220,220,1);
}
</style>
</html>