x=linspace(-2,2);
y=linspace(-1,1);
[xx,yy] = meshgrid(x,y);
zz = xx.*exp(-xx.^2-yy.^2);
figure; contour(xx,yy,zz, 'ShowText','on')
%%

f = @(x,y) x.^5+y.^3-3*x-3*y;
figure; fmesh(f,[-2,2])
figure;fcontour(f,[-2,2], 'LevelList', linspace (-10,10,15))
%%

xx=linspace(-2,2,11); yy=xx;
[X,Y]=meshgrid(xx,yy);
%%

dX=5*X.^4-3;
dY=3*Y.^2-3;

quiver(X,Y,dX,dY)
%%

Z=f(X,Y);
[dX,dY]=gradient(Z);

quiver(X,Y,dX,dY)


