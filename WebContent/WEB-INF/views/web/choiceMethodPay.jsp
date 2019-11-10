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
<div class="container">
<br> <!--   <p class="text-center">More bootstrap 4 components on <a href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com</a></p>
-->


<div class="row">
	<aside class="col-sm-6">
<p>Pay on receipt of the product </p>
<h4><strong>Total : </strong>$ ${sessionScope.myCartTotal} </h4>
<article class="card" >

<div class="card-body p-5">
	<c:choose>
						<c:when test="${message!=null}">
						<p class="alert alert-success">${message}</p>
							      </c:when>
													
<c:otherwise>

						
					</c:otherwise>

		</c:choose>
<form action="pay_directly.php" method="get">
<div style="margin-top: 10px;margin-bottom: 5px ">
<button class="subscribe btn btn-primary btn-block" type="submit"> Confirm  </button></div>
</form>

</div> <!-- card-body.// -->
</article> <!-- card.// -->


	</aside> <!-- col.// -->
	<aside class="col-sm-6">
<p>Payment Online</p>
<h4><strong>Total : </strong>$ ${sessionScope.myCartTotal} </h4>
<article class="card">
<div class="card-body p-5">

<ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
	
	<li class="nav-item">
		<a class="nav-link active" data-toggle="pill" href="#nav-tab-paypal">
		<i class="fab fa-paypal"></i>  Paypal</a></li>
	<li class="nav-item">
		<a class="nav-link" data-toggle="pill" href="#nav-tab-bank">
		<i class="fa fa-university"></i>  Bank Transfer</a></li>
</ul>

<div class="tab-content">
<!--  <div class="tab-pane fade show active" id="nav-tab-card">
	<p class="alert alert-success">Some text success or error</p>
	<form role="form">
	<div class="form-group">
		<label for="username">Full name (on the card)</label>
		<input type="text" class="form-control" name="username" placeholder="" required="">
	</div> 

	<div class="form-group">
		<label for="cardNumber">Card number</label>
		<div class="input-group">
			<input type="text" class="form-control" name="cardNumber" placeholder="">
			<div class="input-group-append">
				<span class="input-group-text text-muted">
					<i class="fab fa-cc-visa"></i>   <i class="fab fa-cc-amex"></i>   
					<i class="fab fa-cc-mastercard"></i> 
				</span>
			</div>
		</div>
	</div>

	<div class="row">
	    <div class="col-sm-8">
	        <div class="form-group">
	            <label><span class="hidden-xs">Expiration</span> </label>
	        	<div class="input-group">
	        		<input type="number" class="form-control" placeholder="MM" name="">
		            <input type="number" class="form-control" placeholder="YY" name="">
	        	</div>
	        </div>
	    </div>
	    <div class="col-sm-4">
	        <div class="form-group">
	            <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
	            <input type="number" class="form-control" required="">
	        </div> 
	    </div>
	</div> 
	<button class="subscribe btn btn-primary btn-block" type="button"> Confirm  </button>
	</form>
</div> --><!-- tab-pane.// -->
<div class="tab-pane fade show active" id="nav-tab-paypal">
<p>Paypal is easiest way to pay online</p>
<p>
<form method="POST" action="pay_by_paypal.php">
	<input type="hidden" value="${sessionScope.myCartTotal}" name="price" />
	<button class="btn btn-primary" type="submit"> <i class="fab fa-paypal"></i> Payment with Paypal </button>
</form>
</p>
<p><strong>Note:</strong> 
You must use paypal account to pay </p>
</div>
<div class="tab-pane fade" id="nav-tab-bank">
<p>Bank accaunt details</p>
<dl class="param">
  <dt>BANK: </dt>
  <dd> THE WORLD BANK</dd>
</dl>
<dl class="param">
  <dt>Accaunt number: </dt>
  <dd> 12345678912345</dd>
</dl>
<dl class="param">
  <dt>IBAN: </dt>
  <dd> 123456789</dd>
</dl>
<p><strong>Note:</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. </p>
</div> <!-- tab-pane.// -->
</div> <!-- tab-content .// -->

</div> <!-- card-body.// -->
</article> <!-- card.// -->


	</aside> <!-- col.// -->
</div> <!-- row.// -->

</div> 
<!--container end.//-->

<br><br>

</body>
</html>