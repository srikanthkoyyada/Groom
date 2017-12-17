<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en-US">
<!--<![endif]-->
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">

<title>Blog | Groom4More</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]> <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> <![endif]-->

<link
	href='http://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900%7CPacifico'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/favicon.ico">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/extra.css" type="text/css"
	media="all" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap/css/bootstrap.min.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/js/prettyphoto/css/prettyPhoto.css"
	type="text/css" media="all" />
<style>
.comm-field, #msg-contact {
    width: 100%;{
    width: 100%;
    padding: 8px;
    margin-top: 8px;
    border: 1px solid #e5e5e5;
    background: #f5f5f5;
    color: #707070;
}
</style>
</head>

<body>


	<div id="main" class="wrap">

		<jsp:include page="/common/header.jsp"></jsp:include>

		<section class="page-top wrap">

			<h2 class="page-section-title">Blog</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">

			<div class="container">

				<div class="row">

					<div class="col-sm-7 col-md-8">

						<article class="single-blog-post">

							<img class="img-responsive margin-b32"
								src="<%=request.getContextPath()%>/images/blog/blog-1.jpg" alt="" />

							<div class="clearfix margin-b32">

								<div class="date-meta">
									<span class="date-big">25</span> <span class="date-small">May,
										2014</span>
								</div>
								<!-- end date-meta -->

								<div class="blog-title">

									<h4>Do you want chocolate milk with cookies?</h4>

									<ul class="blog-meta">
										<li><i class="fa fa-folder"></i><a href="#">News</a></li>
										<li><i class="fa fa-comments"></i> <a href="#">3
												Comments</a></li>
									</ul>

								</div>
								<!--  blog-title -->

							</div>
							<!--  clearfix -->

							<p>Suspendisse mollis pellentesque viverra. Maecenas vitae
								lorem urna. Nullam aliquam justo vel lorem interdum consectetur.
								Vivamus et molestie tellus, nec pharetra nisi. Morbi malesuada
								feugiat tincidunt. Nullam sit amet tempus ante. Donec ac urna
								tristique, dapibus magna sed, elementum tellus.</p>

							<p>Curabitur auctor erat sed nisl interdum luctus. Lorem
								ipsum dolor sit amet, consectetur adipiscing elit. Praesent enim
								felis, semper hendrerit hendrerit porta, lacinia nec ante. Ut
								consectetur fringilla porta. Proin luctus, enim non porta
								feugiat, libero dolor adipiscing metus, id pharetra arcu urna
								vel elit. Vivamus consectetur tellus sapien, a faucibus diam
								placerat id. Sed arcu felis, tincidunt sed ligula nec, suscipit
								euismod massa. Curabitur faucibus ante est, ac sollicitudin
								purus congue ut.</p>

							<h5>Quisque nec nisl vitae mi eleifend</h5>

							<p>Proin quis elit id ipsum aliquet ullamcorper sed malesuada
								nunc. Integer dictum sem a mollis iaculis. Morbi sit amet urna
								orci. Aenean tellus nisl, malesuada quis risus et, pulvinar
								gravida diam. Phasellus ut mattis ante, quis dictum dui. Aenean
								quis sem ut justo euismod porttitor. Praesent vel magna at massa
								lacinia malesuada id id sem. Nulla egestas imperdiet commodo.
								Nunc egestas nisl eu quam mattis suscipit. Maecenas iaculis,
								felis eu ultricies posuere, sapien sem eleifend erat, non
								tincidunt purus velit eu odio. Duis feugiat eros eu turpis
								bibendum, at lobortis quam consequat.</p>

							<blockquote>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									In vitae cursus nunc, eu aliquet augue. Duis neque turpis,
									sodales et augue ut, consectetur feugiat leo. Aenean faucibus
									risus ultrices, dictum odio in, gravida purus. Morbi imperdiet,
									risus in faucibus mollis.</p>
							</blockquote>

							<p>Curabitur auctor erat sed nisl interdum luctus. Lorem
								ipsum dolor sit amet, consectetur adipiscing elit. Praesent enim
								felis, semper hendrerit hendrerit porta, lacinia nec ante. Ut
								consectetur fringilla porta. Proin luctus, enim non porta
								feugiat, libero dolor adipiscing metus, id pharetra arcu urna
								vel elit. Vivamus consectetur tellus sapien, a faucibus diam
								placerat id. Sed arcu felis, tincidunt sed ligula nec, suscipit
								euismod massa. Curabitur faucibus ante est, ac sollicitudin
								purus congue ut.</p>

							<p class="post-tags">
								<i class="fa fa-tags"></i>Tags: <a href="#">kids</a>, <a
									href="#">activity</a>, <a href="#">play</a>
							</p>

							<div class="clearfix margin-72">

								<div class="date-meta">
									<span class="date-big">3</span> <span class="date-small">Comments</span>
								</div>
								<!-- end date-meta -->

								<div class="blog-title">

									<h4>Join the conversation</h4>

								</div>
								<!--  blog-title -->

							</div>
							<!--  clearfix -->


							<ol class="commentlist">
								<li class="comment even thread-even depth-1">
									<div id="comment-2" class="comment-body  clearfix">
										<div class="comment-details">
											<div class="comment-avatar">
												<img alt='' src='<%=request.getContextPath()%>/images/gravatar.png'
													class='avatar avatar-45 photo' height='45' width='45' />
											</div>
											<!-- /comment-avatar -->
											<div class="comment-right">
												<div class="comment-author vcard">
													<cite class="author">John Doe</cite>
													<div class="comment-date">December 24, 2013</div>
												</div>
												<!-- /comment-meta -->
												<div class="comment-content">
													<div class="comment-text">
														<p>Curabitur sollicitudin ligula ipsum, nec luctus
															massa. In non ipsum eros, nec mollis orci.</p>
													</div>
													<!-- /comment-text -->
													<div class="reply">
														<a class='comment-reply-link' href='#'>Reply</a>
													</div>
													<!-- /reply -->
												</div>
												<!-- /comment-content -->
											</div>
											<!-- /comment-right -->

										</div>
										<!-- /comment-details -->
									</div>
									<!-- /comment -->
									<ul class="children">
										<li class="comment odd alt depth-2">
											<div id="comment-4" class="comment-body  clearfix">
												<div class="comment-details">
													<div class="comment-avatar">
														<img alt='' src='<%=request.getContextPath()%>/images/gravatar.png'
															class='avatar avatar-45 photo' height='45' width='45' />
													</div>
													<!-- /comment-avatar -->
													<div class="comment-right">
														<div class="comment-author vcard">
															<cite class="author">Eric Doe</cite>
															<div class="comment-date">December 24, 2013</div>
														</div>
														<!-- /comment-meta -->
														<div class="comment-content">
															<div class="comment-text">
																<p>Duis eu leo est, id dignissim enim. Vestibulum
																	turpis ante, consequat id interdum sit amet</p>
															</div>
															<!-- /comment-text -->
															<div class="reply">
																<a class='comment-reply-link' href='#'>Reply</a>
															</div>
															<!-- /reply -->
														</div>
														<!-- /comment-content -->
													</div>
													<!-- /comment-right -->
												</div>
												<!-- /comment-details -->
											</div>
											<!-- /comment -->
										</li>
										<!-- comment- -->
									</ul>
									<!-- .children -->
								</li>
								<!-- comment- -->
								<li class="comment even thread-odd thread-alt depth-1">
									<div id="comment-3" class="comment-body  clearfix">
										<div class="comment-details">
											<div class="comment-avatar">
												<img alt='' src='<%=request.getContextPath()%>/images/gravatar.png' height='45' width='45' />
											</div>
											<!-- /comment-avatar -->
											<div class="comment-right">
												<div class="comment-author vcard">
													<cite class="author">Julia Doe</cite>
													<div class="comment-date">December 24, 2013</div>
												</div>
												<!-- /comment-meta -->
												<div class="comment-content">
													<div class="comment-text">
														<p>Pellentesque placerat nulla at quam semper vitae
															ullamcorper eros lacinia. Suspendisse ornare sem id est.</p>
													</div>
													<!-- /comment-text -->
													<div class="reply">
														<a class='comment-reply-link' href='#'>Reply</a>
													</div>
													<!-- /reply -->
												</div>
												<!-- /comment-content -->
											</div>
											<!-- /comment-right -->
										</div>
										<!-- /comment-details -->
									</div>
									<!-- /comment -->
								</li>
								<!-- comment- -->
							</ol>

							<div class="clearfix margin-72">

								<div class="date-meta">
									<span class="date-big"><i class="fa fa-comment"></i></span> <span
										class="date-small">Add Comment</span>
								</div>
								<!-- end date-meta -->

								<div class="blog-title">

									<h4>Leave a Comment</h4>

								</div>
								<!--  blog-title -->

							</div>
							<!--  clearfix -->

							<form action="" method="post" id="commentform">

								<p>
									<input type="text" name="author" id="author" class="comm-field"
										value="" placeholder="Name" size="22" tabindex="1"
										aria-required='true' />
								</p>
								<p>
									<input type="text" name="email" id="email" class="comm-field"
										value="" placeholder="Email" size="22" tabindex="2"
										aria-required='true' />
								</p>
								<p>
									<input type="text" name="url" id="url" class="comm-field"
										value="" placeholder="URL" size="22" tabindex="3"
										aria-required='true' />
								</p>

								<p>
									<textarea name="comment" id="msg-contact" placeholder="Message"
										rows="7" tabindex="4"></textarea>
								</p>

								<p>
									<input name="submit" type="submit" id="submit-contact"
										tabindex="5" value="Submit Comment" />
								</p>

							</form>



						</article>
						<!-- blog-post-->

					</div>
					<!-- col-md-8-->

					<div class="col-sm-5 col-md-4">
						<aside>

							<ul>

								<li class="widget widget_text"><h5 class="widgettitle">Text
										Widget</h5>
									<div class="textwidget">
										<p>Maecenas lorem mi, interdum id commodo ac, tincidunt
											vitae magna. In hac habitasse platea dictumst. Pellentesque
											quam justo, aliquam non accumsan a, aliquam id dolor. Duis
											aliquet imperdiet varius. Nullam malesuada sem vel nisi
											faucibus iaculis.</p>
									</div></li>

								<li class="widget widget_categories"><h5
										class="widgettitle">Categories</h5>
									<ul>
										<li class="cat-item cat-item-17"><a href="#">News</a></li>
										<li class="cat-item cat-item-1"><a href="#">Activities</a>
										</li>
										<li class="cat-item cat-item-18"><a href="#">Outdoor</a>
										</li>
										<li class="cat-item cat-item-19"><a href="#">Hobbies</a>
										</li>
									</ul></li>

								<li class="widget widget_recent_entries">
									<h5 class="widgettitle">Recent Articles</h5>
									<ul>
										<li><a href="#">Do you want chocolate milk with
												cookies?</a></li>
										<li><a href="#">How to draw a butterfly</a></li>
										<li><a href="#">It was a crazy week of learning</a></li>
										<li><a href="#">Every kid can make a difference</a></li>
										<li><a href="#">Kids love to play mobile games</a></li>
									</ul>
								</li>

								<li class="widget widget_archive"><h5 class="widgettitle">Archives</h5>
									<ul>
										<li><a href='#'>May 2014</a></li>
										<li><a href='#'>April 2014</a></li>
										<li><a href='#'>March 2014</a></li>
									</ul></li>

								<li class="widget widget_tag_cloud"><h5 class="widgettitle">Tags</h5>
									<div class="tagcloud">
										<a href='#' class='tag-link-14' title='2 topics'
											style='font-size: 14px;'>kids</a> <a href='#'
											class='tag-link-7' title='1 topic' style='font-size: 14px;'>games</a>
										<a href='#' class='tag-link-10' title='2 topics'
											style='font-size: 14px;'>bike</a> <a href='#'
											class='tag-link-13' title='1 topic' style='font-size: 14px;'>play</a>
										<a href='#' class='tag-link-11' title='1 topic'
											style='font-size: 14px;'>drawing</a> <a href='#'
											class='tag-link-8' title='1 topic' style='font-size: 14px;'>activity</a>
										<a href='#' class='tag-link-12' title='2 topics'
											style='font-size: 14px;'>learn</a> <a href='#'
											class='tag-link-16' title='2 topics' style='font-size: 14px;'>music</a>
										<a href='#' class='tag-link-9' title='4 topics'
											style='font-size: 14px;'>club</a> <a href='#'
											class='tag-link-15' title='1 topic' style='font-size: 14px;'>book</a>
									</div></li>

							</ul>

						</aside>
					</div>
					<!--.col-md-4-->

				</div>
				<!-- row -->

			</div>
			<!-- container-->

		</div>
		<!-- page-content-->

		<div class="zz-top-foo"></div>

		<jsp:include page="/common/footer.jsp"></jsp:include>		

	</div>
	<!-- main -->

	<div class="scrollup">
		<a class="scrolltop" href="#"> <i class="fa fa-chevron-up"></i>
		</a>
	</div>


	<script type='text/javascript'
		src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/css/bootstrap/js/bootstrap.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.easing.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.flexslider-min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/prettyphoto/js/jquery.prettyPhoto.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.form.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/init.js'></script>

</body>
</html>