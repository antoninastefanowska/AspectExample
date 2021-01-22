package aspectapp.aspects;

public aspect LastExecutionAspect {
	declare parents: aspectapp.*.Example* implements ILastExecutionPrinter;
	private long ILastExecutionPrinter.time;
	
	public long ILastExecutionPrinter.getLastExecutionTime() {
		return time;
	}
	
	Object around(ILastExecutionPrinter lastExecutionPrinter): execution(* *.*.Example*.*(..)) && this(lastExecutionPrinter) {
		long time1 = System.currentTimeMillis();
		Object returnValue = proceed(lastExecutionPrinter);
		long time2 = System.currentTimeMillis();
		lastExecutionPrinter.time = time2 - time1;
		return returnValue;
	}
}

interface ILastExecutionPrinter {}
