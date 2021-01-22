package aspectapp.main;

public class ExampleClass1 {
	public float floatMethod1() {
		System.out.println("floatMethod1()");
		return 1.11f;
	}
	
	public float floatMethod2() {
		System.out.println("floatMethod2()");
		return 2.22f;
	}
	
	public void stringParameterMethod1(String input) {
		System.out.println("stringParameterMethod1() " + input);
	}
	
	public void stringParameterMethod2(String input1, String input2) {
		System.out.println("stringParameterMethod2() " + input1 + " " + input2);
	}
	
	public BaseType baseTypeMethod() {
		System.out.println("baseTypeMethod()");
		return new BaseType();
	}
	
	public InheritedType inheritedTypeMethod() {
		System.out.println("inheritedTypeMethod()");
		return new InheritedType();
	}
}
