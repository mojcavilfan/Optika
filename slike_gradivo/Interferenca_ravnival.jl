using Plots
using QuadGK
#pyplot()
slon(x) = 1/(1+(x/(4pi))^16)
y = range(-8pi,stop=8pi, length=1000)
x = range(-6*pi,stop=6*pi, length=1000)
#u(x,y) = if(-4pi -x*sqrt(3)<y<4pi -x*sqrt(3)) 1 else 0 end
v(x, y) = if(-4pi + x*sqrt(3)<y<4pi + x*sqrt(3)) 1 else 0 end
u(x, y) = slon(sqrt(3)x-y)
v(x, y) = slon(sqrt(3)x+y)
E(x,y) = (cos(x+sqrt(3)*y))
F(x,y) = cos(-x+sqrt(3)*y)

heatmap(y,x,(y,x)-> u(x, y)*E(x,y) + v(x, y)F(x, y), c=:vik, aspect_ratio=1, legend=false, axis=false, grid=false, ticks=false)
#surface(x,y,(x,y)->E(x,y), zlims=(-10,10), alpha=1, c=:haline, linewidth=0.0, camera=[35, 31])
savefig("06_interferenca.png")