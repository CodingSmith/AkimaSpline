% Test problem for Akima interpolation
% Ref. : Hiroshi Akima, Journal of the ACM, Vol. 17, No. 4, October 1970,
%        pages 589-602.
%

close all
clear
clc

x=0:10;
y=[10 10 10 10 10 10 10.5 15 50 60 85];

% a=[-0.277426 -4.42651
% -0.107208 -4.47212
% 0.0663371 -4.50272
% 0.241889 -4.51808
% 0.418111 -4.51808
% 0.593663 -4.50272
% 0.767208 -4.47212
% 0.937426 -4.42651
% 1.07228 -4.07923
% 1.10302 -4.36624
% 1.21721 -4.04039
% 1.35822 -3.98907
% 1.49421 -3.92566
% 1.62415 -3.85063
% 1.74707 -3.76457
% 1.86201 -3.66812
% 1.96812 -3.56202
% 2.06457 -3.44707
% 2.89926 -3.63406
% 3.02536 -3.45398
% 3.13528 -3.26359
% 3.22818 -3.06434
% 3.30337 -2.85776
% 3.36027 -2.64541
% 3.39844 -2.42891
% 3.4176 -1.99006];
% 
% x = a(:,1);
% y = a(:,2);

xi=linspace(x(1),x(size(x,2)),51);
yf_akima=akima(x,y,xi);
yf_spline=spline(x,y,xi); 
subplot(2,2,1); plot(x,y,'o',xi,yf_akima, 'r', xi,yf_spline, 'b'); title('Abscissa set 1')
legend('CtrlPts', 'akima', 'spline');

x=[0 1 3 4 6 7 9 10 12 13 15];
xi=linspace(0,15,51);
yf_akima=akima(x,y,xi);
yf_spline=spline(x,y,xi); 
subplot(2,2,2); plot(x,y,'o',xi,yf_akima, 'r', xi,yf_spline, 'b'); title('Abscissa set 1')
legend('CtrlPts', 'akima', 'spline');

x=[0 2 3 5 6 8 9 11 12 14 15];
xi=linspace(0,15,51);
yf_akima=akima(x,y,xi);
yf_spline=spline(x,y,xi); 
subplot(2,2,3); plot(x,y,'o',xi,yf_akima, 'r', xi,yf_spline, 'b'); title('Abscissa set 1')
legend('CtrlPts', 'akima', 'spline');
