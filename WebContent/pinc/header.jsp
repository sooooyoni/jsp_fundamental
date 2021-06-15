<%@ page pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Park Map</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<script src="/js/jquery-3.6.0.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
	<script>
        
        $(function(){
            $('#btn').click(function(){
               $.ajax({
                   url : 'proxy.jsp?url=http://openapi.seoul.go.kr:8088/715142614f7170613131326449687761/json/RealtimeCityAir/1/25',
                   type : 'get',
                   dataType : 'json',
                   error : function(){},
                   success : function(json){
                	   let rowArray = json.RealtimeCityAir.row;
                	   for(const row of rowArray){
                		   let MSRSTE_NM = row.MSRSTE_NM;
                		   let PM10 = row.PM10;
                		   let PM25 = row.PM25;
                		   let IDEX_NM = row.IDEX_NM;
                		   if($("#dist option:selected").text() == MSRSTE_NM){
               		   		$('#sel').append(" 미세먼지 농도 :  "+PM10+" 초미세먼지 농도 : "
               		   						+PM25+" 대기 상태 : "+IDEX_NM);
               		   		break;
               		   		}
                	   }
                   }
               });
               
            });
        });
    </script>
    <script src = "http://openapi.seoul.go.kr:8088/715142614f7170613131326449687761/json/RealtimeCityAir/1/25?call=test"></script>
  <style>
	.Nav {
	  max-width: 980px;
	  margin: 0 auto;
	  overflow: visible
	}
	.wrapper {
	  height: 5vh;
	}
	
	body {
	  margin: 0;
	}
	
	nav {
	  height: 44px;
	 
	  rgba:(0,0,0,0.5)
	}
	
	nav ul {
	  display: flex;
	  height: 44px;
	  justify-content: space-around;
	  align-items: center;
	  padding: 0;
	  margin: 0 auto;
	  list-style-type: none;
	}
	
	nav li {}
	
	nav a {
	  display: block;
	  color:green;
	  font-size: 20px;
	  font-family:fantasy;
	  font-weight: lighter;
	  text-decoration: none;
	  transition: 0.3s;
	}
	
	nav a: hover {
	  color: #B8B8B8;
	}
	
	.appleNav {
	  max-width: 980px;
	  margin: 0 auto;
	}
	.breadcrumb-item{
	color: white;
	font-family:fantasy;
	font-size: 20px;
	}
	
	
	.text{
	position: relative;
	text-align:left;
	font-family: 'Gaegu', cursive;
	top: 3%;
	font-size : 53px;
	}
	
	#btn{
	  margin: 0;
	  position: absolute;
	  border-radius: 12px;
	  top: 16%;
	  left: 50%;
	  -ms-transform: translate(-50%, -50%);
	  transform: translate(-50%, -50%);
	  font-family: 'Gaegu', cursive;
	  background-color: white;
	  color:green;
	  font-size:20px;
	  href="#";
	  width:70px;
	}
	
	#address{
	position:relative;
	
	}
	
	h5{
	font-family: 'Gaegu', cursive;
	}
</style>
  </head>
<body>
<div class="wrapper">
  <nav>
    <div class="Nav">
      <ul>
        <li><a href="/project/program.jsp">Park Recommendation?</a></li>
        <li><a href="/project/park.jsp">Program</a></li>
         <li><a href="/project/list.jsp">Notice</a></li>
        <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	         Exercise
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="/project/upper.jsp">상체운동</a>
	          <a class="dropdown-item" href="/project/lower.jsp">하체운동</a>
	          <div class="dropdown-divider"></div>
      		</div>
		<!-- navbar end -->    
      </ul>
    </div>
  </nav>
</div>
  	<!-- navbar end -->