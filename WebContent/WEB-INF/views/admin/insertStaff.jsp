<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ include file="/inclue/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8">
<title>Insert</title>
</head>
<body>
	<div>
	<h4 class="card-title">Insert sản phẩm</h4>
	<p class="card-description">
                      Personal info
                    </p>
	</div>
	<div class="border " style="margin-top:20px;margin-left:20px; width: 70%;border-radius: 10px;
	padding-left: 20px;
	

	padding-top: 20px;
	">
<h4 class="text-primary" style="text-align: center">Images Product</h4>
		<div >
			<form id="upload-form" class="upload-box"
				action="homeAdmin/product/fileUpload.php" method="post"
				enctype="multipart/form-data">
				<label><strong>Image :</strong></label><br>
				<input  type="file" id="file1" name="hinh1" /><br> 
				<br>
				<button type="submit"
					class="file-upload-browse btn btn-gradient-primary"
					id="upload-button">
					<i class="mdi mdi-upload btn-icon-prepend"></i>Upload
				</button>
			</form>
		</div>
		<hr class="">	
	<div class="card-body" >
		<h4 class="text-primary" style="text-align: center">Details Product</h4><br>
		<form:form action="homeAdmin/employe/insertStaff.php"
			modelAttribute="staffs" method="POST">

			<div class="" disabled="true">
				<label>Tên sản phẩm</label>
				<form:input class="form-control" path="staffName" />
			</div>
<br>
			<div class="form-group">
				<label>Role</label>
				<form:select path="role"  class="form-control"
					 >
					 <form:option value="111111"> --SELECT--</form:option>
    				<form:options items="${role}"></form:options>
					 </form:select>
			</div>
			
			<div class="form-group">
				<label>Chọn hình </label>
				<form:input class ="form-control" path="photo" id="photo"  />

			<br>
			<div>
				<label>address</label>
				<form:input class ="form-control" path="address" />
			</div>
			<div>
				<label>phone</label>
				<form:input  path="phone" class="form-control" />
			</div>
			<div>
				<label>email</label>
				<form:input  path="email" class="form-control" />
			</div>
			<div>
				<label>Mo ta</label>
				<form:textarea path="description" class="form-control" />
			</div>
<br>
			<div>
				<button class="file-upload-browse btn btn-gradient-primary" id="submit"type="submit"disabled="true">Insert</button>
				
				<input id="NoticeImages" type="hidden"/>Please upload Images , you will spend button
			</div>
		</form:form>
	</div>
	<!-- Bootstrap Progress bar 
    <div class="progress">
      <div id="progressBar" class="progress-bar progress-bar-success" role="progressbar"
        aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">0%</div>
    </div>

 Alert 
    <div id="alertMsg" style="color: red;font-size: 18px;"></div>--></div>
</body>
</html>