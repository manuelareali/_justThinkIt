package beanweb;



import controller.RegistrazioneVolontarioController;


public class RegistrazioneVolontarioBoundary{
	private RegistrazioneVolontarioController regC;

   
	
	
	public RegistrazioneVolontarioBoundary() {
		regC = new RegistrazioneVolontarioController();
	}

	
	public boolean registraVolontarioPressed(String nome, String cognome, String password, String confermaPassword, String via, String recapitoTel, String email, String dataNascita, String citta) {	
			 if (nome == null || nome.equals("") || cognome == null || cognome.equals("") || password == null || password.equals("") || confermaPassword.equals("") || confermaPassword == null|| via == null || via.equals("") || recapitoTel == null || recapitoTel.equals("") || email.equals("") || email == null || dataNascita == null || dataNascita.equals("") || citta == null || citta.equals("")){
				 return false;
		 }
			 else {
					regC.completaButtonPressed( nome, cognome,password, via, recapitoTel, email, dataNascita,citta);
				 return true;
			 }
		}

}