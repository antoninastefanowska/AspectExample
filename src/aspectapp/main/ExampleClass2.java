package aspectapp.main;

import aspectapp.annotations.NotNull;
import aspectapp.annotations.NotNullArgs;

public class ExampleClass2 {
	@NotNull
	public String field1;
	
	public String field2;
	
	@NotNullArgs
	public void notNullMethod(String name, ExampleArg nextArg) {
		System.out.println("Hello " + name);
	}
}
