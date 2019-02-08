package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;





public class AccompagnamentoBeanDao {
	


	public synchronized boolean doSave(AccompagnamentoBean ab) {
		boolean ritorno=false;
		Connection conn = null;
		 PreparedStatement ps = null;
		 try {
			conn = DriverManagerConnectionPool.getConnection();
			ps = conn.prepareStatement("INSERT INTO smartdash.accompagnamento (idaccompagnamento,descrizioneA,ora,data,studente,tutor,)VALUES( ?,?,?,?,?,?)");
			
			ps.setInt(1, ab.getId());
			ps.setString(2, ab.getDescrizione());
			ps.setString(3, ab.getOra());
			ps.setString(4, ab.getData());
			ps.setString(5, ab.getStudente());
			ps.setString(6, ab.getTutor());
			
			
			if(ps.executeUpdate()==0) {ritorno=false;}
			else {ritorno=true;}	
			conn.commit();
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
				}finally{
					try {
						ps.close();
						DriverManagerConnectionPool.releaseConnection(conn);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		return ritorno;
	}
	
	
	public synchronized ArrayList<AccompagnamentoBean> doRetrieve(){
		ArrayList<AccompagnamentoBean> a=new ArrayList<AccompagnamentoBean>();
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=DriverManagerConnectionPool.getConnection();
			ps=conn.prepareStatement("select * FROM smartdash.accompagnamento");
			ResultSet res=ps.executeQuery();
			while(res.next()) {
				AccompagnamentoBean ab=new AccompagnamentoBean();
				ps.setInt(1,ab.getId());
				ps.setString(2,ab.getDescrizione());
				ps.setString(3, ab.getOra());
				ps.setString(4, ab.getData());
				ps.setString(5, ab.getStudente());
				ps.setString(6, ab.getTutor());
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
		return a;
	}
	
	
	
	public synchronized boolean doDelete(int id) {
			boolean ritorno= false;
			Connection conn=null;
			PreparedStatement ps= null;
			try {
					conn= DriverManagerConnectionPool.getConnection();
					ps= conn.prepareStatement("DELETE FROM smartdash.accompagnamento WHERE(idaccompagnamento=?)");
					ps.setInt(1, id);
					if(ps.executeUpdate()==1)ritorno=true;	
					conn.commit();
				} catch (SQLException e) { e.printStackTrace();}
			finally {
					try {
							ps.close();
							DriverManagerConnectionPool.releaseConnection(conn);				
						} catch (SQLException e) { e.printStackTrace();}
					}
			return ritorno;	
		}
	
}
	

