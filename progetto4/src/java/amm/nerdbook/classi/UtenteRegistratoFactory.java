/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.classi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class UtenteRegistratoFactory {

    //Pattern Design Singleton
    private static UtenteRegistratoFactory singleton;

    public static UtenteRegistratoFactory getInstance() {
        if (singleton == null) {
            singleton = new UtenteRegistratoFactory();
        }
        return singleton;
    }
    
    //Gestione DB
    private String connectionString;
    
    public void setConnectionString(String s){
	this.connectionString = s;
    }
    
    public String getConnectionString(){
            return this.connectionString;
    }
    //Fine gestione DB

    private UtenteRegistratoFactory() {
    }

    public UtenteRegistrato getUtenteRegistratoById(int id) {

        try {
             // path, username, password
                    Connection conn = DriverManager.getConnection(connectionString, "ema", "ema"); 
                String query = "select * from UtentiRegistrati " + "where utente_id = ?";
                
                // Si associano i valori
               
                        PreparedStatement stmt = conn.prepareStatement(query);
                    // Si associano i valori
                    stmt.setInt(1, id);
                    
                    // Esecuzione query
                    ResultSet res = stmt.executeQuery();
                    
                    // ciclo sulle righe restituite
                    if (res.next()) {
                        UtenteRegistrato current = new UtenteRegistrato();
                        current.setId(res.getInt("utente_id"));
                        current.setNome(res.getString("nome"));
                        current.setCognome(res.getString("cognome"));
                        current.setPassword(res.getString("password"));
                        current.setEmail(res.getString("email"));
                        current.setUrlFotoProfilo(res.getString("urlFotoProfilo"));
                        
                        
                        stmt.close();
                        conn.close();
                        return current;
                    }
                stmt.close();
                        conn.close();
            
        } catch (SQLException e) {
              e.printStackTrace();
        }
        return null;
    }
    
    public int getIdByUserAndPassword(String user, String password){
        try {
            // path, username, password
                    Connection conn = DriverManager.getConnection(connectionString, "ema", "ema"); 
                String query = " select utente_id from UtentiRegistrati" + " where email = ? and password = ?";
                
                // Si associano i valori
                // Prepared Statement
                        PreparedStatement stmt = conn.prepareStatement(query);
                    // Si associano i valori
                    stmt.setString(1, user);
                    stmt.setString(2, password);
                    
                    // Esecuzione query
                    ResultSet res = stmt.executeQuery();
                    
                    // ciclo sulle righe restituite
                    if (res.next()) {
                        int id = res.getInt("utente_id");
                        
                        stmt.close();
                        conn.close();
                        return id;
                    }
                
             stmt.close();
                        conn.close();
                        
        } catch (SQLException e) {
        }
        return -1;
    }
    
    
    
}







