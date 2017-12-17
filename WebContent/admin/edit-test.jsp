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
	<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet"> -->
	<link href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
	<style type="text/css">
	.active a:before {
	font-family: FontAwesome;
	/* content: "\f146"; */
}
	</style>
</head>
<!--/head-->
<body>
	<div id="main" class="wrap">
	<jsp:include page="/admin/admin-header.jsp"></jsp:include>
	
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
						<div class="col-md-12">
						<h4>Click on edit to edit a question</h4>
						<a href="<%=request.getContextPath()%>/select-edit-test" class="btn btn-sm btn-warning">Go Back to select class,subject and topic</a>
						<s:if test="%{!quizQuestionDetailsList.isEmpty()}">
							<table class="table table-striped table-bordered" id="example">
									        <thead>
									            <tr>
													<th>Q ID</th>
													<th>Q NO</th>
									                <th>Question</th>
									                <th>Option1</th>
									                <th>Option2</th>
									                <th>Option3</th>
									                <th>Option4</th>
									                <th>Answer</th>
													<th>explanation</th>
													<th></th>
									            </tr>
									        </thead>
									        
									        <tbody>
									<s:iterator value="quizQuestionDetailsList" var="question"
										status="status">
										
										
									            <tr>
													<td class="t_q_id"><s:property value="%{#question.q_id}" /></td>
									                <td><s:property value="%{#status.count}" /></td>
									               <td class="t_question"><s:property value="%{#question.question}" /></td>
									                <td class="t_option1"><s:property value="%{#question.option_a}" /></td>
									                <td class="t_option2"><s:property value="%{#question.option_b}" /></td>
									                <td class="t_option3"><s:property value="%{#question.option_c}" /></td>
									                <td class="t_option4"><s:property value="%{#question.option_d}" /></td>
									                <td class="t_answer"><s:property value="%{#question.answer}" /></td>
													<td class="t_explanation"><s:property value="%{#question.explanation}" /></td>
													<td><button type="button" class="btn btn-xs btn-primary q_edit">Edit</button></td>
									            </tr>
									</s:iterator>
									</tbody></table>
						</s:if>
							</div>
						
						
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

				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h6 class="modal-title" id="myModalLabel">Edit Question</h6>
      </div>
      <form id="edit-question">
      <div class="modal-body" style="height: 450px;">
       
							<div class="col-md-8">
							<input type="hidden" name="subject" value="<s:property value="%{subject}" />"/>
							<input type="hidden" name="qid" id="qid"/>
							<div class="row">
								<div class="col-md-12">
									<textarea name="question" id="edit_question" cols="40" rows="10" class="form-control input-md" placeholder="Question here"></textarea>
								</div>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
								<div class="col-md-12">
									<textarea name="explanation" id="edit_explanation" cols="40" rows="5" class="form-control input-md" placeholder="Answer Explanation here"></textarea>
								</div>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
							</div>
							</div>
							<div class="col-md-4">
							<div class="row">
								<div class="col-md-12">
									<input type="text" name="option1"  id="edit_option1" class="form-control input-md" />
							<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
								</div>
								<div class="col-md-12">
									<input type="text" name="option2"  id="edit_option2" class="form-control input-md"/>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;</p></div>
								<div class="col-md-12">
									<input type="text" name="option3"  id="edit_option3" class="form-control input-md" />
								<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
								</div>
								<div class="col-md-12">
									<input type="text" name="option4"  id="edit_option4" class="form-control input-md"/>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
								<select name="answer" id="edit_answer" class="form-control input-md">
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="D">D</option>
								</select>
									<!-- <input type="text" name="answer" id="edit_answer" class="form-control input-md"/> -->
								<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
								</div>
								
							</div>
							<div class="row">
								<div class="col-md-4">
									  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        								
								</div>
								<div class="col-md-6">
									 
        								<button type="button" class="btn btn-primary" id="btnSubmit">Save changes</button>
								</div>
								
							</div>
							
							
							</div>
							
							
      </div>
      <!-- <div class="modal-footer" style="border-top: 0">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div> --></form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
	<script src="<%=request.getContextPath()%>/js/js/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/jquery.prettyPhoto.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/main.js"></script>
	<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript">
	$('document').ready(function(){
		
		var myModal;
		var myTable=$('#example').DataTable();
		$("#example").on("click", ".q_edit", function(){
			
			myModal = $('#myModal');
			  var id = $(this).closest("tr").find("td.t_q_id").text();
			  var question= $(this).closest("tr").find("td.t_question").text();
			  var explanation= $(this).closest("tr").find("td.t_explanation").text();
			  var first_option=$(this).closest("tr").find("td.t_option1").text();
			  var second_option=$(this).closest("tr").find("td.t_option2").text();
			  var third_option=$(this).closest("tr").find("td.t_option3").text();
			  var fourth_option=$(this).closest("tr").find("td.t_option4").text()
			  var answer=$(this).closest("tr").find(".t_answer").text();
			  
			  
			  $('.modal-body #qid').val(id);
			 $('.modal-body #edit_question').html(question);
			 $('.modal-body #edit_explanation').html(explanation);
			 $('.modal-body #edit_option1').val(first_option);
			 $('.modal-body #edit_option2').val(second_option);
			 $('.modal-body #edit_option3').val(third_option);
			 $('.modal-body #edit_option4').val(fourth_option);
			 $('.modal-body #edit_answer').val(answer);
			 
			 
			 myModal.modal({ show: true,modal:true,zIndex:500 });

			    return false;
			});
		
		
		$("#btnSubmit").click(function (event) {

	        //stop submit the form, we will post it manually.
	        event.preventDefault();

	        // Get form
	        var form = $('#edit-question')[0];

			// Create an FormData object
	        var data = new FormData(form);

			

			// disabled the submit button
	        $("#btnSubmit").prop("disabled", true);

	        $.ajax({
	            type: "POST",
	            enctype: 'multipart/form-data',
	            url: "update-question-by-id",
	            data: data,
	            processData: false,
	            contentType: false,
	            cache: false,
	            timeout: 600000,
	            success: function (data) {
	            	if(data=='logout'){
	            		alert("Your session is expired..! Click OK to login again");
	            		location.href='<%=request.getContextPath()%>/admin';
	            	}else{
	                alert(data);
	                myModal.modal('hide');
	                console.log("SUCCESS : ", data);
	                $("#btnSubmit").prop("disabled", false);
	                
	            }

	            },
	            error: function (e) {
	            	
	            	 alert("Error while add ing question..!Please try again");
	                console.log("ERROR : ", e);
	                $("#btnSubmit").prop("disabled", false);

	            }
	        });

	    });


		
	});
	
	</script>
	
</body>
</html>