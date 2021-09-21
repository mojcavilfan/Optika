using Plots
using SpecialFunctions
using QuadGK

d=0.75
F(x,u) = cos(1*x^2+6*(x-u)^2)
E(u) = (quadgk(x->F(x,u),-d/2,d/2)[1])^2

#u(x) = min(x,0.003)

R = 4
x = range(-R,stop=R, length=1000)
plot(x,x->E(x))

#plot(x->F(x,1.5), -d/2, d/2)

#heatmap(x,y,(x,y)->E(x), aspect_ratio=1, xlims=[-3,3], ylims=[-1,1], axis=false, 
#color=cgrad([:white, :red1]), grid=true, legend=false, xticks=true, yticks=false)
#heatmap(x,y,(x,y)->u(E(x,y)), aspect_ratio=1, xlims=[-25,25], ylims=[-25,25], axis=false, 

#savefig("../slike/05_reza_075.svg")