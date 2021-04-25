package bean;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.EmailController;
import exception.MyException;
import exception.Trigger;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class EmailBoundary {
	
	private static Logger logger = LoggerFactory.getLogger(EmailBoundary.class.getName());
	private EmailController emailC;
	private TextField[] text;
	
	public EmailBoundary() {
		trigger = new Trigger();
	}
	
	private Trigger trigger;
	@FXML
	private Stage stage;

	@FXML
	private TextArea messaggio;

	@FXML
	private TextField oggetto;

	@FXML
	private TextField destinatario;

	@FXML
	private TextField mittente;

	@FXML
	private Button invia;

	@FXML
	public int sendMessage(ActionEvent event) {
		int i = 0;
		if (checker()) {
		i = emailC.sendMessageController(mittente.getText(), destinatario.getText(), messaggio.getText(),
				oggetto.getText());

		Stage st = (Stage) invia.getScene().getWindow();
		st.close();
		return i;
		}else {
			try {
				trigger.myTrigger();
			}catch(MyException e) {
				logger.error("Alcuni campi sono vuoti");
			}
		}
		return 0;
	}

	public boolean checker() {
		boolean x = true;
		// Controlla che non ci siano campi lasciati vuoti
		for (int i = 0; i < text.length; i++) {
			if (text[i].getText().isEmpty()) {
				
				return true;
			}
		}		
		return false;
	}

	
	@FXML
	void initialize() {

		emailC = new EmailController();

	}

	public void loadEmail(int idDestinatario, int idMittente) {
		String[] mitDest = emailC.loadMittenteDestinatario(idDestinatario, idMittente);
		this.mittente.setText(mitDest[0]);
		this.destinatario.setText(mitDest[1]);

	}

}
