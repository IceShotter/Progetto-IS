package model;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;


public class AmministratoreBeanDao {

	public synchronized boolean doSave(AmministratoreBean ab) {
		boolean b=false;
		Connection conn = null;
		 java.sql.PreparedStatement ps = null;
		 try 
		 {
			conn = DriverManagerConnectionPool.getConnection();
			ps = conn.
					prepareStatement("INSERT INTO smartdash.amministratore (Nome, Cognome, DataNascita, email, password)VALUES(?,?,?,?,?)");

			ps.setString(1, ab.getNome());
			ps.setString(2, ab.getCognome());
			ps.setString(3, ab.getDataNascita());
			ps.setString(4, ab.getEmail());
			ps.setString(5, ab.getPassword());
		 
		 if(ps.executeUpdate()==0) 
			{
				b=false;
			}
			else {
				
				b=true;
				}
			conn.commit();
		}
		 catch(SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			try 
			{
				ps.close();
				DriverManagerConnectionPool.releaseConnection(conn);
			}
			catch (SQLException e)
			{
					// TODO Auto-generated catch block
					e.printStackTrace();
			}
		}
		 return b;
	}
	public synchronized AmministratoreBean doRetrieveByKey(String email, String password){
		AmministratoreBean ab=null;
		 Connection conn = null;
		 java.sql.PreparedStatement ps = null;
		 try {
			
			conn = DriverManagerConnectionPool.getConnection();
			ps = conn.
					prepareStatement("SELECT * FROM smartdash.amministratore WHERE Email = ? AND Password = ? ");
			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet res = ps.executeQuery();
			
			// 4. Prendi il risultato
			if(res.next())
			{
				ab = new AmministratoreBean(); 
				ab.setEmail(email);
				ab.setPassword(res.getString("password"));
			}
			
		} catch (SQLException e) {
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
		return ab;
	 }

}

		 

