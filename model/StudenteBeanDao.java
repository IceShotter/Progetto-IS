package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudenteBeanDao {
	
	public synchronized boolean doDelete(String key)
	{
		boolean ritorno=false;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("DELETE FROM smartdash.studenti WHERE(email=?)");
			ps.setString(1,key);
			if(ps.executeUpdate()==1)
				ritorno=true;
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				ps.close();
				DriverManagerConnectionPool.releaseConnection(conn);
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return ritorno;
	}
	
	
	public synchronized boolean doSave(StudenteBean sb)
	{
		boolean ritorno=false;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("INSERT INTO smartdash.studenti (Matricola,Nome,Cognome,DataNascita,email,password)VALUES(?,?,?,?,?,?)");
			
			ps.setString(1,sb.getMatricola());
			ps.setString(2,sb.getNome());
			ps.setString(3,sb.getCognome());
			
			ps.setString(4,sb.getData());
			ps.setString(5,sb.getEmail());
			ps.setString(6,sb.getPassword());
			
			ps.executeUpdate();
			conn.commit();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}finally{
			try {
				ps.close();
				DriverManagerConnectionPool.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
			}
		
	return true;
}
	
	
	
	
	
	
	public synchronized StudenteBean doRetrieveByKey(String email,String password)
	{
		StudenteBean sb=null;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("SELECT * FROM smartdash.studenti WHERE email=? AND password=?");
			ps.setString(1,email);
			ps.setString(2,password);
			
			ResultSet res=ps.executeQuery();
			
			
			if(res.next())
			{
				sb=new StudenteBean();
				sb.setEmail(email);
				sb.setPassword(password);
				sb.setMatricola(res.getString("Matricola"));
				sb.setNome(res.getString("Nome"));
				sb.setCognome(res.getString("Cognome"));
				sb.setData(res.getString("DataNascita"));
			}
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				ps.close();
				DriverManagerConnectionPool.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
		
			return sb;
		
}
	
	
	public synchronized boolean doRetrieveByKey(String email)
	{
		StudenteBean sb=null;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("SELECT * FROM smartdash.studenti WHERE email=?");
			ps.setString(1,email);
			
			
			ResultSet res=ps.executeQuery();
			sb=new StudenteBean();
			sb.setEmail(email);
			
			
			if(res.next())
			{
				return true;
				
				
			}
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				ps.close();
				DriverManagerConnectionPool.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
		return false;
		
}
		
}


