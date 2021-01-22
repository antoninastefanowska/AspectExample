package aspectapp.model;

public class ExampleModel {
	private String var1;
	private String var2;
	private String var3;
	
	@Deprecated
	public void setVar1(String input) {
		System.out.println("setVar1()");
		var1 = input;
	}
	
	protected void setVar2(String input) {
		System.out.println("setVar2()");
		var2 = input;
	}
	
	private void setVar3(String input) {
		System.out.println("setVar3()");
		var3 = input;
	}
	
	public void setFields() {
		setVar1("Var1");
		setVar2("Var2");
		setVar3("Var3");
	}
}
