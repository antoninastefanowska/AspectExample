package aspectapp.main;

import aspectapp.annotations.PublicsLogger;

@PublicsLogger
public class LoggedClass1 {
	
	public void method1(String arg) {
		System.out.println("LoggedClass1: method1()");
	}
	
	public void method2(ExampleArg arg1, String arg2, int arg3) {
		System.out.println("LoggedClass1: method2()");
	}
	
	public void method3(int value) throws Exception {
		System.out.println("LoggedClass1: method3()");
		throw new Exception("przyk³adowy wyj¹tek");
	}
}
