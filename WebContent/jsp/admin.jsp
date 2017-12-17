<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Admin  | Groom4JEE</title>
<link
	href='http://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900%7CPacifico'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/favicon.ico">

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
<link href="<%=request.getContextPath()%>/css/css/loading.css"
	rel="stylesheet">
</head>
<!--/head-->
<body>
	<div id="main" class="wrap">
	<jsp:include page="/jsp/admin-header.jsp"></jsp:include>
	<section class="page-top wrap">
			<h2 class="page-section-title">Admin</h2>
		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<!-- <h4>Add Subject Topic</h4> -->
					<%-- <s:form action="add-subject-topic" method="post" cssClass="center" theme="simple" id="add-subject-form" >
						<div class="row">
							<div class="col-md-3">
								<s:select name="subject" id="subject" cssClass="form-control input-md"
									tabindex="1" list="#{'IIT Foundation':'IIT Foundation', 'Olympiad':'Olympiad', 'Grand Test':'Grand Test', 'EAMCET':'EAMCET', 'engg':'Engineering'}" headerKey="" headerValue="Select Subject"></s:select>
							</div>
							<div class="col-md-3">
								<s:textfield name="topic"  cssClass="form-control input-md" placeholder="Topic name" tabindex="2"></s:textfield>
							</div>
							<div class="col-md-3">
								<s:select name="standard" id="standard" cssClass="form-control input-md"
								tabindex="3" list="#{'3':'Third', '4':'Fourth', '5':'Fifth', '6':'Sixth','7':'Seventh','8':'Eigth','9':'Ninth', '10':'Tenth', '11':'Elebenth', '12':'Twelfth'}" headerKey="" headerValue="Select Class"></s:select>
							</div>
							<div class="col-md-3">
								<s:textfield name="testdate"  cssClass="form-control input-md" placeholder="Test Date" tabindex="4"></s:textfield>(Format:yyyy-mm-dd)
							</div>
							<div class="col-md-12 form-group">
								<button class="btn btn-success btn-md pull-right" type="submit">ADD</button>
							</div>
						</div>
					</s:form> --%>
					<!-- <hr> -->
					<h4>Add Question to subject-topic</h4>
					<s:form action="add-question-to-topic" method="post" cssClass="center" theme="simple" enctype="multipart/form-data" >
						<s:fielderror/>
						<div class="row">
							<div class="row">
							<div class="col-md-3">
									<s:select name="tpcstandard" id="tpcstandard" cssClass="form-control input-md"
									tabindex="3" list="#{'6':'Sixth','7':'Seventh','8':'Eigth','9':'Ninth', '10':'Tenth', '11':'Intermediate'}" headerKey="" headerValue="Select Class"></s:select>
								</div>
								<div class="col-md-3">
									<div id="loadbar" style="display: none;z-index: 999;">
										<div class="blockG" id="rotateG_01"></div>
										<div class="blockG" id="rotateG_02"></div>
										<div class="blockG" id="rotateG_03"></div>
										<div class="blockG" id="rotateG_04"></div>
										<div class="blockG" id="rotateG_05"></div>
										<div class="blockG" id="rotateG_06"></div>
										<div class="blockG" id="rotateG_07"></div>
										<div class="blockG" id="rotateG_08"></div>
									</div>
									<s:select name="subject" id="topic-subject" cssClass="form-control input-md"
										tabindex="1" list="{}" headerKey="" headerValue="Select Subject"></s:select>
									<%-- <s:select name="subject" id="topic-subject" cssClass="form-control input-md"
												tabindex="1" list="#{'Maths':'Math', 'Physics':'Physics', 'biology':'Biology', 'Science':'Science', 'engg':'Engineering'}" headerKey="" headerValue="Select Subject"></s:select> --%>			
								</div>
								
								<div class="col-md-3">
									<s:select name="topic" id="ques-topic" cssClass="form-control input-md"
										tabindex="2" list="{}" headerKey="" headerValue="Select Topic"></s:select>
								</div>
								<div class="col-md-3"></div>
							</div>
							<div class="row">
								<div class="col-md-10 col-md-offset-1 aler alert-danger">
									<p id="noOfQues"></p>
									<p id="nxtQ"></p>
								</div><div class="col-md-1"></div>
							</div>
							<div class="row">
								<div class="col-md-10">
									<s:textarea name="question" cols="40" rows="5" cssClass="form-control input-md" placeholder="Question here" tabindex="4"></s:textarea>
								</div><div class="col-md-2"></div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<s:textfield name="option1"  cssClass="form-control input-md" placeholder="Option 1" tabindex="5"></s:textfield>
								</div>
								<div class="col-md-3">
									<s:textfield name="option2"  cssClass="form-control input-md" placeholder="Option 2" tabindex="6"></s:textfield>
								</div>
								<div class="col-md-3">
									<s:textfield name="option3"  cssClass="form-control input-md" placeholder="Option 3" tabindex="7"></s:textfield>
								</div>
								<div class="col-md-3">
									<s:textfield name="option4"  cssClass="form-control input-md" placeholder="Option 4" tabindex="8"></s:textfield>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<s:select name="answer" id="answer" cssClass="form-control input-md"
										 list="#{'A':'A','B':'B','C':'C','D':'D'}" headerKey="" headerValue="Select Answer" tabindex="9"></s:select>
								</div>
								<div class="col-md-10">
									<s:textarea name="explanation" cols="40" rows="5" cssClass="form-control input-md" placeholder="Answer Explanation here" tabindex="10"></s:textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">(Question Image)
									<s:file name="questionImage" label="Select an image to upload" cssClass="form-control input-md"></s:file>
								</div>
								<div class="col-md-12 form-group">
									<button class="btn btn-success btn-md pull-right" type="submit">ADD</button>
								</div>
							</div>
						</div>
					</s:form>
				</div>
			</div>
		</div>
		<div class="zz-top-foo"></div>
		<jsp:include page="/common/footer.jsp"></jsp:include>
		<!--/#footer-->
	</div>
	<!-- main -->

	<div class="scrollup">
		<a class="scrolltop" href="#"> <i class="fa fa-chevron-up"></i>
		</a>
	</div>

	<script src="<%=request.getContextPath()%>/js/js/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/jquery.prettyPhoto.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/main.js"></script>
	<script type="text/javascript">
	$('document').ready(function(){
		 var loading = $('#loadbar').hide();
		 
		 $('#tpcstandard').change(function(){
			  $('#noOfQues').empty();
			  $('#nxtQ').empty();
			 loading.show();
			$.ajax({
				dataType:"json",
				url:"<%=request.getContextPath()%>/getCategoryByStandard.action",
				data:{"standard":$(this).val()}
				
				
			}).done(function(response){
				
				if(typeof response ==='object') 
			     {
			        var $select = $('#topic-subject');
			        $select.find('option').remove();
			        $('<option>').val("-1").text("Select").appendTo($select)
			        $.each(response, function(key, value) {
			        $('<option>').val(key).text(value).appendTo($select);
			     });
			     }
				loading.hide();
			});
		});
		 

		$('#topic-subject').change(function(){
			  $('#noOfQues').empty();
			  $('#nxtQ').empty();
			 loading.show();
			$.ajax({
				dataType:"json",
				url:"<%=request.getContextPath()%>/getTopicsByStandard.action",
				data:{"subject":$(this).val(), "standard":$('#tpcstandard').val()}
				
				
			}).done(function(response){
				
				if(typeof response ==='object') 
			     {
			        var $select = $('#ques-topic');
			        $select.find('option').remove();
			        $('<option>').val("-1").text("Select").appendTo($select)
			        $.each(response, function(key, value) {
			        $('<option>').val(key).text(value).appendTo($select);
			     });
			     }
				loading.hide();
			});
		});
		
		$('#ques-topic').change(function(){
			 loading.show();
			  $('#noOfQues').empty();
			  $('#nxtQ').empty();
			 $.ajax({
				type: 'POST',
				url:'<%=request.getContextPath() %>/admin/noofQues.jsp',
				
				data: { "subject":$('#topic-subject').val(), "topic":$('#ques-topic').val()},
				cache: false,
			  beforeSend:function(){
				  $("body").css("cursor", "progress");
			  },
			  success:function(result){
					  $('#noOfQues').html(+result+ " number of question have been uploaded to this topic so far.");
					  result = result++;
					  $('#nxtQ').html("You are trying to upload next question.");
					  loading.hide();
			  },
			  
			  complete:function(){
				$("body").css("cursor", "default"); 
					//$('#like').attr("disabled", true);
			  }
		   });
		});
		
	});
	
	</script>
	
</body>
</html>