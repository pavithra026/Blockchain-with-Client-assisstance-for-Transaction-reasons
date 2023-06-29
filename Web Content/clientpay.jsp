<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
/* Design reference: https://codepen.io/mycnlz/pen/reLOZV */

/* basic */
*,
*:before,
*:after {
	box-sizing: border-box;
}
html,
body {
	height: 100%;
}
body {
	font: 16px/1.2 "Roboto", sans-serif;
	color: #333;
}

/* ui_btn */
.ui_btn {
	display: inline-block;
	width: 100%;
	text-align: center;
	border-radius: 3px;
	background-color: white;
	cursor: pointer;
}
.b_lg {
	padding: 8px;
	font-size: 14px;
}
.b_primary {
	border: 1px solid #333;
}

/* formfield */
input {
	width: 100%;
	padding: 10px 12px;
	font-size: 14px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: snow;
}

/* custom scrollbar */
/* width */
::-webkit-scrollbar {
	width: 3px;
}
/* Track */
::-webkit-scrollbar-track {
	background: #f1f1f1;
	border-radius: 10px;
}
/* Handle */
::-webkit-scrollbar-thumb {
	background: #888;
	border-radius: 10px;
}
/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
	background: #555;
}

/* container */
.container {
	display: flex;
	width: 600px;
	height: 450px;
	border-radius: 10px;
	background-color: snow;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 1;
	overflow: hidden;
}

/* box */
.box {
	padding: 24px;
}
.box .head {
	margin-bottom: 16px;
	color: orangered;
	font-size: 20px;
	font-weight: bold;
	text-align: center;
}

/* order_box */
.order_box {
	width: 260px;
}

/* order_list */
.order_list {
	height: 307px;
	overflow: auto;
}
.order_list li {
	display: flex;
	padding: 8px 0;
}
.order_list li + li {
	border-top: 1px solid #ccc;
}
.order_list .prod_img {
	font-size: 0;
}
.order_list .prod_info {
	padding: 0 8px;
	flex-grow: 1;
	display: flex;
	flex-direction: column;
	align-items: flex-end;
}
.order_list .prod_info .name {
	flex-grow: 1;
}
.order_list .prod_info .price {
	color: crimson;
	font-size: 14px;
	font-weight: bold;
}

/* total_price */
.total_price dd {
	text-align: right;
	color: crimson;
	font-size: 32px;
	font-weight: bold;
}

/* payment_box */
.payment_box {
	width: 340px;
	box-shadow: -1px 0 5px 1px #ccc;
	background: linear-gradient(
		0deg,
		rgba(230, 100, 101, 0.5),
		rgba(145, 152, 229, 0.5)
	);
	position: relative;
}
.payment_box .card_img {
	height: 180px;
	padding: 16px;
	margin-bottom: 16px;
	position: relative;
	border-radius: 10px;
	box-shadow: rgba(0, 0, 0, 0.15) 0px 5px 15px 0px;
	background-color: crimson;
	overflow: hidden;
}
.payment_box .card_img:before,
.payment_box .card_img:after {
	content: "";
	display: block;
	width: 250px;
	height: 250px;
	border-radius: 50%;
	background-color: rgba(20, 0, 0, 0.1);
	position: absolute;
	z-index: 1;
}
.payment_box .card_img:before {
	top: 40%;
	right: -40%;
}
.payment_box .card_img:after {
	top: -40%;
	left: -40%;
}
.payment_box .card_img .fa-cc-visa {
	color: white;
	font-size: 32px;
	position: absolute;
	top: 16px;
	right: 16px;
	z-index: 2;
}
.payment_box .card_info {
	margin-top: 40px;
	color: white;
	text-shadow: 1px 1px 2px black;
	position: relative;
	z-index: 2;
}
.payment_box .card_info dt {
	margin-bottom: 4px;
	color: lightgray;
	font-size: 12px;
	text-transform: uppercase;
}
.payment_box .card_info li {
	display: inline-block;
}
.payment_box .card_info li + li {
	margin-left: 4px;
}
.payment_box .number {
	margin-bottom: 12px;
}
.payment_box .expiration,
.payment_box .cvc {
	display: inline-block;
	width: calc(40% - 1px);
}
.payment_box .card_form {
	flex-grow: 1;
}
.payment_box .card_form .footer {
	position: absolute;
	left: 34px;
	right: 34px;
	bottom: 4px;
	border-radius:70px;
}



</style>


<%String billid=request.getParameter("id");
String cname=request.getParameter("name");
String cmail=request.getParameter("email");
String ctotal=request.getParameter("tot");
%>
<body>
<div class="container">

		<div class="box order_box">
			<div class="head">Order Details</div>
			<div class="body">
				<ul class="order_list">
					<li>
						<figure class="prod_img">
							<img src="https://fakeimg.pl/60x60/" />
						</figure>
						<div class="prod_info">
							<div class="name"> Eclipse</div>
							<div class="price">Rs 110</div>
						</div>
					</li>
					<li>
						<figure class="prod_img">
							<img src="https://fakeimg.pl/60x60/" />
						</figure>
						<div class="prod_info">
							<div class="name"> Eclipse</div>
							<div class="price">Rs 110</div>
						</div>
					</li>
					<li>
						<figure class="prod_img">
							<img src="https://fakeimg.pl/60x60/" />
						</figure>
						<div class="prod_info">
							<div class="name"> Eclipse</div>
							<div class="price">Rs 110</div>
						</div>
					</li>
					<li>
						<figure class="prod_img">
							<img src="https://fakeimg.pl/60x60/" />
						</figure>
						<div class="prod_info">
							<div class="name"> Eclipse</div>
							<div class="price">Rs 110</div>
						</div>
					</li>
					<li>
						<figure class="prod_img">
							<img src="https://fakeimg.pl/60x60/" />
						</figure>
						<div class="prod_info">
							<div class="name"> Eclipse</div>
							<div class="price">Rs 110</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="foot">
				<dl class="total_price">
					<dt>Total</dt>
					<dd>$550</dd>
				</dl>
			</div>
		</div>
		<form action="payac.jsp" method="post">
		<div class="box payment_box">
			<div class="head">Payment Information</div>
			<div class="body">
				<div class="card">
					<div class="card_img">
						<i class="fab fa-cc-visa"></i>
						<div class="card_info">
							<dl class="number">
								<dt>card number</dt>
								<dd>
									<ul>
										<li>0000</li>
										<li>0000</li>
										<li>0000</li>
										<li>0000</li>
									</ul>
								</dd>
							</dl>
							<dl class="expiration">
								<dt>expiration</dt>
								<dd>00 / 0000</dd>
							</dl>
							<dl class="cvc">
								<dt>cvc</dt>
								<dd>000</dd>
							</dl>
						</div>
					</div>
					<div class="card_form">
						<div class="content">
							<ul class="card_box">
								<li class="number"><input type="text" placeholder="1234 5678 1234 5678" name="cno" /></li>
								<li class="expiration"><input type="text" placeholder="MM/YYYY" name="exp" /></li><br>
								<li class="cvc"><input type="text" placeholder="123" name="cvv" style=""/></li>
							<br></ul>
						</div><br><br>
						<div class="footer">
							<ul class="bar_tool">
								<li><span  class="ui_btn b_lg b_primary"><button type="submit">pay</button></span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="foot">

			</div>
		</div>
	</form>
	</div>
</body>
</html>