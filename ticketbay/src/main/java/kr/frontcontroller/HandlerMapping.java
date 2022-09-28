package kr.frontcontroller;

import java.util.HashMap;

<<<<<<< HEAD
import kr.controller.AuctionpageController;
import kr.controller.BidCancelController;
import kr.controller.CategoryController;
import kr.controller.CategoryFormController;
import kr.controller.ChatroomController;
=======
>>>>>>> branch 'master' of https://github.com/1-SMHRD/sixoclock.git
import kr.controller.Controller;
import kr.controller.DeleteUserController;
import kr.controller.MainController;
import kr.controller.MyPageController;
import kr.controller.NaveridloginpageController;
import kr.controller.ProductListViewController;
import kr.controller.SalesDetailController;
import kr.controller.SalesListController;
import kr.controller.SalesWriteController;
<<<<<<< HEAD
import kr.controller.SigninController;
import kr.controller.SigninPController;
import kr.controller.SignupController;
import kr.controller.SignupPController;
import kr.controller.SignoutController;
import kr.controller.UpdateUserController;
import kr.controller.UseMoneyController;
import kr.controller.UserinfoPController;
import kr.controller.addDeliveryController;
import kr.controller.addDeliveryPController;
import kr.controller.SigninPController;
=======
import kr.controller.SalesWriteFormController;
>>>>>>> branch 'master' of https://github.com/1-SMHRD/sixoclock.git

public class HandlerMapping {
	private HashMap<String, Controller> mappings;	
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		mappings.put("/main.do", new MainController());
		mappings.put("/salesList.do", new SalesListController());
		mappings.put("/salesDetail.do", new SalesDetailController());
		mappings.put("/salesWrite.do", new SalesWriteController()); // 판매등록
		mappings.put("/salesWriteForm.do", new SalesWriteFormController());
		mappings.put("/productListView.do", new ProductListViewController()); // 등록후 마이페이지
		
<<<<<<< HEAD
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
		
		
		
=======
>>>>>>> branch 'master' of https://github.com/1-SMHRD/sixoclock.git
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}

}