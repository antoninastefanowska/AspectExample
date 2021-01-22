package aspectapp.aspects;

import java.util.logging.ConsoleHandler;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.aspectj.lang.reflect.CodeSignature;

import aspectapp.annotations.PublicsLogger;

public aspect LoggerAspect pertypewithin(@PublicsLogger *.*.*) {
	private Logger logger;
	
	pointcut classInitialization(): staticinitialization(*);
	pointcut publicMethods(): execution(public * *(..));
	
	after() returning: classInitialization() {
		String className = thisJoinPointStaticPart.getSignature().getDeclaringTypeName();
		logger = Logger.getLogger(className);
		ConsoleHandler handler = new ConsoleHandler();
		handler.setLevel(Level.ALL);
		logger.addHandler(handler);
		logger.setLevel(Level.ALL);
		logger.setUseParentHandlers(false);
	}
	
	Object around(): publicMethods() {		
		CodeSignature signature = (CodeSignature)thisJoinPointStaticPart.getSignature();
		String methodName = signature.getName();
		String methodType = signature.getDeclaringType().getName();
		
		Object[] argValues = thisJoinPoint.getArgs();
		String[] argNames = signature.getParameterNames();
		Class[] argTypes = signature.getParameterTypes();
		
		StringBuilder sb = new StringBuilder();
		sb.append("wywo³ano metodê: ");
		sb.append(methodName);
		sb.append(" typu: ");
		sb.append(methodType);
		sb.append(" z parametrami:\n" );
		
		for (int i = 0; i < argValues.length; i++) {
			sb.append(String.valueOf(i + 1));
			sb.append(") nazwa: ");
			sb.append(argNames[i]);
			sb.append(" typ: ");
			sb.append(argTypes[i].getName());
			sb.append(" wartoœæ: ");
			sb.append(argValues[i].toString());
			sb.append("\n");
		}
		
		try {
			return proceed();
		} catch (Exception e) {
			sb.append("metoda zakoñczy³a siê wyrzuceniem wyj¹tku: " + e.getMessage() + "\n");
			return null;
		} finally {
			logger.finest(sb.toString());
		}
	}
}
