package kr.frontcontroller;

public class ViewResolver {
	public static String makeView(String view) {
		return "view/"+view+".jsp";
	}
}
