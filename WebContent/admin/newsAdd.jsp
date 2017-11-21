<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="com.mingrisoft.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	News News1=new News();
	Function Fun=new Function();
	//从页面缓存中提取当前用户
	String AdminName=(String)session.getAttribute("AdminName");
	String Action=request.getParameter("Action");
	if(Action!=null && Action.equals("Add")){
		String IP =request.getRemoteAddr();  //得到客户端IP
		String[] s=new String[2];
		s[0]=request.getParameter("NewsTitle");  //数组第一位为新闻标题
		s[1]=request.getParameter("NewsContent");  //第二位为新闻内容
		String sNews=News1.AddNews(s, AdminName, IP);  //获取返回值
		if(sNews.equals("Yes")){
			//成功添加输出
			out.println("<script>alert('添加新闻成功!');location.href='news.jsp';</script>");
			return;
		}else{
			//失败添加输出
			out.println("<script>alert('添加新闻失败!');location.href='news.jsp';</script>");
			return;
		}
	}
%>