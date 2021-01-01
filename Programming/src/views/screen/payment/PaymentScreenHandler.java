package views.screen.payment;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import controller.PaymentController;
import entity.cart.Cart;
import entity.cart.CartMedia;
import common.exception.PlaceOrderException;
import entity.invoice.Invoice;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;
import utils.Configs;
import views.screen.BaseScreenHandler;
import views.screen.popup.PopupScreen;

public class PaymentScreenHandler extends BaseScreenHandler {

	@FXML
	private Button btnConfirmPayment;

	@FXML
	private ImageView loadingImage;

	private Invoice invoice;

	@FXML
	private Label pageTitle;

	@FXML
	private TextField cardNumber;

	@FXML
	private TextField holderName;

	@FXML
	private TextField expirationDate;

	@FXML
	private TextField securityCode;

	public PaymentScreenHandler(Stage stage, String screenPath, int amount, String contents) throws IOException {
		super(stage, screenPath);
	}

	public PaymentScreenHandler(Stage stage, String screenPath, Invoice invoice) throws IOException {
		super(stage, screenPath);
		this.invoice = invoice;
		
		btnConfirmPayment.setOnMouseClicked(e -> {
			try {
				confirmToPayOrder();
				List lstMedia = getBController().getListCartMedia();
				for (Object cm : lstMedia) {
					CartMedia cartMedia = (CartMedia) cm;
					cartMedia.getMedia().updateMediaFieldById("Media", cartMedia.getMedia().getId(), "Quantity", cartMedia.getMedia().getQuantity() - cartMedia.getQuantity());
				}
				((PaymentController) getBController()).emptyCart();
			} catch (Exception exp) {
				System.out.println(exp.getStackTrace());
			}
		});
	}


	void confirmToPayOrder() throws IOException{
		String contents = "pay order";
		PaymentController ctrl = (PaymentController) getBController();
		Map<String, String> response = ctrl.payOrder(invoice.getAmount(), contents, cardNumber.getText(), holderName.getText(),
				expirationDate.getText(), securityCode.getText());

		BaseScreenHandler resultScreen = new ResultScreenHandler(this.stage, Configs.RESULT_SCREEN_PATH, response.get("RESULT"), response.get("MESSAGE") );
		resultScreen.setHomeScreenHandler(homeScreenHandler);
		resultScreen.requestToNewScreen(this);
	}
	
	@Override
	public void requestToNewScreen(BaseScreenHandler prevScreen) {
		setPreviousScreen(this);
		setScreenTitle("Payment Screen");
		show();
	}

}