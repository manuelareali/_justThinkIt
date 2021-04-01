package beanweb;

public class ShopHomeBoundary {
	

	private int idShop;
	private GestisciEventiBoundary gestisciBoundary;
	private static ShopHomeBoundary instance = null;
	

		public static ShopHomeBoundary getInstance() {
			if (instance == null) {
				instance = new ShopHomeBoundary();
				}
			return instance;
		}

		public ShopHomeBoundary() {
			 gestisciBoundary = new GestisciEventiBoundary();
		}
		
    public void cercaCaritas(){
    	TransizionePagine switchPage = new TransizionePagine();
    	try {
			switchPage.apriMappa(this.idShop);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

    }



   
    public void gestisciEventi() {
    	gestisciBoundary.getInstance().loadShopBean(idShop);
    }

  



	public void initData(int id, String nome) {
		this.idShop = id;
    	//nomeCognome.setText(nome);	
	}





}

