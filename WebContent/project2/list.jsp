<!-- template.html -->
<%@page import="kr.or.kpc.dto.NoticeDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.kpc.dao.NoticeDao"%>
<%@ page pageEncoding="utf-8" %>
<%@ include file="../pinc/header.jsp" %>
<%
	String tempPage = request.getParameter("page");
	int cPage = 0;
	if(tempPage== null || tempPage.length()==0){
		cPage = 1;
	}
	try{
		cPage = Integer.parseInt(tempPage);
	}catch(NumberFormatException e){
		cPage = 1;
	}
	
	/*
	cPage = 1   -> 0  , 10;
	cPage = 2   -> 10 , 10;
	cPage = 3   -> 20 , 10;
	An=a1+(n-1)*d -> a1=0, cPage, d:dosplaycount
	*/
	int displayCount = 4;
	int pageDisplayCount=3;
	int currentBlock=0;
	int totalBlock=0;
	int totalPage=0;
	int startPage=0;
	int endPage=0;
	
	int start = 0 + (cPage-1)*displayCount;
	NoticeDao dao = NoticeDao.getInstance();
	ArrayList<NoticeDto> list = 
			dao.select(start, displayCount);
	
	
%>
  	<!-- breadcrumb start -->
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
	
	<!-- breadcrumb end -->
  	
  	<!-- container start -->
	<div class="container">
		<!-- col start -->
		<div class="row">
			<div class="col-md-12">
				<%-- table start --%>
				<br>
				<h5>공지사항 리스트</h5>
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
				      <th scope="col">작성자</th>
				      <th scope="col">제목</th>
				      <th scope="col">날짜</th>
				    </tr>
				  </thead>
				  <tbody>
				  <%
				  	if(list.size() != 0){
				  		for(NoticeDto dto : list){
				  %>
				    <tr>
				      <th scope="row"><%=dto.getNum() %></th>
				      <td><%=dto.getWriter() %></td>
				      <td><a href="view.jsp"><%=dto.getTitle() %></a></td>
				      <td><%=dto.getRegdate() %></td>
				    </tr>
				  <%	
				  		} 
				  	}else{
				  %> 
				  	<tr>
				      <td colspan='4'>데이터가 존재 하지 않습니다.</td>
				    </tr>
				  <%} %>
				  </tbody>
				</table>
			
			<%--pagination start --%>
			<%
				/*
				촐 rows 128개, displayCount 10개 가정
				previous 1 2 3 4 5 6 7 8 9 10 next     =>currentBlock :1block
				링크 X                          링크o
				previous 11 12 13 next                 =>currentBlock :2block
				링크o               링크X
				*/
			//totalPage=(totalRows%displayCount==0)? totalRows/displayCount : totalRows/displayCount+1 ;
			int totalRows = dao.getRows();
			if(totalRows%displayCount==0){
				totalPage=totalRows/displayCount;
			}else{
				totalPage=totalRows/displayCount+1;
			}
			if(totalPage==0){totalPage=1;}
			if(cPage%pageDisplayCount==0){
				currentBlock=cPage/pageDisplayCount;
			}else{
				currentBlock=cPage/pageDisplayCount+1;
			}
			if(totalPage%pageDisplayCount==0){
				totalBlock=totalPage/pageDisplayCount;
			}else{
				totalBlock=totalPage/pageDisplayCount+1;
			}
			/*
			cPage:1-10->currentBlock:1
			cPage:11-20->currentBlock:2
			startPage=1,11,21,31,....
			endPage=10,20,30,.....
			*/
			
			startPage=1+(currentBlock-1)*pageDisplayCount;
			endPage=pageDisplayCount+(currentBlock-1)*pageDisplayCount;
			
			if(currentBlock == totalBlock){
				endPage=totalPage;
			}
			
			%>
			
			
			
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			  <%if(currentBlock==1){ %>
			    <li class="page-item disabled">
			      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
			    </li> 
			    <%}else{ %>
			    <li class="page-item ">
			      <a class="page-link" href="list.jsp?page=<%= startPage-1 %>" tabindex="-1" aria-disabled="true">Previous</a>
			    </li> 
			    <%} %>
			    
			    <%for(int i=startPage;i<=endPage;i++){ %>
			    <li class="page-item"><a class="page-link" href="list.jsp?page=<%=i%>"><%=i %></a></li>
			    <%} %>
			    <%if(totalBlock==currentBlock){ %>
			    <li class="page-item disabled">
			      <a class="page-link" href="#">Next</a>
			    </li>
			    <%}else{ %>
			    <li class="page-item ">
			      <a class="page-link" href="list.jsp?page=<%= endPage+1 %>">Next</a>
			    </li>
			    <%} %>
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
<%@include file="../pinc/footer.jsp" %>
  