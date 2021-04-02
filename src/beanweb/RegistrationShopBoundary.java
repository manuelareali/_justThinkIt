package beanweb;



import controller.RegistrationShopManagerController;


public class RegistrationShopBoundary{
	private RegistrationShopManagerController regNeg;




	public boolean registraNegozioPressed(String tipologia, String nomeNegozio,String password, String indirizzoNeg, String recapitoTel, String email, String citta){
    	if (nomeNegozio != null && nomeNegozio != "" && password != null && password != "" && indirizzoNeg != null &&indirizzoNeg != "" && recapitoTel != null && recapitoTel != "" &&  email != null &&  email != "" && citta != null && citta != "") {
    		regNeg.registraNegozioPressed(tipologia ,nomeNegozio,password, indirizzoNeg, recapitoTel, email, citta);
    		return true;    		
    	}
    	return false;
    	}
    	

    
    
 
   
    
}
