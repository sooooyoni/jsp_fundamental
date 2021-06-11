<!-- step01_grid_lg.html -->
<%@page pageEncoding="utf-8" %>
<%@include file="../pinc/header.jsp" %>
  <!-- breadcrumb start -->

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/project/index.jsp">홈</a></li>
    <li class="breadcrumb-item"><a href="/project/list.jsp">공지사항</a></li>
  </ol>
</nav>
  
  <!-- breadcrumb end -->
  <!-- container start -->
    <div class="container">
    	
  <!-- col start -->
 	<div class="row">
    	<div class="col-md-12">
    		<h6>공지사항 보기</h6>
    		<%--form start --%>
    		
    		<form name="noticeForm" method="post" action="saveDb.jsp">
			  <div class="form-group">
			   제목:제목
			  </div>											<%--입력하는 창에는 무조건 name이 있어야한다. --%>
			  
			  <div class="form-group">
			    작성자:작성자
			  </div>		
			  								
			  <div class="form-group">
			    내용:내용
			  </div>
			</form>
    		
    		<%--form end --%>
    		<div class="text-right">
			<a class="btn btn-outline-danger" href="deleteNotice.jsp" id="saveNotice" role="button">삭제</a>
			<a class="btn btn-outline-secondary" href="list.jsp" role="button">리스트</a>
			<a class="btn btn-outline-success" href="modify.jsp" id="saveNotice" role="button">수정</a>
			</div>
			
    		
    	</div>
    </div>
  <!-- col end -->
    </div>
  <!-- container end -->
<%@include file="../pinc/footer.jsp" %>
  