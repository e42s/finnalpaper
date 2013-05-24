function [e]=six(dx,dt,t)
    m=1/dx;
    n=t/dt;
    u1=zeros(1,m+1);
    x=[1:m-1]*dx;
    u1([2:m])= sin(pi*x)+x.*(1-x);
    r=dt/dx/dx;r2=2+2*r;r3=2-2*r;
    for i=1:m-1
	a(i,i)=r2;if i>1
	a(i-1,i)=-r;
	a(i,i-1)=-r;
    end
    end
    for i=1:m-1
	b(i,i)=r3;
	if i>1
	    b(i-1,i)=r;
	    b(i,i-1)=r;
	end
    end
    ut=[0 0.125,0.220,0.280,0.320,0.34,0.320,0.280,0.220,0.125,0];
    x1=[0,x,1];
    plot(x1,ut,'*')
    hold
    x1=[0:0.01:1];
    u_xt = exp (-pi*pi*t)*sin (pi*x1) + x1.*(1 - x1);
    plot (x1, u_xt, ' r')
    e=u_xt-ut;