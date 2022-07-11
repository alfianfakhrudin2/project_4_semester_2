<%-- 
    Document   : get_book_title
    Created on : Jul 11, 2022, 8:20:44 PM
    Author     : User
--%>

<%@page import="java.sql.*"%>
<%
	PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
        conn=(Connection)application.getAttribute("connection");
%>

<% 
String bookid=request.getParameter("Books_ID");
if(bookid!=null) 
{
	String sql ="SELECT Books_Title FROM booksinformation WHERE (Books_ID=?)";
	ps=conn.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	ps.setString(1,bookid);
	rs=ps.executeQuery();
	
	int cnt=1;
	if(rs.next())
	{	
%>
		<option value="<%=rs.getInt("Books_ID")%>"><%=rs.getString("Books_Title")%></option>
		<b>Book Name :</b> 
<%  
		out.println(rs.getString("Books_Title"));
		 out.println("<script>$('#submit').prop('disabled',false);</script>");
	}
	 else
	{
%>
  
		<option class="others"> Invalid ISBN Number</option>
<%
 	out.println("<script>$('#submit').prop('disabled',true);</script>");
	}
}
%>
