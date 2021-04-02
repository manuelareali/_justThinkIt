package beanweb;



import controller.RegistrationShopManagerController;


public class RegistrationShopBoundary{
	private RegistrationShopManagerController regNeg;




	public boolean registraNegozioPressed(String tipologia, String nomeNegozio,String password, String indirizzoNeg, String recapitoTel, String email, String citta){
    	if (nomeNegozio != null && password != null && indirizzoNeg != null && recapitoTel != null && email != null && citta != null) {
    		regNeg.registraNegozioPressed(tipologia ,nomeNegozio,password, indirizzoNeg, recapitoTel, email, citta);
    		return true;    		
    	}
    	return false;
    	}
    	

    
    
 
   
    
}
