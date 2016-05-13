<!-- /* ************************************
 *
 * @update:  RITESH SINGH, 4 May 2016
 * @Section: Global
 * @auth0r:  RITESH SINGH
 * @version: v.1.0.0, 4 May 2016
************************************* */
 -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	
	<!-- Head of page -->
	<head>
		<title>College Machine+</title>
		<%-- <jsp:include page="../../../helpers/materialize-loader.jsp" /> --%>
		<jsp:include page="../../../helpers/material-lite-loader.jsp" />
		
		<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
		
	</head>
	
	<style>
	<!-- Square card -->
		.demo-card-square.mdl-card {
		  width: 320px;
		  height: 320px;
		}
		.demo-card-square > .mdl-card__title {
		  color: #fff;
		  background:
		    url('resources/m-lite-image/lion1.jpg') bottom right 0% no-repeat #46B6AC;
		}
	</style>
	 
	<!-- body of page -->
	<body style="background-color:#7B7D7D;" >
		<div class="demo-layout-waterfall mdl-layout mdl-js-layout">
<!-- =============================My Page Header & Left-drawer======================================================= -->		
		
		<jsp:include page="../../../helpers/header.jsp" />
		
<!-- =============================My Page Header & Left-drawer Done====================================================== -->
		
			<main class="mdl-layout__content">
 <!-- =============================My Page Body============================================================ -->			
		    	<div class="page-content">
		    		<form:form modelAttribute="uploadcollegeCreate" action="uploadcollegeSave" method="post" enctype="multipart/form-data"> 
		    			<div class="container" style="margin-top:2%; width:100%;" >hello/
		    				<div class="row">
		    					<div class="col-sm-12">
	<!-- =============================My Page Card============================================================ -->						      
									<div class="demo-card-square mdl-card mdl-shadow--8dp" style="width:100%; height:100%;background-color:#EAECEE;" >
										<!-- <div class="mdl-card__title mdl-card--expand" style="height:100px;">
									    	<h2 class="mdl-card__title-text">PROJECT-CREATE</h2>
									  	</div> -->
									  	
	<!-- =============================My Page Card Body============================================================ -->								  	
									  	<div class="mdl-card__supporting-text">
									    	
									    	<div class="row">
									    		<div class="col-sm-12">
							<!-- Collapse Data -->		    			
									    			
						    					<div class="panel-group" id="accordion" style="margin-left:10%;">  
												     <div class="panel panel-default panel-border">
													      <div class="panel-heading panel_AWB_bg ">
													       <h4 class="panel-title">	<a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
														      
														         Upload File<span style="color:red">*</span>
														        
														      </a>
														      </h4>
													      </div>
													      <div id="collapse2" class="panel-collapse collapse" >
													        <div class="panel-body list-group-item " style="background-color:#F8F9F9;">
													        
													        	<div>
												        		<div class="row">
														    	<!-- Left Content -->
														    		<div class="col-sm-6">
														    			<input type="file" name="fileData">
														    			<br/>
														    		</div>
														    		<!-- Right Content -->
														    		<div class="col-sm-6">
														    			
														    		</div>
														    	</div>
												        	</div>
													        
													        </div>
													      </div>
												      </div>
												      
												      <div class="panel panel-default panel-border">
													      <div class="panel-heading panel_AWB_bg ">
													       <h4 class="panel-title">	<a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
														      
														         Download Excel Format for Upload File
														      </a>
														      </h4>
													      </div>
													      <div id="collapse3" class="panel-collapse collapse" >
													        <div class="panel-body list-group-item " style="background-color:#F8F9F9;">
													        
													        	<div>
															    	<div class="row">
													    				<div class="col-sm-12">		
													    					<div class="table-responsive  ">   
														    			   		<table id="real" class="display ">
																				 	<thead>
																				        <tr style="background-color:red;color:white;">
																				            <th>name</th>
																				            <th>code</th>
																				            <th>lat</th>
																				            <th>lng</th>
																				            <th>email</th>
																				            <th>mob</th>
																				            <th>address</th>
																				        </tr>
																				    </thead>
																				    <tbody>
																				        <tr>
																				            <td>name-example</td>
																				            <td>code-example</td>
																				            <td>lat-example</td>
																				            <td>lng-example</td>
																				            <td>email-example</td>
																				            <td>mob-example</td>
																				            <td>address-example</td>
																				        </tr>
																				    </tbody>  
																				</table>	
													                  		</div>
													    				</div>
													    			</div>
													        	</div>
													        
													        </div>
													      </div>
												      </div>
												 </div><br/>
									    		<div class="" style="margin-left:10%;">
									    			<input type="submit" value="upload"
														class=" btn btn-success btn-sm " />
														&nbsp;&nbsp;&nbsp;&nbsp;
													<input type="reset" value="Reset"
														class=" btn btn-danger btn-sm " />
									    		</div>		
									   <!-- Done Collapse --> 			
									    		</div>
									    	</div>	
									  	</div>
	<!-- =============================My Page Card Body Done============================================================ -->
									  	
	<!-- =============================My Page Card Footer============================================================ -->								  	
									  	
									  	<div class="mdl-card__actions mdl-card--border">
									    	<a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
									      		View Updates
									    	</a>
									  	</div>
									
	<!-- =============================My Page Card Footer Done============================================================ -->								  	
									  	
									</div>
									
	<!-- =============================My Page Card Done============================================================ -->								
									
							    </div>
		    				</div>
		    			</div>
		    		</form:form>
	    		</div>
<!-- =============================My Page Body Done============================================================ -->			    	
		  	</main>
		</div>
	</body>
</html>
<script>
	$(document).ready(function() {
	    
		$('#real').DataTable( {
				"dom" : 'Bfrtip',
		        "buttons" : [
		             'excel'
		        ],
	  	      	 "bFilter": false
	  	      } );
		
	        } );
</script>