<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ page import="java.io.FileOutputStream"%>
<%@ page import="java.io.OutputStreamWriter"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.ArrayList"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
        <% 
        	String wenti = new String(request.getParameter("wenti").getBytes("ISO-8859-1"),"UTF-8");
        	String daan = new String(request.getParameter("daan").getBytes("ISO-8859-1"),"UTF-8") ;
        	
        	
       
        	String filename = "D:\\实训\\实训资料的当地仓库\\QRobot_Usher\\wyj\\program\\bots\\super\\aiml\\new.aiml" ;
        	
        	File file = new File(filename);
  	        BufferedReader br = new BufferedReader(new FileReader(file.getAbsolutePath()));
            String str = null;
            List list = new ArrayList();
            while( (str=br.readLine()) != null ){
      		   list.add(str);
  		    }
		    BufferedWriter bw = new BufferedWriter(new FileWriter(file.getAbsolutePath()));
  		    for( int i=0;i<list.size()-1;i++ ){
   		    	bw.write(list.get(i).toString());
   		    	bw.newLine();
            }
  		    bw.flush();
  		    bw.close();

        	
        	
        	
   		   	FileOutputStream stream;
 		    OutputStreamWriter writer;
	       try 
   	       {
  		       stream = new FileOutputStream(filename, true);
    	       writer = new OutputStreamWriter(stream);
    	       writer.write("<category>\n");   	  
    	       writer.write("<pattern>");
    	       writer.write(wenti);
    	       writer.write("</pattern>\n");  
    	       writer.write("<template>");
			   int i = 0 ;
			   while( i != daan.length()) {
					for ( i = 0 ; i<daan.length() ; i++){
						if(daan.charAt(i) == '*'){
							daan = daan.substring(0,i) + "<star index=\"" + daan.charAt(i+2) + "\"" + "/>" + daan.substring(i+4)  ;
						}
					}	
			   }
    	       writer.write(daan);
    	       writer.write("</template>\n");
    	       writer.write("</category>\n"); 
    	       writer.write("</aiml>"); 

               writer.close();
               stream.close();
           }
           catch(Exception e) 
           {
            	e.getStackTrace ();
           }
        	
        	
         %>
         <%= wenti %><br>
         <%= daan %><br>

    	添加成功 <br>
    	<a href="index.jsp" >返回上一界面</a>
  </body>
</html>
