function lm = fcn(x)
			% declara variabila globala comp
			global comp
			lm = x(1) * comp(1, 1) + x(2) * comp(2, 2) ;
end