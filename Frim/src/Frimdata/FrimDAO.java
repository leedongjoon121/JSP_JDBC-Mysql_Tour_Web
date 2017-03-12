package Frimdata;

import java.sql.*;
import java.util.*;

import Frimdata.FrimDO3;


public class FrimDAO {

	  Connection conn = null;
	   PreparedStatement pstmt = null;

	   String jdbc_driver = "com.mysql.jdbc.Driver";
	   String jdbc_url = "jdbc:mysql://127.0.0.1:3306/Frimdb"; 

	   void connect() {
	      try {
	         Class.forName(jdbc_driver);

	         conn = DriverManager.getConnection(jdbc_url,"root","");
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	   
	   void disconnect() {
	      if(pstmt != null) {
	         try {
	            pstmt.close();
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }
	      } 
	      if(conn != null) {
	         try {
	            conn.close();
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }
	      }
	   }
	   

	   
	   public boolean insertDB2(FrimDO3 FrimDO) {
		      connect();
		         
		      String sql ="insert into img(name,memo,img) values(?,?,?)";
		      System.out.println(sql);
		      try {
		         pstmt = conn.prepareStatement(sql);
		         pstmt.setString(1,FrimDO.getName());
		         pstmt.setString(2,FrimDO.getMemo());
		         pstmt.setString(3,FrimDO.getImg());
		         pstmt.executeUpdate();
		      } catch (SQLException e) {
		         e.printStackTrace();
		         return false;
		      }
		      finally {
		         disconnect();
		      }
		      return true;
		   }
	   
	   public boolean deleteDB(int id) {
			connect();
			
			String sql ="delete from img where id=?";
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,id); 
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			finally {
				disconnect();
			}
			return true;
		}
	   
	   
	
	   
	   
	
	   public ArrayList<FrimDO3> getDBList3() {
		      connect();
		      
		      ArrayList<FrimDO3> datas = new ArrayList<FrimDO3>();
		      
		      String sql = "select * from img ";
		      
		      try {
		         pstmt = conn.prepareStatement(sql);
		         ResultSet rs = pstmt.executeQuery();
		         while(rs.next()) {
		        	 FrimDO3 frimdo3 = new FrimDO3();
		        	 frimdo3.setId((rs.getInt("id")));
		        	 frimdo3.setName((rs.getString("name")));        
		        	 frimdo3.setMemo((rs.getString("memo")));
		        	 frimdo3.setImg((rs.getString("img")));
		        	
		            datas.add(frimdo3);
		         }
		         rs.close();
		         
		      } catch (SQLException e) {
		         e.printStackTrace();
		      }
		      finally {
		         disconnect();
		      }
		      return datas;
		   }
		   
}