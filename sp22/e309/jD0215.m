%john - 02/15/2022
%lecture

format compact, format short

% 
% t = [.1 .2 .3 .4 .5]
% x = [1 .8 4.5 9.6 3]
% figure
% subplot(2,1,1),plot(t,x)
% subplot(2,1,2),stem(t,x)
% subplot(2,1,3),stairs(t,x)

% x(t) = sin(2 * pi * f(t) * t)
% where f(t) = 250 + 240 * sin (2 * pi * t)

% fs = 1e3; ts = 1/fs;
% t = 0:ts:2;
% f = 250+240*sin(2*pi*t);
% x = sin(2*pi*f.*t)
% strips(x, .25, fs)

% t=linspace(0,1,101);
% sqw = square(2*pi*4*t, 75) % 75 
% % duty cycle, 4 cycles/sec)
% plot(t,sqw),title('periodic functions: sq waves')
% grid
% axis([0 1 -1.2 1.2])

% 
% t = linspace(0,1,101);
% saw1 = sawtooth(2*pi*3*t) % peak at the end of the cycle
% saw2=sawtooth(2*pi*3*t, 1/2)
% subplot(2,1,1),plot(t,saw1),title('saw 1')
% subplot(2,1,2),plot(t,saw2),title('saw 2')
% ~ this sign is a tilda
% a = [1 2 3]
% b = repmat(a,2,3)
% 
% x1 = ones(1,5) % one row , by 5 columns
% x2 = zeros(1,8) % number of row, by 8 columns
% %N= 5
% x = [x1 x2]
% xr = repmat(x,1,N) % ONE row by N column, get 1x5 tiling above pattern
% n = 0:length(xr)-1;
% stem(n,xr)

% x = [1 -1 0 3 4 5; -2 3 -4 4 6 0]
% [r c] = find(x<0)
% 
% grades = [ 65 50 84 105 74; 45 108 150 20 80] % change grades values > 100 to 100
% [r, c] =find(grades>100)
% grades(r, c) = 100

% x(t) = sin(2 pi 130 t) 0 < t < 1;sin(2 pi 220 t) 1 < t < 2;sin(2 pi 330 t) 2 < t < 3
fs = 8192; % signal / 8k hz > we're going to reduce the frequency too much samples in an image
ts = 1/fs;
t = 0 : ts : 3; % 0 to 3 s
sw1 = (t<1); sw2 = (t>=1)&(t<2); sw3=(t>=2)% sw1 - lf to sw3 - hf 
[sw1', sw2', sw3']
x=sw1.*sin(2*pi*20*t) + sw2.*sin(2*pi*35*t) + sw3.*sin(2*pi*50*t);
plot(t,x)
