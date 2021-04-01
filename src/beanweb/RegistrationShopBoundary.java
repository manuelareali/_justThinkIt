package beanweb;


import java.sql.SQLException;


import controller.RegistrationShopManagerController;


public class RegistrationShopBoundary{
	private RegistrationShopManagerController regNeg;




	public boolean registraNegozioPressed(String tipologia, String nomeNegozio,String password, String indirizzoNeg, String recapitoTel, String email, String citta){
    	if (nomeNegozio == null || nomeNegozio.equals("") || password == null || password.equals("") ||indirizzoNeg == null || indirizzoNeg.equals("") || recapitoTel == null || recapitoTel.equals("")|| email.equals("") || email == null  || citta == null || citta.equals("")) {
    		return false;    		
    	}
    	else {
    		regNeg.registraNegozioPressed(tipologia ,nomeNegozio,password, indirizzoNeg, recapitoTel, email, citta);
    		return true;
    	}
    	
    }
    
    
 
   
    
}
