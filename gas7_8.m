axis([0,60,1,7000])

x = linspace(0,60,200);

G = 74.7*x + 1325.85;
H = 1053*x - 42208.5;
E = 277*x - 7676.5;

h = animatedline;

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
    addpoints(g,x(k),H(k));
    drawnow
end



e = animatedline;
e.Color = 'Green';
e.LineWidth = 4;


for k = 1:length(x)
    addpoints(e,x(k),E(k));
    drawnow
end

