package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TutorBeanDao {
	public synchronized boolean doSave(TutorBean tb)
	{
		boolean ritorno=false;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("INSERT INTO smartdash.tutor (Matricola,Nome,Cognome,DataNascita,email,password,amministratore)VALUES(?,?,?,?,?,?,?)");
			
			ps.setString(1,tb.getMatricola());
			ps.setString(2,tb.getNome());
			ps.setString(3,tb.getCognome());
			ps.setString(4,tb.getDataNascita());
			ps.setString(5,tb.getEmail());
			ps.setString(6,tb.getPassword());
			ps.setString(7,tb.getAmministratore());
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
	
	public synchronized boolean doDelete(String key)
	{
		boolean ritorno=false;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("DELETE FROM smartdash.tutor WHERE(email=?)");
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
	
	public synchronized TutorBean doRetrieveByKey(String email,String password)
	{
		TutorBean tb=null;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("SELECT * FROM smartdash.tutor WHERE email=? AND password=?");
			ps.setString(1,email);
			ps.setString(2,password);
			
			ResultSet res=ps.executeQuery();
			
			
			if(res.next())
			{
				tb=new TutorBean();
				tb.setEmail(email);
				tb.setPassword(password);
				tb.setMatricola(res.getString("Matricola"));
				tb.setNome(res.getString("Nome"));
				tb.setCognome(res.getString("Cognome"));
				tb.setDataNascita(res.getString("DataNascita"));
				tb.setAmministratore(res.getString("amministratore"));
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
		 return tb;
	}
	public synchronized ArrayList<TutorBean> doRetrieve()
	{
		ArrayList<TutorBean>lista =null;
		TutorBean tb=null;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("SELECT * FROM smartdash.tutor ");
			
			
			
			ResultSet res=ps.executeQuery();
			lista=new ArrayList<TutorBean>();
			
		while(res.next())
			{
			tb=new TutorBean();
			tb.setMatricola(res.getString("Matricola"));
			tb.setNome(res.getString("Nome"));
			tb.setCognome(res.getString("Cognome"));
			tb.setDataNascita(res.getString("DataNascita"));
			tb.setEmail(res.getString("email"));
			tb.setPassword(res.getString("password"));
			tb.setAmministratore(res.getString("amministratore"));
				lista.add(tb);
				
				
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
		
			return lista;
}
	
	
	
}
