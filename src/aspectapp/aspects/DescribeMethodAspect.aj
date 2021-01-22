package aspectapp.aspects;

import aspectapp.main.BaseType;
import aspectapp.main.InheritedType;

public aspect DescribeMethodAspect {
	pointcut floatType(): call(float *(..));
	pointcut stringParameter(): call(* aspectapp.*.*.*(String));
	pointcut twoParameters(): call(* *(*,*));
	pointcut publicService(): call(public * *.services.*Service.*(..));
	pointcut modelSetter(): call(!public * *.model.*.set*(..));
	pointcut deprecated(): call(@Deprecated * *(..));
	pointcut baseType(): call(BaseType *(..)) && !call(InheritedType *(..));
	
	before(): floatType() {
		System.out.println("metoda zwracaj¹ca liczbê typu float");
	}
	
	before(): stringParameter() {
		System.out.println("metoda z parametrem typu String");
	}
	
	before(): twoParameters() {
		System.out.println("metoda z dwoma parametrami");
	}
	
	before(): publicService() {
		System.out.println("publiczny serwis");
	}
	
	before(): modelSetter() {
		System.out.println("niepubliczny setter pakietu model");
	}
	
	before(): deprecated() {
		System.out.println("przestarza³a metoda");
		
	}
	
	before(): baseType() {
		System.out.println("metoda typu BaseType, bez typu InheritedType");
	}
}
