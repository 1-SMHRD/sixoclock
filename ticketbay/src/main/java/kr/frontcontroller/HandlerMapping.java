package kr.frontcontroller;

import java.util.HashMap;

import kr.controller.AuctionpageController;
import kr.controller.BidCancelController;
import kr.controller.ChatListController;
import kr.controller.ChatroomController;
import kr.controller.ConfirmMController;
import kr.controller.Controller;
import kr.controller.DeleteUserController;
import kr.controller.MainController;
import kr.controller.MyPageController;
import kr.controller.NaveridloginpageController;
<<<<<<< HEAD

=======
import kr.controller.ProductBuyViewController;
>>>>>>> branch 'master' of https://github.com/1-SMHRD/sixoclock.git
import kr.controller.ProductListViewController;
import kr.controller.SalesDetailController;
import kr.controller.SalesListController;

import kr.controller.RequestVerifyAuthController;
import kr.controller.SalesDeleteController;

import kr.controller.orderPayController;

import kr.controller.SalesWriteController;

import kr.controller.SigninController;
import kr.controller.SigninPController;
import kr.controller.SignupController;
import kr.controller.SignupPController;
import kr.controller.UpdateSalesController;
import kr.controller.SignoutController;
import kr.controller.UpdateUserController;
import kr.controller.UseMoneyController;
import kr.controller.UserinfoPController;
import kr.controller.addDeliveryController;
import kr.controller.addDeliveryPController;
import kr.controller.checkController;
import kr.controller.SigninPController;
import kr.controller.SalesWriteFormController;


public class HandlerMapping {
	private HashMap<String, Controller> mappings;	
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		mappings.put("/main.do", new MainController());
		mappings.put("/salesList.do", new SalesListController());
		mappings.put("/salesDetail.do", new SalesDetailController());

		
		mappings.put("/check.do",new checkController());
		mappings.put("/orderPay.do",new orderPayController());
		mappings.put("/RequestVerifyAuth.do",new RequestVerifyAuthController());

		mappings.put("/salesWrite.do", new SalesWriteController()); // ????????????
		mappings.put("/salesWriteForm.do", new SalesWriteFormController());
		mappings.put("/productListView.do", new ProductListViewController()); // ?????? ????????? ??????
		mappings.put("/productBuyView.do", new ProductBuyViewController()); // ?????? ????????? ??????
		
		mappings.put("/salesDelete.do", new SalesDeleteController());

		mappings.put("/mypage.do", new MyPageController());
		
		mappings.put("/signinpage.do", new SigninPController());
		mappings.put("/naveridLogin.do", new NaveridloginpageController());
		mappings.put("/signin.do", new SigninController());
		mappings.put("/signup.do", new SignupController());
		mappings.put("/signuppage.do", new SignupPController());
		mappings.put("/signout.do", new SignoutController());
		mappings.put("/updateUser.do", new UpdateUserController());
		mappings.put("/userinfopage.do", new UserinfoPController());
		mappings.put("/deleteUser.do", new DeleteUserController());
		mappings.put("/addDeliverypage.do", new addDeliveryPController());
		mappings.put("/addDelivery.do", new addDeliveryController());
		mappings.put("/auction.do", new AuctionpageController());
		mappings.put("/usemoney.do", new UseMoneyController());
		mappings.put("/bidcancel.do", new BidCancelController());
		mappings.put("/chatroom.do", new ChatroomController());
		mappings.put("/chatlist.do", new ChatListController());
		mappings.put("/updatesales.do", new UpdateSalesController());
		mappings.put("/confirmM.do", new ConfirmMController());

		
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}

}