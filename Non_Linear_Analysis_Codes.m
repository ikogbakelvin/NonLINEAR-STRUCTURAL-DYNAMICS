%
%2019 December 10th
%Examples from Anil Chopra
%Coded by Ikogba Kelvin Obokparo
%
clear all
% 
% method='AA';
% y=1/2;
% b=1/4;
% m=1;
% z=0.0434;
% dt=0.02;
% w=(2*pi)./T;
% k= (w^2)*m
% 
% ug=xlsread('HW9-JMA-Kobe-NS.xlsx','C2:C2002');
% ug=ug.';
% N=2000;
% 
% 
% c=2*z*w*m;
% a1=(m/(b*dt^2))+(y*c)/(b*dt);
% a2=m/(b*dt)+(y/b-1)*c;
% a3=(1/(2*b)-1)*m+dt*(y/(2*b)-1)*c;
% kk=a1+k;
% 
% u=zeros(1,N);
% v=zeros(1,N);
% a=zeros(1,N);
% p=zeros(1,N+1);
% a(1)=-ug(1);
% t=zeros(1,N+1);
% 
% 
% for n=1:1:N
%     t(n+1)=dt*(n-1);
%     p(n+1)=-m*ug(n+1)+a1*u(n)+a2*v(n)+a3*a(n);
%     u(n+1)=p(n+1)/kk;
%     v(n+1)=(y/(b*dt))*(u(n+1)-u(n))-(y/b-1)*v(n)-dt*(y/(2*b)-1)*a(n);
%     a(n+1)=(1/(b*dt^2))*(u(n+1)-u(n))-(v(n)/(b*dt))-(1/(2*b)-1)*a(n);
% end
% 
% 
% t=t.';
% u=u.';
% v=v.';
% a=a.';
% 
% filename='hw_9';
% x=[t,u,v,a];
% str={'time','disp','vel','acc'};
% x_c=num2cell(x);
% data=[str;x_c];
% xlswrite([filename,'.xlsx'],data,method);
% 
%%

%#####################################################################################################################
% CENTRAL DIFFERENCE METHOD
m = 30000; %(N)
k = 2000 ;%(N/m)
Wn = sqrt (k/m);
T = (0:0.01:12); 
zeta = 0.02 ; %Damping ratio
c = 2*zeta*Wn*m; % Damping factor
Ug = xlsread ('ElCentro1940.xlsx',1, 'F2:F14630');
dt = 0.01;
U(-1)= U(0)- dt;
Kcap = (m/(dt)^2) + c/(2*dt);
a = (m/(dt)^2) - c/(2*dt);
b = k - 2*m/(dt)^2;


%iterations 
u = zeros(1:N);
v = zeros(1:N);
a = zeros(1:N);
p = zeros(1:N+1);


for i = 1:1:length (T);
Pcapp = Ug(i) - a*u(i+1) - b*u(i);
u (i+1) = Pcapp


end








