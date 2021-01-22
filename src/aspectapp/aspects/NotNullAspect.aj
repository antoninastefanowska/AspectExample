package aspectapp.aspects;

import org.aspectj.lang.reflect.CodeSignature;

import aspectapp.annotations.NotNullArgs;
import aspectapp.annotations.NotNull;

public aspect NotNullAspect {
	pointcut annotatedMethod(): call(@NotNullArgs * *(..));
	pointcut annotatedFieldSetter(): set(@NotNull * *);
	
	before(): annotatedMethod() {
		Object[] args = thisJoinPoint.getArgs();
		for (int i = 0; i < args.length; i++) {
			Object arg = args[i];
			if (arg == null) {
				CodeSignature signature = (CodeSignature)thisJoinPoint.getSignature();
				String argName = signature.getParameterNames()[i];
				String argType = signature.getParameterTypes()[i].getName();
				throw new IllegalArgumentException("Wartoœæ parametru " + argName + " typu " + argType + " nie mo¿e byæ null!");
			}
		}
	}
	
	before(): annotatedFieldSetter() {
		Object arg = thisJoinPoint.getArgs()[0];
		if (arg == null)
			throw new NullPointerException();
	}
}
