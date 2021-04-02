package controller;

import java.util.List;

import dao.EventoDao;
import entity.EventTab;

public class GestisciEventiController {


	private EventoDao eventDao;

	
	
	public GestisciEventiController() {
	
		eventDao = new EventoDao();
	}
	
	
	public List<EventTab> caricaEventi(int idShop){
		return eventDao.cercaEventi(idShop);
		
	}
	
	public boolean cancellaEvento(int evento){
		return eventDao.cancellaEvento(evento);
	}
	
		
	
}
