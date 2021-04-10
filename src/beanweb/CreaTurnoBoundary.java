package beanweb;

import controller.CreaTurnoController;



public class CreaTurnoBoundary {

	private int  caritas;

	private static CreaTurnoBoundary instance = null;
	
	public static CreaTurnoBoundary getInstance() {
		if (instance == null) {
			instance = new CreaTurnoBoundary();
		}
		return instance;
	}
	
	public boolean creaTurnoPressed(String nomeGiorno, String oraInizio, String oraFine, String  numMaxParte, String note) {
		if (!nomeGiorno.equals("")  && !oraInizio.equals("") && !oraFine.equals("") && !numMaxParte.equals("")  && !note.equals("")) {
			if (nomeGiorno != null && oraInizio != null && oraFine != null && numMaxParte != null && note != null) {
				CreaTurnoController creaTurno = new CreaTurnoController();
				creaTurno.creaTurno(caritas, nomeGiorno,oraInizio, oraFine,Integer.parseInt(numMaxParte), note);
				return true;
			}
		}
		return false;
	}


	public void setCaritas(int caritas) {
		this.caritas = caritas;
	}

}
