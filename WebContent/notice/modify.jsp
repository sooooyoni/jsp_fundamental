<!-- step01_grid_lg.html -->
<%@page import="kr.or.kpc.dto.NoticeDto"%>
<%@page import="kr.or.kpc.dao.NoticeDao"%>
<%@page pageEncoding="utf-8" %>
<%@include file="../inc/header.jsp" %>

<%
	String tempPage = request.getParameter("page");
	String tempNum = request.getParameter("num");
	int cPage = 0;
	int num = 0;
	if(tempPage== null || tempPage.length()==0){
		cPage = 1;
	}
	try{
		cPage = Integer.parseInt(tempPage);
	}catch(NumberFormatException e){
		cPage = 1;
	}
	
	if(tempNum == null || tempNum.length()==0){
		num = -1;
	}
	
	try{
		num = Integer.parseInt(tempNum);
	}catch(NumberFormatException e){
		num = -1;
	}
	
	NoticeDao dao = NoticeDao.getInstance();
	NoticeDto dto = dao.select(num);//
	
	if(dto == null){
		num = -1;
	}
	
	if(num == -1){
%>
	<script>
		alert('해당글이 존재 하지않습니다.');
		location.href="view.jsp?num=<%=num%>&page=<%=cPage%>";
	</script>
<%}%>
  	<!-- breadcrumb start -->

  	
  	<nav aria-label="breadcrumb">
	 <ol class="breadcrumb" style="background-color: green">
    <li class="breadcrumb-item"><a href="/project/index.jsp" style="color:white">Home ></a></li>
    <li class="breadcrumb-item"><a href="/project/index.jsp" style="color:white">Notice </a></li>
	  </ol>
	</nav>
	<!-- breadcrumb end -->
  	
  	<!-- container start -->
	<div class="container">
		<!-- col start -->
		<div class="row">
				<h1></h1>
			</div>
		</div>
		<!-- col end -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
	
	<!-- container end -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">
		<style>
		.text{
		text-align:center;
		font-family: 'Gaegu', cursive;
		top: 55%;
		font-size : 53px;
		}
		#carouselExampleIndicators{
		 margin: 0;
		  position: absolute;
		  border-radius: 12px;
		 top: 55%;
		  left: 50%;
		  -ms-transform: translate(-50%, -50%);
		  transform: translate(-50%, -50%);
		}
		.button {
		  margin: 0;
		  position: absolute;
		  border-radius: 12px;
		  top: 110%;
		  left: 50%;
		  -ms-transform: translate(-50%, -50%);
		  transform: translate(-50%, -50%);
		font-family: 'Gaegu', cursive;
		  background-color: white;
		color:green;
		  font-size:40px;
		  href="/notice/main.jsp";
		  width:400px;
		
		}
		.button span {
		  cursor: pointer;
		  display: inline-block;
		  position: relative;
		  transition: 0.5s;
		}
		.button span:after {
		  content: '\00bb';
		  position: absolute;
		  opacity: 0;
		  top: 0;
		  right: -20px;
		  transition: 0.5s;
		}
		.button:hover{
		background-color:green; 
		color: white; 
		 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
		}
		.button:hover span {
		  padding-right: 25px;
		}
		
		.button:hover span:after {
		  opacity: 1;
		  right: 0;
		
		</style>	
	
  <!-- container start -->
    <div class="container">
    	
  <!-- col start -->
 	<div class="row">
    	<div class="col-md-12">
    		<h6>공지사항 수정</h6>
    		<%--form start --%>
    		
    		<form name="noticeForm" method="post" action="modifyDb.jsp">
			  <div class="form-group">
			    <label for="writer">작성자</label>
			    <input type="text" class="form-control" id="writer" name="writer" value="<%=dto.getWriter() %>"  placeholder="작성자를 입력하세요.">
			  </div>											<%--입력하는 창에는 무조건 name이 있어야한다. --%>
			  
			  <div class="form-group">
			    <label for="title">제목</label>
			    <input type="text" class="form-control" id="title" name="title" value="<%=dto.getTitle() %>" placeholder="제목을 입력하세요.">
			  </div>		
			  								
			  <div class="form-group">
			    <label for="content">내용</label>
			    <textarea class="form-control" id="content" name="content"  rows="10"><%=dto.getContent() %>"</textarea>
			  </div>
			  <input type="hidden" name="num" value="<%=num%>"/>
			  <input type="hidden" name="page" value="<%=cPage%>"/>
			</form>
    		
    		<%--form end --%>
    		<div class="text-right">
			<a class="btn btn-outline-secondary" href="view.jsp?num=<%=num%>&page=<%=cPage%>" role="button">뷰</a>
			<a class="btn btn-outline-success" id="modifyNotice" role="button">수정</a>
			</div>
			
    		
    	</div>
    </div>
  <!-- col end -->
    </div>
  <!-- container end -->
  <script>
  $(function(){
	  $('#modifyNotice').click(function(){
		  noticeForm.submit();
	  });
	  
  });
  </script>
<%@include file="../inc/footer.jsp" %>