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
		if (nomeGiorno.equals("") ||   nomeGiorno == null) {
			return false;
		} 
		else if (oraInizio.equals("") || oraInizio == null) {
			return false;
		}
		else if (oraFine.equals("") || numMaxParte == null) {
			return false;
		} 
		else if (note.equals("") || note == null) {
			return false;
		}
		else {
				CreaTurnoController creaTurno = new CreaTurnoController();
				creaTurno.creaTurno(caritas, nomeGiorno,oraInizio, oraFine,Integer.parseInt(numMaxParte), note);
				return true;
			}
		}


	public void setCaritas(int caritas) {
		this.caritas = caritas;
	}

}
