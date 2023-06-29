package imple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbcon.dbcon;


import bean.aplicationbean;
import bean.clientbean;
import bean.clientregbean;
import bean.deliverbean;
import bean.formbean;
import bean.managebillbean;
import bean.serbean;
import bean.teambean;
import bean.uploadbean;
import bean.uploadteambean;
import inter.inter;

public class imple implements inter {
	Connection con;
	@Override
	public int creg(clientregbean cb) {
		
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO `bc05-22`.clientreg VALUES(id,?,?,?,?)");
		ps.setString(1, cb.getDate());
		ps.setString(2, cb.getEmail());
		ps.setString(3, cb.getPass());
		ps.setString(4, cb.getCpass());

		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	@Override
	public boolean clog(clientbean cb) {
		boolean b=false;
		try
		{
		
			con=dbcon.create();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM `bc05-22`.clientreg where email=? and pass=?");
			ps.setString(1, cb.getEmail());
			ps.setString(2, cb.getPass());
			
			ResultSet rs=ps.executeQuery();
			b=rs.next();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
		
	}
	@Override
	public int form(formbean fb) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO `bc05-22`.application VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, fb.getCname());
		ps.setString(2, fb.getEmail());
		ps.setString(3, fb.getNumber());
		ps.setString(4, fb.getCity());
		ps.setString(5, fb.getState());
		ps.setString(6, fb.getCountry());
		ps.setString(7, fb.getCate());
		ps.setString(8, fb.getDescription());
		ps.setString(9, fb.getDate());
		ps.setString(10,fb.getService());
		ps.setString(11, fb.getPhash());
		ps.setString(12, fb.getAhash());
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	@Override
	public int ser(serbean sb) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO`bc05-22`.servic VALUES(id,?,?,?,?,?,?,?,?)");
		ps.setString(1, sb.getCname());
		ps.setString(2, sb.getCmail());
		ps.setString(3, sb.getCnumber());
		ps.setString(4, sb.getService());
	
		ps.setString(5, sb.getSpecfy());
		ps.setString(6, sb.getPayment());
		ps.setString(7, sb.getPay());
		ps.setString(8, sb.getDeliverydate());
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	@Override
	public int load(uploadbean ub) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO `bc05-22`.upload VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
		ps.setString(1, ub.getEmail());
		ps.setString(2, ub.getDes());
		ps.setString(3, ub.getServices());
		ps.setString(4, ub.getCate());
		ps.setString(5, ub.getFilename());
	    ps.setString(6, ub.getFilecontent());
	    ps.setString(7, ub.getFilesize());
		ps.setString(8, ub.getFiletype());
		ps.setString(9, ub.getEncryptionfile());
		ps.setString(10, ub.getDecryptionfile());
		ps.setString(11, ub.getPhash());
		ps.setString(12, ub.getAhash());
		ps.setString(13,"Forward");
		
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	@Override
	public int team(teambean tb) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO `bc05-22`.team VALUES(?,?,?)");
		ps.setString(1, tb.getTeam());
		ps.setString(2, tb.getName());
		ps.setString(3, tb.getTeamid());
		

		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	@Override
	public boolean tlog(teambean ta) {
		boolean sk=false;
		try {
			con=dbcon.create();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc05-22`.`team` where tname=? and memid=?");
			ps.setString(1,ta.getTeamid());
			ps.setString(2,ta.getTeamid());
			
			 ResultSet rs=ps.executeQuery();
		        sk=rs.next();	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return sk;
	}
	@Override
	public int send(uploadbean sb) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO `bc05-22`.teamview VALUES(id,?,?,?,?)");
		ps.setString(1, sb.getCate());
	/*	ps.setString(2, sb.getDate());*/
		ps.setString(3, sb.getFilename());
		ps.setString(4, sb.getFiletype());
	
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	@Override
	public int del(deliverbean db) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO `bc05-22`.deliver VALUES(?,?,?,?,?)");
		ps.setString(1, db.getId());
		ps.setString(2, db.getEmail());
		ps.setString(3, db.getFilename());
		ps.setString(4, db.getApply());
		ps.setString(5, db.getDelivery());
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	@Override
	public int app(aplicationbean ap) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO `bc05-22`.apply VALUES(id,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, ap.getName());
		ps.setString(2, ap.getEmail());
		ps.setString(3, ap.getContact());
		ps.setString(4, ap.getAddress());
		ps.setString(5, ap.getService());
		ps.setString(6, ap.getDate());
		ps.setString(7, ap.getCate());
		ps.setString(8, "Apply");
		ps.setString(9, ap.getApplicationkey());
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	
	@Override
	public int bill(managebillbean ub) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO `bc05-22`.`bill` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
		ps.setString(1, ub.getBill());
		ps.setString(2, ub.getDate());
		ps.setString(3, ub.getName());
		ps.setString(4, ub.getEmail());
		ps.setString(5, ub.getQuantity());
	    ps.setString(6, ub.getCost());
	    ps.setString(7, ub.getFilesize());
		ps.setString(8, ub.getPrice());
		ps.setString(9,"Forward");
		ps.setString(10,"");
		ps.setString(11,"");
		ps.setString(12,"");
		ps.setString(13,"");
		ps.setString(14,"");
		
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	@Override
	public int upload(uploadteambean ub) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO `bc05-22`.uploadteam VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?)");
		
		ps.setString(1, ub.getEmail());
		ps.setString(2, ub.getDes());
		
		ps.setString(3, ub.getCate());
		ps.setString(4, ub.getFilename());
	    ps.setString(5, ub.getFilecontent());
	    ps.setString(6, ub.getFilesize());
		ps.setString(7, ub.getFiletype());
		ps.setString(8, ub.getEncryptionfile());
		ps.setString(9, ub.getDecryptionfile());
		ps.setString(10, ub.getPhash());
		ps.setString(11, ub.getAhash());
		ps.setString(12,"Forward");
		
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
}
