<%@page import="java.sql.*"%>
<%! 
Connection con;
PreparedStatement ps;
ResultSet rs;
%>
<%

	String id=(String)session.getAttribute("id");
    String title=(String)(request.getParameter("title"));
    String content=(String)(request.getParameter("content"));
    String type=(String)(request.getParameter("type"));
    String category=(String)(request.getParameter("category"));
	try
	{

	    Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql:///pehchan_faridabad","root","root");
        ps=con.prepareStatement("update news set title=?,content=?,type=?,category=? where id=?");
        ps.setString(1,title);
        ps.setString(2,content);
        ps.setString(3,type);
        ps.setString(4,category);
        ps.setString(5,id);
        ps.executeUpdate();
        
        
%>

    <jsp:forward page="viewnewsDB.jsp"/>
<%

	
}
catch(Exception e){
	out.print(e);
}
%>