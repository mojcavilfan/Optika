using Plots
using SpecialFunctions
using QuadGK
F(x,y,u,v) = cos(7*(x^2+y^2+(x-u)^2+(y-v)^2))
G(x,y,u) = quadgk(v->F(x,y,u,v),-1,1, order=30, rtol=1e-3, atol=1e-5)[1]
E(x,y) = (quadgk(u->G(x,y,u),-1,1, order=30, rtol=1e-3, atol=1e-5)[1])^2

u(x) = min(x,0.003)
r(x,y,a) = sqrt((x-a)^2+y^2)


y = range(-1.5,stop=1.5, length=100)
x = range(-1.5,stop=1.5, length=100)
#plot(x,x->F(x))
#plot!(x,x->u(F(x,0,N,D)))
heatmap(x,y,(x,y)->E(x,y), aspect_ratio=1, xlims=[-1.5,1.5], ylims=[-1.5,1.5], axis=false, 
color=cgrad([:white, :red2, :red1]), grid=true, legend=false, xticks=true, yticks=false)
#heatmap(x,y,(x,y)->u(E(x,y)), aspect_ratio=1, xlims=[-25,25], ylims=[-25,25], axis=false, 

#savefig("../slike/05_res_3.png")