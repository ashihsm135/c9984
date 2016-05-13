<!-- /* ************************************
 *
 * @update:  RITESH SINGH, 29 March 2016
 * @Section: Global
 * @auth0r:  RITESH SINGH
 * @version: v.1.0.0, 26 March 2016
************************************* */
 -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	
	<!-- Head of page -->
	<head>
		<title>PM</title>
		<%-- <jsp:include page="../../../helpers/materialize-loader.jsp" /> --%>
		<jsp:include page="../../../helpers/material-lite-loader.jsp" />
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
	 
	<!-- body of page --><!-- #D5DBDB -->
	<body style="background-color:#7B7D7D;"> 
		<div class="demo-layout-waterfall mdl-layout mdl-js-layout">
<!-- =============================My Page Header & Left-drawer======================================================= -->		
		
		<jsp:include page="../../../helpers/header.jsp" />
		
<!-- =============================My Page Header & Left-drawer Done====================================================== -->
		
			<main class="mdl-layout__content" >
 <!-- =============================My Page Body============================================================ -->			
		    	<div class="page-content" >
		    		
	    			<div class="container" style="margin-top:2%; width:100%;"  >
	    				<div class="row">
	    					<div class="col-sm-12">
<!-- =============================My Page Card============================================================ -->						      
								<div class="demo-card-square mdl-card mdl-shadow--8dp" style="width:100%; height:100%;background-color:#EAECEE;"  >
									<!-- <div class="mdl-card__title mdl-card--expand" style="height:100px;">
								    	<h2 class="mdl-card__title-text">Update</h2>
								  	</div> -->
								  	
<!-- =============================My Page Card Body============================================================ -->								  	
								  	<div class="mdl-card__supporting-text" >
								    	
								    	<div class="row" style="margin-left:10%;"> 
					                    	<div class="table-responsive  ">   
						    			   		<table id="real" class="display ">
												   
												</table>	
					                  		</div>
					                  		
					                  	</div>
								    	
								    	
								    	
								  	</div>
<!-- =============================My Page Card Body Done============================================================ -->
								  	
<!-- =============================My Page Card Footer============================================================ -->								  	
								  	
								  	<div class="mdl-card__actions mdl-card--border">
								    	<a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
								      		View Updates: information:: ${ tag }
								    	</a>
								  	</div>
								
<!-- =============================My Page Card Footer Done============================================================ -->								  	
								  	
								</div>
								
<!-- =============================My Page Card Done============================================================ -->								
								
						    </div>
	    				</div>
	    			</div>
	    		</div>
<!-- =============================My Page Body Done============================================================ -->			    	
		  	</main>
		</div>
	</body>
</html>

<script>
	$(document).ready(function() {
	    
		var data = "${tag}";
		
		$('#real').DataTable( {
	        // ajax loading data 	  
				"ajax" : "projects?tag="+data,
				"search": {
				    "smart": false,
				    "caseInsensitive": true,
				    "regex": false,
				    // This is set to initial search automatic
				   // "search": "Fred"
				  },
			  "headerCallback": function( thead, data, start, end, display ) {
				    $(thead).find('th').eq(0).html( 'Project Number' );
				    
				  },  
	  	  		"columnDefs": [
	  	  	    				{
	  	  	        			 	"title" : "Project ID",  
	  	  	        			    "targets": 0,
	  	  	        				"orderable" : true,
	  	  	        				"searchable": true,
		  	  	        			"mData" : null,
			  	  	        		"mRender" : function (data, type, row) {
				  	  	        		if (true) {
				  	  	        		
				  	  	        			return '<a href="projectInfo?projectId='+data[0]+'"><span >'+data[0]+'</span></a>';
				  	  	        		}
			  	  	        		}
	  	  	        			 },
	  	  	        			{
	  	  	        				"title" : "Project Name",
	   	  		       	        	"targets": 1,
	   	  		       	        	"searchable": true,
	  	  	        			 },
	  	  	        			 {
	  	  	        			 	"title" : "Project Leader ID",
	   	  		       	         	"targets": 2,
	   	  		       	         	"searchable": true
	  	  	        			 },
	  	  	        			 {
	  	  	        			 	"title" : "Voice Project Leader ID",  
	  	  	        			    "targets": 3,
	  	  	        				"orderable" : true,
	  	  	        				"searchable": true,
		  	  	        			"mData" : null,
			  	  	        		"mRender" : function (data, type, row) {
			  	  	        			
			  	  	        		if (true) {
			  	  	        		
			  	  	        		return '<span>'+data[3]+'</span>';
			  	  	        		/* return '<span>'+data[3]+'</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="myBag_form?manifestNo='+data[0]+'"><span class="glyphicon glyphicon-plus"></span></a>'; */
			  	  	        		}
					  	  	            else {
					  	  	                
					  	  	                return '<a href="manifestBag_list?manifestNo='+data[0]+'"><span>'+data[3]+'</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-ban-circle"></span>';
					  	  	            }
			  	  	        		}
	  	  	        			 },
	  	  	        			{
		  	  	        			 	"title" : "Version Number",
		   	  		       	         	"targets": 4,
		   	  		       	    		"visible": true,
		   	  		       	         	"searchable": true
		  	  	        		},
		  	  	        	    {
	  	  	        			 	"title" : "Status",  
	  	  	        			    "targets": 5,
	  	  	        				"orderable" : true,
	  	  	        				"visible" : true
	  	  	        			 },
	  	  	        			{
	  	  	        			 	"title" : "Tasks",  
	  	  	        			    "targets": 6,
	  	  	        				"orderable" : true,
	  	  	        				"searchable": true,
		  	  	        			"mData" : null,
			  	  	        		"mRender" : function (data, type, row) {
				  	  	        		if (true) {
				  	  	        		
				  	  	        			return '<a href="task?projectId='+data[0]+'"><span >'+data[6]+'</span></a>';
				  	  	        		}
			  	  	        		}
	  	  	        			 },
	  	  	        			 {
	  	  	        			 	"title" : "Action",  
	  	  	        			    "targets": 7,
	  	  	        				"orderable" : false,
	  	  	        			    "data": 0,
	  	  	        			    "render": function ( data, type, full, meta ) {
	  	  	        			      				return '<a href="projectView?projectId='+data+'"><span class="glyphicon glyphicon-eye-open"></span></a>';
	  	  	        			      				/*
	  	  	        			      				&nbsp;&nbsp;<a href="manifest_edit?key='+data+'"><span class="glyphicon glyphicon-pencil"></span></a>&nbsp;&nbsp;
	  	  	        			      				<a href="#" id='+data+' onclick="getData(this.id);"><span class="glyphicon glyphicon-trash"></span></a>
	  	  	        			      				*/
	  	  	        			    			}
	  	  	        			  }
	  	  	      				],	      
	  	      	 "paging": true,
	  	      	 "responsive": true,
	  	      	 // processing view for large amount of data durring sorting the inserted data
	  	      	 "processing": true
	  	      } );
		
	        } );
</script>