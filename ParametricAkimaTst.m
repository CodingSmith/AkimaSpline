% Test problem for Akima interpolation
% Ref. : Hiroshi Akima, Journal of the ACM, Vol. 17, No. 4, October 1970,
%        pages 589-602.
%

close all
clear
clc

x=[0, 1, 3, 2, 4];
y=[0.1, 0.7, 0.6, 1.1, 0.9];

xi = [1.25 1.3 1.4 1.5, 2.5, 3.5, 4.5];


t_temp = 0;
t=[];
t = [t t_temp];
for i=1:size(x,2)-1
t_temp = t_temp + sqrt((x(i+1)-x(i))^2 + (y(i+1)-y(i))^2);
t = [t, t_temp];
end

t = t./(max(t));


ti = linspace(0,1,20);


xf_akima=akima(t,x,ti);
yf_akima=akima(t,y,ti);

xf_spline=spline(t,x,ti);
yf_spline=spline(t,y,ti);

plot(x,y,'o',xf_akima,yf_akima, 'r', xf_spline,yf_spline, 'b'); title('Abscissa set 1')
legend('CtrlPts', 'akima', 'spline');

