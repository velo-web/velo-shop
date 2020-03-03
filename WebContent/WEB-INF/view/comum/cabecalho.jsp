<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>

	<!-- top-area Start -->
	<div class="top-area">
		<div class="header-area">
			<!-- Start Navigation -->
			<nav
				class="navbar navbar-default bootsnav  navbar-sticky navbar-scrollspy"
				data-minus-value-desktop="70" data-minus-value-mobile="55"
				data-speed="1000">

				<c:set var="total" value="${0}" />
				<c:set var="quantidade" value="${0}" />


				<div class="container">
					<!-- Start Atribute Navigation -->
					<div class="attr-nav">
						<ul>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <span class="lnr lnr-cart"></span> <span
									class="badge badge-bg-1" id="quantidadeTotal"></span>
							</a>
								<ul class="dropdown-menu cart-list s-cate">
									<c:if test="${!empty carrinho}">
										<c:forEach items="${carrinho}" var="produto">
											<c:set var="total" value="${total + produto.valor}" />
											<c:set var="quantidade"
												value="${quantidade + produto.quantidade}" />
											<li class="single-cart-list"><a href="#" class="photo">
													<img src="img/${produto.imagem }" class="cart-thumb"
													alt="image" />
											</a>
												<div class="cart-list-txt">
													<h6>
														<a href="index?acao=ProdutoInfo&id=${produto.id}">${produto.nome}</a>
													</h6>
													<p>
														${produto.quantidade} x - <span class="price">R$
															${produto.valor }</span>
													</p>
												</div> <!--/.cart-list-txt-->
												<div class="cart-close">
													<span class="lnr lnr-cross"></span>
												</div> <!--/.cart-close--></li>
										</c:forEach>

									<!--/.single-cart-list --></li>
							<!--/.single-cart-list -->
							<li class="total"><span>Total: R$ ${total}</span>
								<button class="btn-cart pull-right"
									onclick="window.location.href='index?acao=CarrinhoLista'">Carrinho</button></li>
						</ul>
						</li>
						</c:if>
						<!--/.dropdown-->
						</ul>
					</div>

					<!--/.attr-nav-->
					<!-- End Atribute Navigation -->

					<!-- Start Header Navigation -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navbar-menu">
							<i class="fa fa-bars"></i>
						</button>
						<a class="navbar-brand" href="./">VeloShop </a> <img
							src="img/logo.png" width="50" height="50" id="logo" />
					</div>
					<!--/.navbar-header-->
					<!-- End Header Navigation -->

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse menu-ui-design"
						id="navbar-menu">
						<ul class="nav navbar-nav navbar-center" data-in="fadeInDown"
							data-out="fadeOutUp">
							<li class="scroll"><a href="./">Home</a></li>
							<li class="scroll"><a href="index?acao=ProdutoLista">Vitrine</a></li>
							<li class="scroll"><a href="index?acao=CarrinhoLista">Carrinho</a></li>
						</ul>
						<!--/.nav -->
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!--/.container-->
			</nav>
			<!--/nav-->
			<!-- End Navigation -->
		</div>
		<!--/.header-area-->
		<div class="clearfix"></div>

	</div>
	<!-- /.top-area-->
	<!-- top-area End -->
	<script>
		document.querySelector("#quantidadeTotal").textContent = ${quantidade};
	</script>
	</header>
	<!--/.welcome-hero-->
	<!--welcome-hero end -->