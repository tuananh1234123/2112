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
	${message}
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
				<label><strong>Image 1 :</strong></label><br>
				<input   type="file" id="file1" name="hinh1" /><br> 
				<label><strong>Image 2 :</strong></label><br>
				<input   type="file" id="file2" name="hinh2" /><br> 
				<label><strong>Image 3 :</strong></label><br>
				<input   type="file"id="file3" name="hinh3" /><br> 
					<span id="upload-error"
					class="error">${uploadError}</span><br>
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
		<form:form action="homeAdmin/product/insertProduct.php"
			modelAttribute="products" method="POST">

			<div class="" disabled="true">
				<label>Tên sản phẩm</label>
				<form:input class="form-control" path="productName" />
			</div>

			<div>
				<label>Nhà cung cấp</label>
				<form:select class="form-control" path="supplier.supplierID" items="${supplier}"
					itemValue="supplierID" itemLabel="supplierName" />
			</div>

			<div class="form-group">
				<label>Nha san xuat</label>
				<form:select path="manufacturer.manufacturerID" class="form-control"
					items="${manufacturer}" itemValue="manufacturerID"
					itemLabel="manufacturerName" />
			</div>
			<div class="form-group">
				<label><p>Danh Mục</p></label>
				<form:select path="category.CategoryID" items="${category}" class="form-control"
					itemValue="CategoryID" itemLabel="categoryName" />
			</div>
			<div class="form-group">
				<label>Chọn hình 1</label>
				<form:input class ="form-control" path="photo1" id="photo1" />

			</div>
			<div class="form-group">
				<label>Chọn hình 2</label>
				<form:input class ="form-control" path="photo2" id="photo2" />

			</div>
			<div class="form-group">
				<label>Chọn hình 3</label>
				<form:input class ="form-control" path="photo3" id="photo3" />

			</div>
			<div>
				<label>Gia</label>
				<form:input class ="form-control" path="price" />
			</div>
			<div>
				<label>So luong</label>
				<form:input  path="quantity" class="form-control" />
			</div>
			<div>
				<label>Mo ta</label>
				<form:textarea path="description" class="form-control" />
			</div>
<br>
			<div>
				<button class="file-upload-browse btn btn-gradient-primary" id="submit"type="submit"disabled="true">Insert</button>
				<label id="NoticeImages" />Please upload Images </label>
				<input id="NoticeImages" type="hidden"/>Please upload Images 
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