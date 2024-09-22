package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import DB.DBConnection;
import dto.CustRegDTO;

public class CustRegDAO {

public int save1(CustRegDTO t1)
{
	int x=0;
	try {
	Connection con1=DBConnection.getConn();
	
	PreparedStatement ps=con1.prepareStatement
("insert into customer(cname,cadd,mob,unm,pw) values(?,?,?,?,?)");
   ps.setString(1, t1.getCname());
   ps.setString(2, t1.getCadd());
   ps.setInt(3, t1.getMob());
   ps.setString(4, t1.getUnm());
   ps.setString(5, t1.getPw());
   x=ps.executeUpdate();
	
	}catch(Exception tt)
	{System.out.println(tt);}
	return x;
}

public Vector loginChk(CustRegDTO lg)
{
	Vector data=new Vector();
	try {
		
	Connection con1=DBConnection.getConn();
	PreparedStatement ps=con1.prepareStatement
   ("select * from customer where unm=? AND pw=?");
	 ps.setString(1, lg.getUnm());
	 ps.setString(2, lg.getPw());
	 ResultSet rs=  ps.executeQuery();  	
     if(rs.next())
     {
      data.add(rs.getInt(1));
      data.add(rs.getString(2));
      data.add(rs.getString(3));
      data.add(rs.getInt(4));
      data.add(rs.getString(5));
      data.add(rs.getString(6));
      
     }
	}catch(Exception tt)
	{System.out.println(tt);}
	return data;
}

public int update(CustRegDTO t1)
{
	int x=0;
	try { 
	Connection con1=DBConnection.getConn();
	
	PreparedStatement ps=con1.prepareStatement
("update student set sname=?,sadd=?,mob=?,unm=?,pw=? where sid=?");
   ps.setString(1, t1.getCname());
   ps.setString(2, t1.getCadd());
   ps.setInt(3, t1.getMob());
   ps.setString(4, t1.getUnm());
   ps.setString(5, t1.getPw());
   ps.setInt(6, t1.getCid());
   x=ps.executeUpdate();
	
	}catch(Exception tt)
	{System.out.println(tt);}
	return x;
}
}
 