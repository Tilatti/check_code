@voidfunc@
function FN;
position voidpos;
@@

void FN@voidpos(...) {
	...
}

@func disable ret exists@
type T;
expression E;
function FN;
position pos != voidfunc.voidpos;
@@
T FN@pos(...) {
	... when != return E;
}

@script:python@
p << func.pos;
@@

cocci.print_main("ERROR: This function has a return value type in prototype, but a path without return.", p)