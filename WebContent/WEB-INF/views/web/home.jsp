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
	<!-- Banner -->
	<%@ include file="/inclue/web/banner.jsp"%>
	<!-- Page Content -->

	<div class="characteristics">
		<div class="container">
			<div class="row">

				<!-- Char. Item -->
				<div class="col-lg-3 col-md-6 char_col">

					<div
						class="char_item d-flex flex-row align-items-center justify-content-start">
						<div class="char_icon">
							<img
								src="<c:url value='/template/web/images/char_1.png'/>
						"
								alt="">
						</div>
						<div class="char_content">
							<div class="char_title">Free Delivery</div>
							<div class="char_subtitle">from $50</div>
						</div>
					</div>
				</div>

				<!-- Char. Item -->
				<div class="col-lg-3 col-md-6 char_col">

					<div
						class="char_item d-flex flex-row align-items-center justify-content-start">
						<div class="char_icon">
							<img
								src="
						<c:url value='/template/web/images/char_2.png'/>
						"
								alt="">
						</div>
						<div class="char_content">
							<div class="char_title">Free Delivery</div>
							<div class="char_subtitle">from $50</div>
						</div>
					</div>
				</div>

				<!-- Char. Item -->
				<div class="col-lg-3 col-md-6 char_col">

					<div
						class="char_item d-flex flex-row align-items-center justify-content-start">
						<div class="char_icon">
							<img src="<c:url value='/template/web/images/char_3.png'/>"
								alt="">
						</div>
						<div class="char_content">
							<div class="char_title">Free Delivery</div>
							<div class="char_subtitle">from $50</div>
						</div>
					</div>
				</div>

				<!-- Char. Item -->
				<div class="col-lg-3 col-md-6 char_col">

					<div
						class="char_item d-flex flex-row align-items-center justify-content-start">
						<div class="char_icon">
							<img src="<c:url value='/template/web/images/char_4.png'/>"
								alt="">
						</div>
						<div class="char_content">
							<div class="char_title">Free Delivery</div>
							<div class="char_subtitle">from $50</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Deals of the week -->

	<div class="deals_featured">
		<div class="container">
			<div class="row">
				<div
					class="col d-flex flex-lg-row flex-column align-items-center justify-content-start">

					<!-- Deals -->

					<div class="deals">
						<div class="deals_title">Deals of the Week</div>
						<div class="deals_slider_container">

							<!-- Deals Slider -->
							<div class="owl-carousel owl-theme deals_slider">

								<!-- Deals Item -->
								<div class="owl-item deals_item">
									<div class="deals_image">
										<img
											src="<c:url value='/template/web/images/deals.png'/>
									"
											alt="">
									</div>
									<div class="deals_content">
										<div
											class="deals_info_line d-flex flex-row justify-content-start">
											<div class="deals_item_category">
												<a href="#">Headphones</a>
											</div>
											<div class="deals_item_price_a ml-auto">$300</div>
										</div>
										<div
											class="deals_info_line d-flex flex-row justify-content-start">
											<div class="deals_item_name">Beoplay H7</div>
											<div class="deals_item_price ml-auto">$225</div>
										</div>
										<div class="available">
											<div
												class="available_line d-flex flex-row justify-content-start">
												<div class="available_title">
													Available: <span>6</span>
												</div>
												<div class="sold_title ml-auto">
													Already sold: <span>28</span>
												</div>
											</div>
											<div class="available_bar">
												<span style="width: 17%"></span>
											</div>
										</div>
										<div
											class="deals_timer d-flex flex-row align-items-center justify-content-start">
											<div class="deals_timer_title_container">
												<div class="deals_timer_title">Hurry Up</div>
												<div class="deals_timer_subtitle">Offer ends in:</div>
											</div>
											<div class="deals_timer_content ml-auto">
												<div class="deals_timer_box clearfix" data-target-time="">
													<div class="deals_timer_unit">
														<div id="deals_timer1_hr" class="deals_timer_hr"></div>
														<span>hours</span>
													</div>
													<div class="deals_timer_unit">
														<div id="deals_timer1_min" class="deals_timer_min"></div>
														<span>mins</span>
													</div>
													<div class="deals_timer_unit">
														<div id="deals_timer1_sec" class="deals_timer_sec"></div>
														<span>secs</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- Deals Item -->
								<div class="owl-item deals_item">
									<div class="deals_image">
										<img
											src="<c:url value='/template/web/images/deals.png'/>
									"
											alt="">
									</div>
									<div class="deals_content">
										<div
											class="deals_info_line d-flex flex-row justify-content-start">
											<div class="deals_item_category">
												<a href="#">Headphones</a>
											</div>
											<div class="deals_item_price_a ml-auto">$300</div>
										</div>
										<div
											class="deals_info_line d-flex flex-row justify-content-start">
											<div class="deals_item_name">Beoplay H7</div>
											<div class="deals_item_price ml-auto">$225</div>
										</div>
										<div class="available">
											<div
												class="available_line d-flex flex-row justify-content-start">
												<div class="available_title">
													Available: <span>6</span>
												</div>
												<div class="sold_title ml-auto">
													Already sold: <span>28</span>
												</div>
											</div>
											<div class="available_bar">
												<span style="width: 17%"></span>
											</div>
										</div>
										<div
											class="deals_timer d-flex flex-row align-items-center justify-content-start">
											<div class="deals_timer_title_container">
												<div class="deals_timer_title">Hurry Up</div>
												<div class="deals_timer_subtitle">Offer ends in:</div>
											</div>
											<div class="deals_timer_content ml-auto">
												<div class="deals_timer_box clearfix" data-target-time="">
													<div class="deals_timer_unit">
														<div id="deals_timer2_hr" class="deals_timer_hr"></div>
														<span>hours</span>
													</div>
													<div class="deals_timer_unit">
														<div id="deals_timer2_min" class="deals_timer_min"></div>
														<span>mins</span>
													</div>
													<div class="deals_timer_unit">
														<div id="deals_timer2_sec" class="deals_timer_sec"></div>
														<span>secs</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- Deals Item -->
								<div class="owl-item deals_item">
									<div class="deals_image">
										<img
											src="
									<c:url value='/template/web/images/deals.png'/>"
											alt="">
									</div>
									<div class="deals_content">
										<div
											class="deals_info_line d-flex flex-row justify-content-start">
											<div class="deals_item_category">
												<a href="#">Headphones</a>
											</div>
											<div class="deals_item_price_a ml-auto">$300</div>
										</div>
										<div
											class="deals_info_line d-flex flex-row justify-content-start">
											<div class="deals_item_name">Beoplay H7</div>
											<div class="deals_item_price ml-auto">$225</div>
										</div>
										<div class="available">
											<div
												class="available_line d-flex flex-row justify-content-start">
												<div class="available_title">
													Available: <span>6</span>
												</div>
												<div class="sold_title ml-auto">
													Already sold: <span>28</span>
												</div>
											</div>
											<div class="available_bar">
												<span style="width: 17%"></span>
											</div>
										</div>
										<div
											class="deals_timer d-flex flex-row align-items-center justify-content-start">
											<div class="deals_timer_title_container">
												<div class="deals_timer_title">Hurry Up</div>
												<div class="deals_timer_subtitle">Offer ends in:</div>
											</div>
											<div class="deals_timer_content ml-auto">
												<div class="deals_timer_box clearfix" data-target-time="">
													<div class="deals_timer_unit">
														<div id="deals_timer3_hr" class="deals_timer_hr"></div>
														<span>hours</span>
													</div>
													<div class="deals_timer_unit">
														<div id="deals_timer3_min" class="deals_timer_min"></div>
														<span>mins</span>
													</div>
													<div class="deals_timer_unit">
														<div id="deals_timer3_sec" class="deals_timer_sec"></div>
														<span>secs</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>

						</div>

						<div class="deals_slider_nav_container">
							<div class="deals_slider_prev deals_slider_nav">
								<i class="fas fa-chevron-left ml-auto"></i>
							</div>
							<div class="deals_slider_next deals_slider_nav">
								<i class="fas fa-chevron-right ml-auto"></i>
							</div>
						</div>
					</div>

					<!-- Featured -->
					<div class="featured">
						<div class="tabbed_container">
							<div class="tabs">
								<ul class="clearfix">
									<li class="active">Featured</li>
									
								</ul>
								<div class="tabs_line">
									<span></span>
								</div>
							</div>

							<!-- Product Panel -->
							<div class="product_panel panel active">
								<div class="featured_slider slider">

									<!-- Slider Item -->
									<c:forEach items="${sanpham}" var="sp">
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img style="height: 150px;width: 135px" src="<c:url value='/template/web/images/${sp.photo1}'/>
												" alt="">
											</div>
											<div class="product_content">
												<div class="product_price discount">
													$${sp.price}
												</div>
												<div class="product_name">
													<div>
														<a href="product.html">${sp.productName}</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button type="button" class="product_cart_button"><a href="product/${sp.getProductID()}.php" style="color: white;">Add to Cart</a></button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount">-25%</li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>
	</c:forEach>
									

									

								</div>
								<div class="featured_slider_dots_cover"></div>
							</div>

							<!-- Product Panel -->

							<!-- Product Panel -->

				

						</div>
					</div>
			</div>
			</div>
			</div>
			</div>

	<!-- Popular Categories -->

	<div class="popular_categories">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="popular_categories_content">
						<div class="popular_categories_title">Popular Categories</div>
						<div class="popular_categories_slider_nav">
							<div class="popular_categories_prev popular_categories_nav">
								<i class="fas fa-angle-left ml-auto"></i>
							</div>
							<div class="popular_categories_next popular_categories_nav">
								<i class="fas fa-angle-right ml-auto"></i>
							</div>
						</div>
						<div class="popular_categories_link">
							<a href="#">full catalog</a>
						</div>
					</div>
				</div>

				<!-- Popular Categories Slider -->

				<div class="col-lg-9">
					<div class="popular_categories_slider_container">
						<div class="owl-carousel owl-theme popular_categories_slider">

							<!-- Popular Categories Item -->
							<div class="owl-item">
								<div
									class="popular_category d-flex flex-column align-items-center justify-content-center">
									<div class="popular_category_image">
										<img
											src="<c:url value='/template/web/images/popular_1.png'/>
										"
											alt="">
									</div>
									<div class="popular_category_text">Smartphones & Tablets</div>
								</div>
							</div>

							<!-- Popular Categories Item -->
							<div class="owl-item">
								<div
									class="popular_category d-flex flex-column align-items-center justify-content-center">
									<div class="popular_category_image">
										<img
											src="<c:url value='/template/web/images/popular_2.png'/>
										"
											alt="">
									</div>
									<div class="popular_category_text">Computers & Laptops</div>
								</div>
							</div>

							<!-- Popular Categories Item -->
							<div class="owl-item">
								<div
									class="popular_category d-flex flex-column align-items-center justify-content-center">
									<div class="popular_category_image">
										<img
											src="<c:url value='/template/web/images/popular_3.png'/>
										"
											alt="">
									</div>
									<div class="popular_category_text">Gadgets</div>
								</div>
							</div>

							<!-- Popular Categories Item -->
							<div class="owl-item">
								<div
									class="popular_category d-flex flex-column align-items-center justify-content-center">
									<div class="popular_category_image">
										<img src="<c:url value='/template/web/images/popular_4.png'/>"
											alt="">
									</div>
									<div class="popular_category_text">Video Games & Consoles</div>
								</div>
							</div>

							<!-- Popular Categories Item -->
							<div class="owl-item">
								<div
									class="popular_category d-flex flex-column align-items-center justify-content-center">
									<div class="popular_category_image">
										<img src="<c:url value='/template/web/images/popular_5.png'/>"
											alt="">
									</div>
									<div class="popular_category_text">Accessories</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Banner -->

	<div class="banner_2">
		<div class="banner_2_background"
			style="background-image: url(
			<c:url value='/template/web/images/banner_2_background.jpg'/>)"></div>
		<div class="banner_2_container">
			<div class="banner_2_dots"></div>
			<!-- Banner 2 Slider -->

			<div class="owl-carousel owl-theme banner_2_slider">

				<!-- Banner 2 Slider Item -->
				<div class="owl-item">
					<div class="banner_2_item">
						<div class="container fill_height">
							<div class="row fill_height">
								<div class="col-lg-4 col-md-6 fill_height">
									<div class="banner_2_content">
										<div class="banner_2_category">Laptops</div>
										<div class="banner_2_title">MacBook Air 13</div>
										<div class="banner_2_text">Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. Maecenas fermentum laoreet.</div>
										<div class="rating_r rating_r_4 banner_2_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="button banner_2_button">
											<a href="#">Explore</a>
										</div>
									</div>

								</div>
								<div class="col-lg-8 col-md-6 fill_height">
									<div class="banner_2_image_container">
										<div class="banner_2_image">
											<img
												src="<c:url value='/template/web/images/banner_2_product.png'/>"
												alt="">

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Banner 2 Slider Item -->
				<div class="owl-item">
					<div class="banner_2_item">
						<div class="container fill_height">
							<div class="row fill_height">
								<div class="col-lg-4 col-md-6 fill_height">
									<div class="banner_2_content">
										<div class="banner_2_category">Laptops</div>
										<div class="banner_2_title">MacBook Air 13</div>
										<div class="banner_2_text">Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. Maecenas fermentum laoreet.</div>
										<div class="rating_r rating_r_4 banner_2_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="button banner_2_button">
											<a href="#">Explore</a>
										</div>
									</div>

								</div>
								<div class="col-lg-8 col-md-6 fill_height">
									<div class="banner_2_image_container">
										<div class="banner_2_image">
											<img src="
											<c:url value='/template/web/images/banner_2_product.png'/>
											
											" alt="">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Banner 2 Slider Item -->
				<div class="owl-item">
					<div class="banner_2_item">
						<div class="container fill_height">
							<div class="row fill_height">
								<div class="col-lg-4 col-md-6 fill_height">
									<div class="banner_2_content">
										<div class="banner_2_category">Laptops</div>
										<div class="banner_2_title">MacBook Air 13</div>
										<div class="banner_2_text">Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. Maecenas fermentum laoreet.</div>
										<div class="rating_r rating_r_4 banner_2_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="button banner_2_button">
											<a href="#">Explore</a>
										</div>
									</div>

								</div>
								<div class="col-lg-8 col-md-6 fill_height">
									<div class="banner_2_image_container">
										<div class="banner_2_image">
											<img src="
											<c:url value='/template/web/images/banner_2_product.png'/>
											" alt="">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
