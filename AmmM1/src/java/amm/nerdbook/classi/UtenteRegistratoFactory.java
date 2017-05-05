/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.classi;
import java.util.ArrayList;
/**
 *
 * @author emanuelfois
 */
public class UtenteRegistratoFactory {
    
    //Pattern Design Singleton
    private static UtenteRegistratoFactory singleton;

    public static UtenteRegistratoFactory getInstance() {
        if (singleton == null) {
            singleton = new UtenteRegistratoFactory();
        }
        return singleton;
    }

    private ArrayList<UtenteRegistrato> listaUtenteRegistrati = new ArrayList<UtenteRegistrato>();

    private UtenteRegistratoFactory() {
        //Creazione utenti

        //Djanni
        UtenteRegistrato utenteregistrato1 = new UtenteRegistrato();
        utenteregistrato1.setId(0);
        utenteregistrato1.setNome("A");
        utenteregistrato1.setEmail("A@gmail.com");
        utenteregistrato1.setCognome("w");
        utenteregistrato1.setPassword("123");
        utenteregistrato1.setUrlFotoProfilo(".jpg");

        //HeavyBreathing
        UtenteRegistrato utenteregistrato2 = new UtenteRegistrato();
        utenteregistrato2.setId(1);
        utenteregistrato2.setNome("g");
        utenteregistrato2.setEmail("a@gmail.com");
        utenteregistrato2.setCognome("v");
        utenteregistrato2.setPassword("123");
        utenteregistrato2.setUrlFotoProfilo(".gif");

        //GymWorkOut
        UtenteRegistrato utenteregistrato3 = new UtenteRegistrato();
        utenteregistrato3.setId(2);
        utenteregistrato3.setNome("sd");
        utenteregistrato3.setEmail("sdt@gmail.com");
        utenteregistrato3.setCognome("tr");
        utenteregistrato3.setPassword("123");
        utenteregistrato3.setUrlFotoProfilo("img/user2.jpg");

        //ChaoPovery
        UtenteRegistrato utenteregistrato4 = new UtenteRegistrato();
        utenteregistrato4.setId(3);
        utenteregistrato4.setNome("opr");
        utenteregistrato4.setCognome("r");
        utenteregistrato4.setEmail("sd@gmail.com");
        utenteregistrato4.setPassword("123");
        utenteregistrato4.setUrlFotoProfilo(".jpg");
        
        UtenteRegistrato utenteregistrato5 = new UtenteRegistrato();
        utenteregistrato5.setId(3);
        utenteregistrato5.setNome("luca");
        utenteregistrato5.setCognome("stoch");
        utenteregistrato5.setEmail(null);
        utenteregistrato5.setPassword("123");
        utenteregistrato5.setUrlFotoProfilo(null);

        listaUtenteRegistrati.add(utenteregistrato1);
        listaUtenteRegistrati.add(utenteregistrato2);
        listaUtenteRegistrati.add(utenteregistrato3);
        listaUtenteRegistrati.add(utenteregistrato4);
        listaUtenteRegistrati.add(utenteregistrato5);
    }

    public UtenteRegistrato getUtenteRegistratoById(int id) {
        for (UtenteRegistrato utenteregistrato : this.listaUtenteRegistrati) {
            if (utenteregistrato.getId() == id) {
                return utenteregistrato;
            }
        }
        return null;
    }
    
    
public int getIdByUserAndPassword(String user, String password){
        for(UtenteRegistrato utenteregistrato : this.listaUtenteRegistrati){
            if(utenteregistrato.getNome().equals(user) && utenteregistrato.getPassword().equals(password)){
                return utenteregistrato.getId();
            }
        }
        return -1;
    }
}
