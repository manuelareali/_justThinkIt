package beanweb;



import controller.RegistrazioneVolontarioController;


public class RegistrazioneVolontarioBoundary{
	private RegistrazioneVolontarioController regC;

   
	
	
	public RegistrazioneVolontarioBoundary() {
		regC = new RegistrazioneVolontarioController();
	}

	
	public boolean registraVolontarioPressed(String nome, String cognome, String password, String confermaPassword, String via, String recapitoTel, String email, String dataNascita, String citta) {	
		 if (nome == null || nome.equals("") || cognome == null || cognome.equals("")){
			 return false;
		 }
		 else if(password == null || password.equals("") || confermaPassword == null || cponfermaPassword.equals("")) {
			 return false;
		 }
		 else if (via == null || via.equals("")){
			 return false;
		 }
		 else if (recapitoTel == null || recapitoTel.equals("")) {
			 return false;
		 }
		 else if (email == null || email.equals("")) {
			 return false;
		 }
		 else if (dataNascita == null || dataNascita.equals("")) {
			 return false;
		 }
		 else if ( citta == null || citta.equals("")) {
			 return false;
		 }
		 else {
				regC.completaButtonPressed( nome, cognome,password, via, recapitoTel, email, dataNascita,citta);
			 return true;
		 }
	}

}