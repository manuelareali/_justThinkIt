package beanweb;



import controller.UserHomeController;


public class ProfileBoundary{

	
	private int idUser;
	

    

 
void backHomeButtonPressed() {
			UserHomeBoundary userHomeBoundary = new UserHomeBoundary();
			UserHomeController userHomeC = new UserHomeController();
			
			userHomeC.initDataCont(idUser, userHomeBoundary);
    }
 
}
