<%@ page contentType="text/html; charset=UTF-8" language="java" buffer="32kb"%>
<%@ page import="com.mingrisoft.*"%>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	News News1=new News();
	Function Fun=new Function();
	String IP =request.getRemoteAddr();  //得到客户端IP
	//从页面缓存中提取当前用户
	String AdminName=(String)session.getAttribute("AdminName");
	String NewsID=request.getParameter("NewsID");
	if(News1.DelNews(NewsID, AdminName, IP)){
		//成功删除输出
		out.println("<script>alert('删除新闻成功!');location.href='news.jsp';</script>");
	}else{
		//失败删除输出
		out.println("<script>alert('删除新闻失败!');location.href='news.jsp';</script>");
	}
%>
