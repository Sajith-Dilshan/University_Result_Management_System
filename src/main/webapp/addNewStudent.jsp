<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String faculty=request.getParameter("faculty");
String degree=request.getParameter("degree");
String RegNo=request.getParameter("RegNo");
String name=request.getParameter("name");
String NICno=request.getParameter("NICno");
String gender=request.getParameter("gender");



try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into student values('"+faculty+"','"+degree+"','"+RegNo+"','"+name+"','"+NICno+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
	
}catch(Exception e)
{
	
	System.out.println(e);
}




%>