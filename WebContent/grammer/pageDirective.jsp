<%--pageDirective.jsp--%>
<%-- C:\Users\user\eclipse-workspace\.metadata\.plugins
\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost
\ROOT\org\apache\jsp --%>
<%@page import="kr.or.kpc.dao.MemberDao"%>
<%@page import="kr.or.kpc.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@page pageEncoding="utf-8" %>
<%@page import="java.util.Calendar" %>
<%@page session="false" %>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Page Directive</title>
	
	</head>
	<body>
		<h1>페이지디렉토리</h1>
		<%
			Calendar cal = Calendar.getInstance();
			int year = cal.get(Calendar.YEAR);
			MemberDao dao = MemberDao.getInstance();
			ArrayList<MemberDto> list =dao.select(0,10);
			out.println("<ul>");
			for(MemberDto dto : list){
				int num= dto.getNum();
				String name = dto.getName();
				String addr=dto.getAddr();
				out.println("<li>"+name+"</li>");
				
			}
			out.println("</ul>");
			String str = null;
			int len =str.length();//NullPointerException
		%>
	</body>
</html>