function b = funb3(fcn, x)
			% fcn - variabila handle a unei functii
			% ce calculeaza o expresie f(x)
			z = feval(fcn, x);
			b = sin(z);
end