<div class="owl-item "><div class="owl-item">
					<div class="banner_2_item">
						<div class="container fill_height">
							<div class="row fill_height">
								<div class="col-lg-4 col-md-6 fill_height">
									<div class="banner_2_content">
										<div class="banner_2_category">Laptops</div>
										<div class="banner_2_title">MacBook Air 13</div>
										<div class="banner_2_text">Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. Maecenas fermentum laoreet.</div>
										<div class="rating_r rating_r_4 banner_2_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="button banner_2_button">
											<a href="#">Explore</a>
										</div>
									</div>

								</div>
								<div class="col-lg-8 col-md-6 fill_height">
									<div class="banner_2_image_container">
										<div class="banner_2_image">
											<img src="
												<c:url value='/template/web/images/banner_2_product.png'/>
											" alt="">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div></div>
			</div>
		</div>
	</div>

	<!-- Hot New Arrivals -->

	

	<!-- Best Sellers -->

	<div class="best_sellers">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="tabbed_container">
						<div class="tabs clearfix tabs-right">
							<div class="new_arrivals_title">Hot Best Sellers</div>
							<ul class="clearfix">
								<li class="active">Top 20</li>
								<li>Audio & Video</li>
								<li>Laptops & Computers</li>
							</ul>
							<div class="tabs_line">
								<span></span>
							</div>
						</div>

						<div class="bestsellers_panel panel active">

							<!-- Best Sellers Slider -->

							<div class="bestsellers_slider slider">

								<!-- Best Sellers Item -->
								<c:forEach var="u" items="${sp}">
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="template/web/images/${u[4]}" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">${u[0]}</a>
											</div>
											<div class="bestsellers_name">
												<a href="product/${u[1]}.php">${u[2]}</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$22555<span>${u[3]}</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>
								</c:forEach>
							</div>
						</div>

						<div class="bestsellers_panel panel">

							<!-- Best Sellers Slider -->

							<div class="bestsellers_slider slider">

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_1.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_2.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_3.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_4.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_5.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_6.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_1.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_2.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_3.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_4.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_5.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_6.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

							</div>
						</div>
						<div class="bestsellers_panel panel">

							<!-- Best Sellers Slider -->

							<div class="bestsellers_slider slider">

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_1.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_2.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_3.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_4.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_5.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_6.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_1.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_2.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_3.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_4.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_5.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								<!-- Best Sellers Item -->
								<div class="bestsellers_item">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img src="images/best_6.png" alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">Xiaomi Redmi Note 4</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												$225<span>$300</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- Adverts -->

	<div class="adverts">
		<div class="container">
			<div class="row">

				<div class="col-lg-4 advert_col">

					<!-- Advert Item -->

					<div
						class="advert d-flex flex-row align-items-center justify-content-start">
						<div class="advert_content">
							<div class="advert_title">
								<a href="#">Trends 2018</a>
							</div>
							<div class="advert_text">Lorem ipsum dolor sit amet,
								consectetur adipiscing Donec et.</div>
						</div>
						<div class="ml-auto">
							<div class="advert_image">
								<img
									src="<c:url value='/template/web/images/adv_1.png'/>
								"
									alt="">
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 advert_col">

					<!-- Advert Item -->

					<div
						class="advert d-flex flex-row align-items-center justify-content-start">
						<div class="advert_content">
							<div class="advert_subtitle">Trends 2018</div>
							<div class="advert_title_2">
								<a href="#">Sale -45%</a>
							</div>
							<div class="advert_text">Lorem ipsum dolor sit amet,
								consectetur.</div>
						</div>
						<div class="ml-auto">
							<div class="advert_image">
								<img
									src="<c:url value='/template/web/images/adv_2.png'/>
								"
									alt="">
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 advert_col">

					<!-- Advert Item -->

					<div
						class="advert d-flex flex-row align-items-center justify-content-start">
						<div class="advert_content">
							<div class="advert_title">
								<a href="#">Trends 2018</a>
							</div>
							<div class="advert_text">Lorem ipsum dolor sit amet,
								consectetur.</div>
						</div>
						<div class="ml-auto">
							<div class="advert_image">
								<img src="<c:url value='/template/web/images/adv_3.png'/>"
									alt="">
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Trends -->

	

	<!-- Reviews -->

	
	<!-- Recently Viewed -->

	


</body>

</html>