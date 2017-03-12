<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Frimdata.* , java.util.* ,java.io.*"%>
<jsp:useBean class="Frimdata.FrimDAO" id="frimDao"/>
<%

ArrayList<FrimDO> datas = frimDao.getDBList();
String str="";
for(FrimDO data : datas)
{
			str+="<input type='hidden' name='path' value='../img/"+data.getImg_path()+"'/>";	
}

out.println(str);

%>
