package aspectapp.main;

import aspectapp.model.ExampleModel;
import aspectapp.services.ExampleService;

public class Main1 {

	public static void main(String[] args) {
		ExampleClass1 exampleClass = new ExampleClass1();
		float ret1 = exampleClass.floatMethod1();
		float ret2 = exampleClass.floatMethod2();
		exampleClass.stringParameterMethod1("Hello");
		exampleClass.stringParameterMethod2("Hello", "World");
		
		ExampleService exampleService = new ExampleService();
		exampleService.serviceMethod1();
		exampleService.serviceMethod2();
		
		ExampleModel exampleModel = new ExampleModel();
		exampleModel.setFields();
		
		BaseType baseRet = exampleClass.baseTypeMethod();
		InheritedType inheritedRet = exampleClass.inheritedTypeMethod();
		
		System.out.println("Ostatnie wywo³anie: " + String.valueOf(exampleClass.getLastExecutionTime()));
		System.out.println("Ostatnie wywo³anie: " + String.valueOf(exampleService.getLastExecutionTime()));
	}
}
