package beanweb;


import controller.PrenotaTurnoController;




public class PrenotaTurnoBoundary {

	private PrenotaTurnoController prenotaC;

	private static PrenotaTurnoBoundary instance = null;
	
	public PrenotaTurnoBoundary() {
		prenotaC = PrenotaTurnoController.getInstance();
	}

	public static  PrenotaTurnoBoundary getInstance() {
		if(instance == null) {
			instance = new  PrenotaTurnoBoundary();
		}
		return instance;
		}
	
    public int  prenotaTurno(String turni, String cbOraInizio, String OraFine, String cv) {
    	prenotaC.prenotaTurno(turni, cbOraInizio, OraFine, cv);
    	return 0;
	}

	public boolean checker() {
		return false;
		
		// Controlla che non ci siano campi lasciati vuoti

		/*if (cv.getText().isEmpty()) {
			logger.debug("riprova");
			return false;
		} else {
			return true;
		}*/
	}


	public void setData(int idCar, int idUte) {
	
		prenotaC.setDataController(idCar, idUte);
	}
}

