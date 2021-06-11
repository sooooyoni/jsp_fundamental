<!-- step01_grid_lg.html -->
<%@page pageEncoding="utf-8" %>
<%@include file="../pinc/header.jsp" %>
  <!-- breadcrumb start -->

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/project/index.jsp">Home</a></li>
    <li class="breadcrumb-item">Main</li>
  </ol>
</nav>
  
  <!-- breadcrumb end -->
  <!-- container start -->
    <div class="container">
    	
  <!-- col start -->
 	<div class="row">
    	<div class="col-md-12">
    		
    		
    		<%--form start --%>
    		<div class="main1" style="width:350px; border: 1px solid rgb(30, 58, 30);">
    		<h6 style=" margin : 20px;">정보 입력</h6>
    		 <div class="main2" style="width:300px; margin : 20px;">
    		<form name="noticeForm" method="post" action="saveDb.jsp">
			  <form>
				  <div class="form-group ">
				    <label for="years">나이</label>
				    <input type="years" class="form-control" id="years" aria-describedby="years">
				  </div>
				  <div class="form-group">
				    <label for="addr">위치</label>
				    <input type="addr" class="form-control" id="addr">
				  </div>

				  <button type="submit" class="btn btn-outline-success">START</button>
				</form>
    		 </div>
    		 </div>
    		<%--form end --%>

			
    		
    	</div>
    </div>
  <!-- col end -->
    </div>
  <!-- container end -->
<%@include file="../pinc/footer.jsp" %>