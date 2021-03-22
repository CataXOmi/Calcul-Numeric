function b=funb2(fcn,x)
    % fcn - variabila handle a unei functii
	% ce calculeaza o expresie f(x)
    b=sin(feval(fcn,x));
end

