package aspectapp.aspects;

import aspectapp.annotations.Immutable;

public aspect ImmutableAspect {
	pointcut settingImmutable(): execution(* (@Immutable *).set*(..));
	
	declare error: settingImmutable(): "Modyfikowanie typów oznaczonych jako Immutable jest zabronione.";
}
