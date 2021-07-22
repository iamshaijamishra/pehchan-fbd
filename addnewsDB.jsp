<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%!
Connection conn;
PreparedStatement ps;
String id;
String title;
String content;
String type;
String category;
String fileName;
String fieldName1=null;
%>
<%
   File file ;
  // String str[]=new String[10];
  // int i1=0;
  // String filen=(String)request.getParameter("file1");
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   String filePath = "C:/Tomcat 7.0/webapps/temp/";

   String contentType = request.getContentType();
  
      DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setSizeThreshold(maxMemSize);
      factory.setRepository(new File("C:/Tomcat 7.0/webapps/temp/"));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax( maxFileSize );
      try{ 
            List fileItems = upload.parseRequest(request);
            Iterator i = fileItems.iterator();
           if (fileItems != null && fileItems.size() > 0)
          {
           while(i.hasNext())
          {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () )  
            {
                String fieldName = fi.getFieldName();
                  fileName = fi.getName();
                //out.println("image: "+fileName);
               
                boolean isInMemory = fi.isInMemory();
                long sizeInBytes = fi.getSize();
                file = new File( filePath+fileName) ;
                //out.println(filePath);
                //out.print(file);
                fi.write( file ) ;
                //out.println("Uploaded Filename: " + filePath + fileName + "<br>");
                //out.println("Successfull");

            }

            else
            {

             if(fi.getFieldName().equals("id"))
              {
                id=(String)fi.getString();  
                 //out.println("Got a form field: " + id);
              }
              else if(fi.getFieldName().equals("title"))
              {
                  title=(String)fi.getString();
                  //out.println(title);
              }
              else if(fi.getFieldName().equals("content"))
              {
                 content=fi.getString();
               //out.println(content);
                  //out.println(fieldValue3);
              }
              else if(fi.getFieldName().equals("type"))
              {
                   type=fi.getString();
                // out.println(type);
              }
              else if(fi.getFieldName().equals("category"))
              {
                 category=fi.getString();
                //out.println(category);
              }
              else
              {
               // out.println("hey yaa !!");
              }
            }
     }
}
        // out.println("yoooo"); 
         try{  
       Class.forName("com.mysql.jdbc.Driver");
        conn =DriverManager.getConnection("jdbc:mysql:///pehchan_faridabad", "root", "root");
       ps=conn.prepareStatement("insert into news(title,content,type,category,image_name) values(?, ?, ?, ?, ? )");
        //ps.setString(1,id);
        ps.setString(1,title);
        ps.setString(2,content);
        ps.setString(3,type);
        ps.setString(4,category);
        ps.setString(5,fileName);
        ps.executeUpdate();
        out.print("Successful");
      }
      catch(Exception e)
      {
        out.println(e);
      }   
        // out.println("</body>");
        // out.println("</html>");*/
      
    
     } catch(Exception ex) {
         out.println(ex);
      }
  
   
%>