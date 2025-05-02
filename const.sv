Write a constraint in 10 bit array , only 4 bits are 1 , no two ones should together
class const;
Rand bit a[];

Constraint c1 { constraint a.size == 10;}
Constraint c2 {  foreach(a[I])
		If(I>0) {
		!(a[I] && a[I-1]);
}
}

Constraint c3 {foreach(a[I]) a.sum () == 4;}
endclass

module test;
initial begin
	const c = new();
	assert(c.randomize());
	end
	endmodule
