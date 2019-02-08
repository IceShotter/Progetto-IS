package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class LezioneBeanDao {

	public synchronized boolean doDelete(int idLezione)
	{
		boolean ritorno=false;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("DELETE FROM smartdash.lezione WHERE(idLezione=?)");
			ps.setInt(1,idLezione);
			if(ps.executeUpdate()==1)
				ritorno=true;
				conn.commit();
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
	
	
	public synchronized boolean doSave(LezioneBean lb,String Tutor, String studente)
	{
		boolean ritorno=false;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("INSERT INTO smartdash.lezione (idLezione,Data,Materia,Aula,Descrizione,Tutor,studente,ora,effettuato)VALUES(?,?,?,?,?,?,?,?,?)");
			ps.setInt(1,lb.getIdLezione());
			ps.setString(2,lb.getData());
			ps.setString(3,lb.getMateria());
			
			ps.setString(4,lb.getAula());
			ps.setString(5,lb.getDescrizione());
			ps.setString(6,lb.getNomeTutor());
			ps.setString(7,lb.getNomeStudente());
			ps.setString(8,lb.getOra());
			ps.setBoolean(9,lb.getEffettuato());
			
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
	
	public synchronized LezioneBean doRetrieveByKey(int idLezione)
	{
		LezioneBean lb=null;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("SELECT * FROM smartdash.lezione WHERE idLezione=?");
			ps.setInt(1,idLezione);
			
			
			ResultSet res=ps.executeQuery();
			
			
			if(res.next())
			{
				lb=new LezioneBean();
				lb.setIdLezione(idLezione);
				lb.setData(res.getString("Data"));
				lb.setMateria(res.getString("Materia"));
				lb.setAula(res.getString("Aula"));
				lb.setDescrizione(res.getString("Descrizione"));
				lb.setNomeTutor(res.getString("Tutor"));
				lb.setNomeStudente(res.getString("studente"));
				lb.setOra(res.getString("ora"));
				lb.setEffettuato(res.getBoolean("effettuato"));
				
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
		
			return lb;
}
	
	
	
	public synchronized ArrayList<LezioneBean> doRetrieve()
	{
		ArrayList<LezioneBean>lista =null;
		LezioneBean lb=null;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("SELECT * FROM smartdash.lezione ");
			
			
			
			ResultSet res=ps.executeQuery();
			lista=new ArrayList<LezioneBean>();
			
		while(res.next())
			{
			lb=new LezioneBean();
			lb.setIdLezione(res.getInt("idLezione"));
			lb.setData(res.getString("Data"));
			lb.setMateria(res.getString("Materia"));
			lb.setAula(res.getString("Aula"));
			lb.setDescrizione(res.getString("Descrizione"));
			lb.setNomeTutor(res.getString("Tutor"));
			lb.setNomeStudente(res.getString("studente"));
			lb.setOra(res.getString("ora"));
			lb.setEffettuato(res.getBoolean("effettuato"));
				lista.add(lb);
				
				
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
	
	
	public synchronized LezioneBean doRetrieveByData(Date Data)
	{
		LezioneBean lb=null;
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("SELECT * FROM smartdash.lezione WHERE Data=?");
			ps.setDate(1,Data);
			
			
			ResultSet res=ps.executeQuery();
			
			
			if(res.next())
			{
				lb=new LezioneBean();
				lb.setIdLezione(res.getInt("idLezione"));
				lb.setData(res.getString("Data"));
				lb.setMateria(res.getString("Materia"));
				lb.setAula(res.getString("Aula"));
				lb.setDescrizione(res.getString("Descrizione"));
				lb.setNomeTutor(res.getString("Tutor"));
				lb.setNomeStudente(res.getString("studente"));
				lb.setOra(res.getString("ora"));
				lb.setEffettuato(res.getBoolean("effettuato"));
				
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
		
			return lb;
}
	
	
	public synchronized boolean doSaveorUpdate(LezioneBean lb){
	    boolean ritorno=false;
	    Connection conn = null;
	     PreparedStatement ps = null;
	     try {
	      conn = DriverManagerConnectionPool.getConnection();
	      ps = conn.prepareStatement(" SELECT * FROM smartdash.lezione WHERE idLezione= ?");
	      ps.setInt(1, lb.getIdLezione());
	      ResultSet res=ps.executeQuery();
	      if(res.next()) {
	        ps= conn.prepareStatement("UPDATE smartdash.lezione SET Aula=? WHERE(idLezione=?)");
	    
	        ps.setString(1, lb.getAula());
	        
	        if(ps.executeUpdate()==1)ritorno=true;
	        conn.commit();
	      }
	     
	     }catch (SQLException e) {
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
	    return ritorno;
	  
	  }
	
}
