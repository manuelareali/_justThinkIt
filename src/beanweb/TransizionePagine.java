package beanweb;

import controller.CaritasHomeController;
import controller.CercaCaritasController;


public class TransizionePagine {
	private beanweb.CercaCaritas cercaCaritasBean;

	
				
	
	public void apriMappa(int idUser){
				cercaCaritasBean = cercaCaritasBean.getInstance();
	        CercaCaritasController controller = new CercaCaritasController(); 
	        controller.initUser(idUser, cercaCaritasBean);
	}
	
	
	public void backToMenuCaritas(int idUser) {
			CaritasHomeBoundary caritasHomeBoundary = new CaritasHomeBoundary();
			CaritasHomeController caritasHomeC = new CaritasHomeController();
			caritasHomeC.initDataCaritas(idUser, caritasHomeBoundary);
	}
	


	
}
