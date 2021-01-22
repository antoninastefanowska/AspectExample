package aspectapp.main;

public class Main2 {

	public static void main(String[] args) throws Exception {
		ExampleClass2 object = new ExampleClass2();
		object.notNullMethod("World", new ExampleArg());
		//object.notNullMethod("World", null);
		
		LoggedClass1 logged1 = new LoggedClass1();
		LoggedClass2 logged2 = new LoggedClass2();
		
		logged1.method1("argument");
		logged1.method2(new ExampleArg(), "hello", 7);
		logged1.method3(5);
		
		float val = logged2.method1(4.5f);
		
		object.field2 = null;
		object.field1 = null;
	}

}
