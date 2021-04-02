package beanweb;

import java.sql.SQLException;

import controller.RegistrazioneCaritasController;



public class RegistraCaritasBoundary  {

	private RegistrazioneCaritasController regController;

	

	public RegistraCaritasBoundary() {
		regController = new RegistrazioneCaritasController();
	}

	

	public boolean completaButtonPressed(String nomeCaritas, String password, String indirizzoCaritas, String tipologia, String recapitoTel, String email, String citta ) throws SQLException{
		 if (nomeCaritas != null && nomeCaritas != "" && password != null && password != "" && indirizzoCaritas != null && indirizzoCaritas != "" && recapitoTel != null && recapitoTel != "" && email != "" && email != null & citta != null && citta != "") {
			 regController.completaButtonPressed(nomeCaritas,password,indirizzoCaritas,tipologia,recapitoTel,email,citta);	
			 return true;
		}
		 return false;
	}

}