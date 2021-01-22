package aspectapp.aspects;

public aspect ExecutionTimeAspect {
	pointcut executionTime(): execution(public * *.main.*.*(..)) && !execution(* get*(..)) && !execution(* set*(..));
	
	Object around(): executionTime() {
		long time1 = System.currentTimeMillis();
		Object returnValue = proceed();
		long time2 = System.currentTimeMillis();
		System.out.println("Czas wykonania: " + String.valueOf(time2 - time1));
		return returnValue;
	}
}