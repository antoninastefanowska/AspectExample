package aspectapp.main;

import aspectapp.annotations.PublicsLogger;

@PublicsLogger
public class LoggedClass2 {

	public float method1(float value) {
		System.out.println("LoggedClass2: method1()");
		return value;
	}
}
