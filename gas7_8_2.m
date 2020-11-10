axis([0,60,1,6000])

x = linspace(20,44.5,100);
d = linspace(42,44.5,100);
r = linspace(44.5,60,100);
a = linspace(30, 36.2,100);

G = 74.7*x + 1325.85;
H = 1053*d - 42208.5;
E = 277*r - 7676.5;
F = 292*a - 10511;
h = animatedline;


x1 = 42;
y1 = 1053*x1 - 42208.5;

x2 = 36.2;
y2 = 292*36.2 - 10511;

x3 = 40;
y3 = 672.5*x3 - 25800;

xx = [x1,x3, x2];
yy = [y1,y3, y2];

xx2 = linspace(x1,x2,100);

vq2 = interp1(xx,yy,xx2,'spline');



h.Color = 'red';
h.LineWidth = 4;
set(gcf, 'Position',  [300, 300, 600, 600])

for k = 1:length(x)
    addpoints(h,x(k),G(k));
    drawnow
end


g = animatedline;
g.Color = 'blue';
g.LineWidth = 4;

for k = 1:length(x)
    addpoints(g,d(k),H(k));
    drawnow
end



e = animatedline;
e.Color = 'Green';
e.LineWidth = 4;


for k = 1:length(x)
    addpoints(e,r(k),E(k));
    drawnow
end


u = animatedline;
u.Color = 'black';
u.LineWidth = 4;


for k = 1:length(a)
    addpoints(u,a(k),F(k));
    drawnow
end

i = animatedline;
i.Color = 'magenta';
i.LineWidth = 4;


for k = 1:length(xx2)
    addpoints(i,xx2(k), vq2(k));
    drawnow
end

%plot(xx2,vq2, ':.');                       

