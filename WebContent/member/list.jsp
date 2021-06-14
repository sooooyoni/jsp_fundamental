<!-- step01_grid_lg.html -->
<%@page pageEncoding="utf-8" %>
<%@include file="../inc/header.jsp" %>

  	<!-- breadcrumb start -->
  	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="/index.jsp">홈</a></li>
	    <li class="breadcrumb-item">회원리스트</li>
	 </ol>
	</nav>
	<!-- breadcrumb end -->
  	
  	<!-- container start -->
	<div class="container">
		<!-- col start -->
		<div class="row">
			<div class="col-md-12">
              
           <h5>회원 리스트</h5>
				<div class="table-responsive">
				<table class="table table-hover">
				
				<colgroup>
				<col width="10%">
				<col width="10%">
				<col width="65%">
				<col width="15%">
				</colgroup>
	
				  <thead>
				    <tr>
				      <th scope="col">번호</th>
				      <th scope="col">이름</th>
				      <th scope="col">이메일</th>
				      <th scope="col">가입날짜</th>
				    </tr>
				  </thead>
				  <tbody>
				  
			    	<tr>
				      <th scope="row">1</th>
				      <td>lee</td>
				      <td><a href="view.jsp">@.</a></td>
				      <td>2021/06/14</td>
				  	<tr>
				      <td colspan='4'>데이터가 존재 하지 않습니다.</td>
				    </tr>
				
				  </tbody>
				</table>
			
			<%--pagination start --%>
		
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item disabled">
			      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
			    </li> 
			
			    <li class="page-item ">
			      <a class="page-link" href="list.jsp?page=" tabindex="-1" aria-disabled="true">Previous</a>
			    </li> 
			    <li class="page-item"><a class="page-link" href="list.jsp?page="></a></li>
			  
			    <li class="page-item disabled">
			      <a class="page-link" href="#">Next</a>
			    </li>
			
			    <li class="page-item ">
			      <a class="page-link" href="list.jsp?page=">Next</a>
			    </li>
			   
			  </ul>
			</nav>
			<%--pagination end --%>
			<div class="text-right">
			<a class="btn btn-outline-success" href="join.jsp?page=" role="button">회원가입</a>
			</div>
			
			</div>		
  			<%-- table end--%>  
	          
			</div>
		</div>
		<!-- col end -->
	</div>
	<!-- container end -->

	
<%@include file="../inc/footer.jsp" %>
  