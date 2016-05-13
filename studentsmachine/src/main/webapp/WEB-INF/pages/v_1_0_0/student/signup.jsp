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
		<title>Student Machine+</title>
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
		
		<jsp:include page="../../../helpers/header-college.jsp" />
		
<!-- =============================My Page Header & Left-drawer Done====================================================== -->
		
			<main class="mdl-layout__content">
 <!-- =============================My Page Body============================================================ -->			
		    	<div class="page-content"> 
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
									    			<div class="row" style="margin-left:10%;">
									    				<div class="col-sm-12">
									    				<!-- ============================== -->
									    				
									    				<div id="login-overlay" class="modal-dialog">
													      <div class="modal-content">
													          <div class="modal-header">
													              <h4 class="modal-title" id="myModalLabel">Sign Up to <b>curiositycollege.com</b></h4> or go back to our <a href="./index.jsp">home page</a>.
													          </div>
													          <div class="modal-body">
													              <div class="row">
													                  <div class="col-xs-6">
													                      <div class="well">
													                         <form:form modelAttribute="collegeCreate" action="collegeSave" class="form-horizontal" method="post" enctype="multipart/form-data">
						
																					<div class="form-group">
																						<!-- <label for="name" class="cols-sm-2 control-label">Your Name</label> -->
																						<div class="cols-sm-10">
																							<div class="input-group">
																								<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
																								<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
																							</div>
																						</div>
																					</div>
																					
																					<div class="form-group" hidden>
																						<!-- <label for="currentaddress" class="cols-sm-2 control-label">Current Address</label> -->
																						<div class="cols-sm-10">
																							<div class="input-group">
																								<input id="longi" name="longitude" class="mdl-textfield__input" type="text" id="projectLeaderId">
																								<input id="lati" name="latitude" class="mdl-textfield__input" type="text" id="projectLeaderId">
																								<textarea id="address" name="address" class="mdl-textfield__input" type="text" rows= "10" id="content" style="background-color:#EAEDED;color:black;" ></textarea>
																							</div>
																						</div>
																					</div>
																					
																					<div class="form-group">
																					
																						<!-- <label for="name" class="cols-sm-2 control-label">Gender</label> -->
																						<div class="cols-sm-10">
																							<div class="input-group">
																								<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
																								<input id="TheCheckBox" name="gender"  type="checkbox" data-off-text="Female" data-on-text="Male" checked="false" class="BSswitch">
																							</div>
																						</div>
																					</div>
																					
																					<div class="form-group">
																						<!-- <label for="contactNo" class="cols-sm-2 control-label">Contact No</label> -->
																						<div class="cols-sm-10">
																							<div class="input-group">
																								<span class="input-group-addon"><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i></span>
																								<input type="text" class="form-control" name="contactNo" id="contactNo"  placeholder="Enter your contactNo"/>
																							</div>
																						</div>
																					</div>
															
																					<div class="form-group">
																						<!-- <label for="email" class="cols-sm-2 control-label">Your Email</label> -->
																						<div class="cols-sm-10">
																							<div class="input-group">
																								<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
																								<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
																							</div>
																						</div>
																					</div>
															
																					<div class="form-group">
																						<!-- <label for="username" class="cols-sm-2 control-label">Username</label> -->
																						<div class="cols-sm-10">
																							<div class="input-group">
																								<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
																								<input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>
																							</div>
																						</div>
																					</div>
															
																					<div class="form-group">
																						<!-- <label for="password" class="cols-sm-2 control-label">Password</label> -->
																						<div class="cols-sm-10">
																							<div class="input-group">
																								<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
																								<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
																							</div>
																						</div>
																					</div>
															
																					<div class="form-group">
																						<!-- <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label> -->
																						<div class="cols-sm-10">
																							<div class="input-group">
																								<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
																								<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
																							</div>
																						</div>
																					</div>
															
																					<div class="form-group ">
																						<button type="button" class="btn btn-primary btn-lg btn-block login-button">SignUp</button>
																					</div>
																					<div class="login-register">
																			            <a href="index.php">Login</a>
																			         </div>
																				</form:form>
													                      </div>
													                  </div>
													                  <div class="col-xs-6">
													                  	<!-- <input type="file" name="fileData"> -->
													                  	
													                  	<div class="fileinput fileinput-new" data-provides="fileinput">
																			<div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;"></div>
																			  <div>
																			    <span class="btn btn-default btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span><input type="file" name="..."></span>
																			    <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
																			 </div>
																		</div>
													                  	
													                  	
													                  	
													                  	
													                  </div>
													              </div>
													          </div>
													      </div>
													
													  </div>
									    				
									    				
									    				
									    				
									    				<!-- ============================================= -->
									    				</div>
									    			</div>			
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
	    		</div>
<!-- =============================My Page Body Done============================================================ -->			    	
		  	</main>
		</div>
	</body>
</html>
<script>

$(document).ready(function(){
	$('.BSswitch').bootstrapSwitch('state', true);
	getAddress();	
});

	function getImage(){
		var d = "${ data.imageData}";
		var imageData = base64_encode(file_get_contents(d));
		var src = 'data: '+mime_content_type($image)+';base64,'+imageData;
		alert(src);
	}
	
	function getAddress(){
		
		var latitudeAndLongitude=document.getElementById("latitudeAndLongitude"),
		location={
		    latitude:'',
		    longitude:''
		};

		if (navigator.geolocation){
		  navigator.geolocation.getCurrentPosition(showPosition);
		}
		else{
		  latitudeAndLongitude.innerHTML="Geolocation is not supported by this browser.";
		}

		function showPosition(position){ 
		    location.latitude=position.coords.latitude;
		    location.longitude=position.coords.longitude;
		    latitudeAndLongitude.innerHTML="Latitude: " + position.coords.latitude + 
		    "<br>Longitude: " + position.coords.longitude; 
		    $('#longi').val(position.coords.longitude);
		    $('#lati').val(position.coords.latitude);
		    
		    var geocoder = new google.maps.Geocoder();
		    var latLng = new google.maps.LatLng(location.latitude, location.longitude);

		 if (geocoder) {
		    geocoder.geocode({ 'latLng': latLng}, function (results, status) {
		       if (status == google.maps.GeocoderStatus.OK) {
		         console.log(results[0].formatted_address); 
		         $('#address').html(results[0].formatted_address);
		       }
		       else {
		        $('#address').html('Geocoding failed: '+status);
		        console.log("Geocoding failed: " + status);
		       }
		    }); //geocoder.geocode()
		  }      
		} //showPosition
	}
</script>