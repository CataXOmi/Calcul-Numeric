function [y,z] = Hermite(X,Y,Z,x)
    n=length(X)-1;
    Her=0;
    Herp=0;
    for k=1:n+1
          a=1;
          L=1;
          Lpk=0;
          Lp=0;
          for j=1:n+1
              prod=1;
              if j~=k
                  a=a*(X(k)-X(j));
                  L=L*((x-X(j))/(X(k)-X(j)));
                  Lpk=Lpk+(1/(X(k)-X(j)));  
                  for i=1:n+1 
                      if i~=j && i~=k
                          prod=prod*(x-X(i));
                      end
                  end
                  Lp=Lp+prod;
              end
          end
          Lp=Lp/a;
          H=(L*L)*(1-2*Lpk*(x-X(k)));
          K=(L*L)*(x-X(k));
          Her=Her+H*Y(k)+K*Z(k);
          Hp=2*L*Lp*(1-2*Lpk*(x-X(k)))+(L*L)*(-2*Lpk);
          Kp=2*L*Lp*(x-X(k))+L*L;
          Herp=Herp+Hp*Y(k)+Kp*Z(k);
    end
    y=Her;
    z=Herp;
end


