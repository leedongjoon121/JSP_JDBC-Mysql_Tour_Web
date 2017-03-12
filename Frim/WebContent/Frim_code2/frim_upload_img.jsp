<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="Frimdata.*, java.util.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>

 
<jsp:useBean id="frimdao" class="Frimdata.FrimDAO"/> 
<jsp:useBean id="frimdo" class="Frimdata.FrimDO"/>
<jsp:setProperty name="frimdo" property="*"/> 
 
<%
    request.setCharacterEncoding("UTF-8");
 
    // 10Mbyte 제한
    int maxSize  = 1024*1024*10;        
 
    // 웹서버 컨테이너 경로
   // String root = request.getSession().getServletContext().getRealPath("C:/Users/동준/workspace/Frim/WebContent/img");
 
    // 파일 저장 경로(ex : /home/tour/web/ROOT/upload)
    String savePath = "C:/Users/동준/workspace/Frim/WebContent/img/";
 
    // 업로드 파일명
    String uploadFile = "";
 
    // 실제 저장할 파일명
    String newFileName = "";
 
 
 
    int read = 0;
    byte[] buf = new byte[1024];
    FileInputStream fin = null;
    FileOutputStream fout = null;
    long currentTime = System.currentTimeMillis();  
    SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");  
    MultipartRequest multi=null;
    String filename1 = "";
    try{
    	System.out.println("구간1");
         multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
         Enumeration<?> files = multi.getFileNames(); //getFileNmaes() 메소드는 폼 요소 중 file 속성으로 지정된 input 태그의 이름, 즉 file 속성을 가진 파라미터의 이름을 Enumeration 타입으로 반환한다.
         String file1 = (String)files.nextElement(); //file 속성으로 지정된 input 태그에 의해 서버 상에 실제로 업로드된 파일 이름을 스트링 타입으로 반환한다.
         filename1 = multi.getFilesystemName(file1);
         
         System.out.println("구간2");
        // 전송받은 parameter의 한글깨짐 방지
       // String title = multi.getParameter("title");
        // title = new String(title.getBytes("8859_1"), "UTF-8");
       
        System.out.println("구간3");
        // 파일업로드
        uploadFile = multi.getFilesystemName("uploadFile");
 
        // 실제 저장할 파일명(ex : 20140819151221.zip)
        newFileName = filename1;
 
        System.out.println("구간4");
        // 업로드된 파일 객체 생성
        File oldFile = new File(savePath + uploadFile);
 
         
        // 실제 저장될 파일 객체 생성
        File newFile = new File(savePath + newFileName);
        System.out.println("구간5");
        /*  --> 파일 다른 이름으로 쓰는거 ?? 별 필요 없어 보임
        if(!oldFile.renameTo(newFile)){
        	 
            // rename이 되지 않을경우 강제로 파일을 복사하고 기존파일은 삭제
 
            buf = new byte[1024];
            fin = new FileInputStream(oldFile);
            fout = new FileOutputStream(newFile);
            read = 0;
            while((read=fin.read(buf,0,buf.length))!=-1){
                fout.write(buf, 0, read);
            }
             
            fin.close();
            fout.close();
            oldFile.delete();
        }   
        */
        
        System.out.println("구간6");
        frimdo.setImg_path(newFileName); // 파일 이름 저장
        System.out.println("구간7");
         System.out.println(newFileName);
    }catch(Exception e){
    	System.out.println("에러");
        e.printStackTrace();
    }
 
    
     
     
    // 일단 insert db 부분만 
    if(frimdao.insertDB(frimdo)){
    out.println("???왜 안돼 도재채?");
    ArrayList<FrimDO> datas = frimdao.getDBList();
	request.setAttribute("datas", datas);
	
	//pageContext.forward("frim_list.html");          
	//pageContext.forward("frim_start.jsp");
	pageContext.forward("frim_form.jsp");
	
    }
%>


