<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/inclue/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="cart_container">
					<p class="alert alert-success">${message}</p>
					<p class="alert alert-success">${thanks}</p>
						<div class="cart_title">Catalog Product You Bought</div>
						
						<div class="cart_items">
						      <c:forEach var="map" items="${sessionScope.myCartItems}">
							<ul class="cart_list">
								<li class="cart_item clearfix">
									<div class="cart_item_image">
								
									<img src="<c:url value='/template/web/images/${map.value.product.photo1}'/>
												" alt=""></div>
									<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
										<div class="cart_item_name cart_info_col">
											<div class="cart_item_title">Name</div>
											<div class="cart_item_text">${map.value.product.productName}</div>
										</div>
										
										<div class="cart_item_quantity cart_info_col">
											<div class="cart_item_title">Quantity</div>
											<div class="cart_item_text">${map.value.quantity}</div>
										</div>
										<div class="cart_item_price cart_info_col">
											<div class="cart_item_title">Price</div>
											<div class="cart_item_text">${map.value.product.price}</div>
										</div>
										<div class="cart_item_total cart_info_col">
											<div class="cart_item_title">Total</div>
											<div class="cart_item_text">$${map.value.quantity * map.value.product.price}</div>
										</div>
									
									</div>
								</li>
							</ul>
							</c:forEach>
						</div>
						
						<!-- Order Total -->
						<div class="order_total">
							<div class="order_total_content text-md-right">
								<div class="order_total_title">Order Total:</div>
								<div class="order_total_amount">$${sessionScope.myCartTotal }</div>
							</div>
						</div>

						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>