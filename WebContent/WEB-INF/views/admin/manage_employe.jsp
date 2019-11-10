<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/inclue/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<title>Trang chủ</title>

</head>
<body>

	<div class="card-body">

		<p class="card-description">
			Add Design By : Tuấn Anh
			<code></code>
		</p>


		<%-- This is JSP comment 
                        List<Products> spham_list = (new SanPhamDAO()).getListSanPham();
                    %> 
                     --%>
		<form action="" method="post">
		
			<div class="" style="">
			<div style="float:right;padding-right: 20px">
			<a href="homeAdmin/employe/insertStaff.php">
				<button type="button" class="btn btn-gradient-primary mb-2">
                     <i class="mdi mdi-file-check btn-icon-prepend"></i>
                     New Product
                </button>
			</a>
			</div>
				<table class="table table-striped table-bordered " id="table">
					<thead >
						<tr >
							<th><Strong class="card-title text-primary">Choice</strong>
							</th>
							<th><Strong class="card-title text-primary">staffID</strong></th>
							<th><Strong class="card-title text-primary"> Name
									Producta</strong></th>
							<th><Strong class="card-title text-primary"> Birthday</strong>
							</th>
							<th style="text-align: center;"><Strong
								class="card-title text-primary"> Images Staff</strong></th>
							<th style="text-align: center;"><Strong
								class="card-title text-primary"> Email</strong></th>
							<th style="text-align: center;"><Strong
								class="card-title text-primary"> Phone</strong></th>
								<th style="text-align: center;"><Strong
								class="card-title text-primary"> Role</strong></th>
							<th style="text-align: center;"><Strong
								class="card-title text-primary"> Actiton</strong></th>

						</tr>
					</thead>
					<tbody>${message}
						<c:forEach var="p" items="${Staff}">
							<tr>
								<td><input type="checkbox" name="chon"
									value="${p.getStaffID()}"></td>
								<td>${p.getStaffID()}</td>
								<td>${p.staffName}</td>
								<td>${p.birthday}</td>
								<td style="text-align: center;"><img
									src="template/admin/images/${p.photo} " height="300px" width="300px" /></td>
								<td>${p.email}</td>
								<td>${p.phone}</td>
								<td>
								 <c:if test = "${p.role ==1}">
       Admin
      </c:if>
       <c:if test = "${p.role ==2}">
        Stocker
      </c:if> <c:if test = "${p.role ==3}">
        Sales
      </c:if>
								
								</td>
								<td>
									<div style="text-align: center;">
										<a class="" href="homeAdmin/employe/delProduct/${p.getStaffID()}.php" title="delete"><i
											class="mdi mdi-delete-forever"></i></a> <a class="" href="homeAdmin/product/editpro/${p.getStaffID()}.php"
											title="Update"><i class="mdi mdi-arrow-up-bold-circle"></i></a>
									</div>
								</td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="row">
				<button type="submit" class="btn btn-link btn-fw">
					<i class="card-title text-primary">Delete all products?</i>
				</button>

			</div>
		</form>
		<ul id="pagination-container" class="pagination"></ul>

		<!-- content-wrapper ends -->
		<!-- partial:partials/_footer.html -->

		<!-- partial -->
	</div>
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<script
		src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	
	<script>
		$(document).ready(function() {
			$('#table').DataTable({

				"aLengthMenu" : [ [ 5, 10, 25, -1 ], [ 5, 10, 25, "All" ] ],
				"iDisplayLe ngth" : 5
			}

			);
		});
	</script>
</body>
</html>