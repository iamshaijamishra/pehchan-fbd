<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<%
   File file ;
  // String filen=(String)request.getParameter("file1");
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   String filePath = "C:/Tomcat 7.0/webapps/temp/";

   String contentType = request.getContentType();
   if ((contentType.indexOf("multipart/form-data") >= 0)) {

      DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setSizeThreshold(maxMemSize);
      ///factory.setRepository(new File("C:/Tomcat 7.0/webapps/temp/"));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax( maxFileSize );
      try{ 
         List fileItems = upload.parseRequest(request);
         Iterator i = fileItems.iterator();
         out.println("<html>");
         out.println("<body>");
         //out.println(filen);
         String inputName=null;
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () )  {
                //String fieldName = fi.getFieldName();
                String fileName = fi.getName();
               // out.print(fileName);
               %>
               <br>
               <%
                boolean isInMemory = fi.isInMemory();
                long sizeInBytes = fi.getSize();
                file = new File( filePath+fileName) ;
                //out.println(filePath);
                //out.print(file);
                fi.write( file ) ;
                //out.println("Uploaded Filename: " + filePath + fileName + "<br>");
                //out.println("Successfull");

            }

            if(fi.isFormField())
            {
                inputName=(String)fi.getFieldName();
                if(inputName.equals("id"))
                {
                  String id=(String)fi.getString();
                  out.println(id);
                }
                if(inputName.equals("title"))
                {
                  String title=(String)fi.getString();
                  out.print(title);
                  
                }
                if(inputName.equals("content"))
                {
                  String content=(String)fi.getString();
                  
                }
                 if(inputName.equals("type"))
                {
                  String type=(String)fi.getString();
                  
                }
                 if(inputName.equals("category"))
                {
                  String category=(String)fi.getString();
                  
                }


            }
            
        }
        Class.forName("com.mysql.jdbc.Driver");
Connection conn =DriverManager.getConnection("jdbc:mysql:///pehchan_faridabad", "root", "root");
PreparedStatement ps=conn.prepareStatement("insert into news(image_name, title, content, type, category) values(?, ?, ?, ?, ?)");
//ps.setString(1,id);
ps.setString(1,fileName);
ps.setString(2,title);
ps.setString(3,content);
ps.setString(4,type);
ps.setString(5,category);

ps.executeUpdate();
out.println(status);


out.println("Successful");
         
        // out.println("</body>");
        // out.println("</html>");
      }catch(Exception ex) {
         System.out.println(ex);
      }
   }else{
      out.println("<html>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
%>