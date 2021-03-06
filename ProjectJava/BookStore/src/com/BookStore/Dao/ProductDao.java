package com.BookStore.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.BookStore.User.Products;




public class ProductDao {
	
	public static Connection getConnection()
	{
	Connection con=null;
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("Driver Found");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","iloveyou3000");
	System.out.println("Done");
	}
	catch (Exception e) {
	// TODO: handle exception
	System.out.println(e);
	}
	return con;
	}
	
	
	
	
	public static int save(Products u){
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into books(name,author,comments,oprice,dprice,fcover,bcover) values(?,?,?,?,?,?,?)");
			ps.setString(1,u.getName());
			ps.setString(2,u.getAuthor());
			ps.setString(3,u.getComments());
			ps.setInt(4,u.getOprice());
			ps.setInt(5,u.getDprice());
			ps.setString(6,u.getFcover());
			ps.setString(7,u.getBcover());
			
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
		
	  
	  public static List<Products> getAllRecords(){
			List<Products> list=new ArrayList<Products>();
			
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("select * from books");
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					Products u=new Products();
					u.setIdbooks(rs.getInt("idbooks"));
					u.setName(rs.getString("name"));
					u.setAuthor(rs.getString("author"));
					u.setComments(rs.getString("comments"));
					u.setOprice(rs.getInt("oprice"));
					u.setDprice(rs.getInt("dprice"));
					u.setFcover(rs.getString("fcover"));
					u.setBcover(rs.getString("bcover"));
					
					list.add(u);
				}
			}catch(Exception e){System.out.println(e);}
			return list;
		}
	  
	  
	  public static int update(Products u){
			int status=0;
			try{
				Connection con=getConnection();
				
				
				PreparedStatement ps=con.prepareStatement("update books set name=?,author=?,comments=?,oprice=?,dprice=?,fcover=?,bcover=? where idbooks=?");
				ps.setString(1,u.getName());
				ps.setString(2,u.getAuthor());
				ps.setString(3,u.getComments());
				ps.setInt(4,u.getOprice());
				ps.setInt(5,u.getDprice());
				ps.setString(6,u.getFcover());
				ps.setString(7,u.getBcover());
				ps.setInt(8,u.getIdbooks());
				
				
				
				status=ps.executeUpdate();
			}catch(Exception e){System.out.println(e);}
			return status;
		}
	
	  
	  

	  
	  
	  
	  
	  
	  public static Products getRecordById(int idbooks){
		  Products u=null;
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("select * from books where idbooks=?");
				ps.setInt(1,idbooks);
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					u=new Products();
					u.setIdbooks(rs.getInt("idbooks"));
					u.setName(rs.getString("name"));
					u.setAuthor(rs.getString("author"));
					u.setComments(rs.getString("comments"));
					u.setOprice(rs.getInt("oprice"));
					u.setDprice(rs.getInt("dprice"));
					u.setFcover(rs.getString("fcover"));
					u.setBcover(rs.getString("bcover"));
					
				}
			}catch(Exception e){System.out.println(e);}
			return u;
		}
	  
	  
	  
	  public static int delete(Products u){
			int status=0;
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("delete from books where idbooks=?");
				ps.setInt(1,u.getIdbooks());
				status=ps.executeUpdate();
			}catch(Exception e){System.out.println(e);}

			return status;
		} 
	
	
	

}
