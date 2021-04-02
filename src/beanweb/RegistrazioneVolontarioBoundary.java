package beanweb;



import controller.RegistrazioneVolontarioController;


public class RegistrazioneVolontarioBoundary{
	private RegistrazioneVolontarioController regC;

   
	
	
	public RegistrazioneVolontarioBoundary() {
		regC = new RegistrazioneVolontarioController();
	}

	
	public boolean registraVolontarioPressed(String nome, String cognome, String password, String confermaPassword, String via, String recapitoTel, String email, String dataNascita, String citta) {	
			 if (nome != null && nome != "" && cognome != null && cognome != "" && password != null &&password != "" && confermaPassword != null &&  confermaPassword != "" && via != null && via != "" && recapitoTel != null  && recapitoTel != "" && email != null && email != "" && dataNascita != null && dataNascita != "" && citta != null  && citta != ""){
				 regC.completaButtonPressed( nome, cognome,password, via, recapitoTel, email, dataNascita,citta);
				 return true;
		 }
		 return false;
	}

}