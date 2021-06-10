<!-- step01_grid_lg.html -->
<%@page pageEncoding="utf-8" %>
<%@include file="../inc/header.jsp" %>
  <!-- breadcrumb start -->

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/index.jsp">홈</a></li>
    <li class="breadcrumb-item">공지사항</li>
  </ol>
</nav>
  
  <!-- breadcrumb end -->
  
  <!-- container start -->
    <div class="container">
    	
  <!-- col start -->
 	<div class="row">
    	<div class="col-md-12">
  			<%--table start --%>
  			<%--테이블은 칼럼안에 넣어야 한다.--%>
  			<div class="table-resonsive">
  			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col">번호</th>
			      <th scope="col">작성자</th>
			      <th scope="col">제목</th>
			      <th scope="col">날짜</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>이수연</td>
			      <td>제목1</td>
			      <td>2021/06/10</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>이수연2</td>
			      <td>제목2제목2제목2제목2제목2제목2제목2제목2제목2</td>
			      <td>2021/06/10</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td>이수연3</td>
			      <td>제목3</td>
			      <td>2021/06/10</td>
			    </tr>
			  </tbody>
			</table>
			
			<%--pagination start --%>
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item disabled">
			      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#">Next</a>
			    </li>
			  </ul>
			</nav>
			<%--pagination end --%>
			<div class="text-right">
			<a class="btn btn-outline-success" href="write.jsp" role="button">글쓰기</a>
			</div>
			
			</div>		
  			<%-- table end--%>  	
  				
    	</div>
    </div>
  <!-- col end -->
  
    </div>
  <!-- container end -->
<%@include file="../inc/footer.jsp" %>
  