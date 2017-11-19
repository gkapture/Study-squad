package com.marque;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.utility.JdbcUtility;

public class MarqueeDao {
	public static int addMarquee(String title,String url){
		try{
			Connection con=JdbcUtility.getConnection();
			PreparedStatement preparedstatement=con.prepareStatement("INSERT INTO marqueedetails(title,url) values(?,?)");
			preparedstatement.setString(1, title);
			preparedstatement.setString(2, url);
			int row = preparedstatement.executeUpdate();
			if(row!=0){
				return 1;
			}
		}catch(Exception e){
			return 0;
			
		}
		return 0;
	}
	public static List fetchMarquee(){
		ArrayList<MarqueeLink> al=new ArrayList<>();
		try{
			Connection con=JdbcUtility.getConnection();
			PreparedStatement preparedstatement=con.prepareStatement("SELECT * FROM marqueedetails");
			ResultSet rs=preparedstatement.executeQuery();
			while(rs.next()){
				MarqueeLink m=new MarqueeLink();
				m.setMarqueeid(rs.getInt(1));
				m.setTitle(rs.getString(2));
				m.setUrl(rs.getString(3));
				al.add(m);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return al;
	}
	public static int deleteMarquee(String value){
		int marqueeid=Integer.parseInt(value);
		try{
			Connection con=JdbcUtility.getConnection();
			PreparedStatement preparedstatement=con.prepareStatement("delete from marqueedetails where marqueeid=?;");
			preparedstatement.setInt(1,marqueeid);
			int row=preparedstatement.executeUpdate();
			if(row!=0){
				return 1;
			}
		}catch(Exception e){
			return 0;
		}
		return 0;
	}
}
