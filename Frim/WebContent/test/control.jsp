<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  import="Frimdata.*, java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy, java.util.*, java.io.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.ServletContext"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="frimdao" class="Frimdata.FrimDAO"/> 
<jsp:useBean id="frimdo" class="Frimdata.FrimDO3"/>
<jsp:setProperty name="frimdo" property="*"/> 


<% 

request.setCharacterEncoding("utf-8");
String realFolder = "";
String filename1 = "";
int maxSize = 1024*1024*5;
String encType = "euc-kr";
String savefile = "img";
ServletContext scontext = getServletContext();
realFolder = "C:/Users/동준/workspace/Frim/WebContent/img";
MultipartRequest multi=null; //파일 업로드 구현을 위한 객체

try{
 multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
 
 Enumeration<?> files = multi.getFileNames(); //getFileNmaes() 메소드는 폼 요소 중 file 속성으로 지정된 input 태그의 이름, 즉 file 속성을 가진 파라미터의 이름을 Enumeration 타입으로 반환한다.
    String file1 = (String)files.nextElement(); //file 속성으로 지정된 input 태그에 의해 서버 상에 실제로 업로드된 파일 이름을 스트링 타입으로 반환한다.
    filename1 = multi.getFilesystemName(file1);
   
} catch(Exception e) {
 e.printStackTrace();
}

String fullpath = realFolder + "\\" + filename1;

        String action = multi.getParameter("action");

        frimdo.setName(multi.getParameter("name"));
        frimdo.setMemo(multi.getParameter("memo"));
        frimdo.setImg(filename1);
      
     if(action.equals("insert")) {
    	 
      if(frimdao.insertDB2(frimdo)) {   
         ArrayList<FrimDO3> datas = frimdao.getDBList3();    
         response.sendRedirect("list_control.jsp?action=list");
       
      }
   }  
   
%>