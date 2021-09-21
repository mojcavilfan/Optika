using Plots
using SpecialFunctions
using QuadGK
r(x, y) = sqrt(x^2 + y^2)
F(r, ϕ, ξ, η) = r*cos(10*(r^2 + (r*cos(ϕ)-ξ)^2 + (r*sin(ϕ)-η)^2))
G(r,ξ, η) = quadgk(ϕ-> F(r,ϕ, ξ, η), 0, 2pi, order=30, rtol=1e-3, atol=1e-5)[1]
E(ξ, η) = (quadgk(r->G(r,ξ, η),0,0.5, order=30, rtol=1e-3, atol=1e-5)[1])^2

u(x) = min(x,0.003)
y = range(-2.5,stop=2.5, length=500)
x = range(-2.5,stop=2.5, length=500)
#plot(x,x->F(x))
#plot!(x,x->u(F(x,0,N,D)))
heatmap(x,y,(x,y)->E(x,y), aspect_ratio=1, xlims=[-2.5,2.5], ylims=[-2.5,2.5], axis=false, 
color=cgrad([:white, :red1]), grid=true, legend=false, xticks=true, yticks=false)
#heatmap(x,y,(x,y)->u(E(x,y)), aspect_ratio=1, xlims=[-25,25], ylims=[-25,25], axis=false, 

#savefig("../slike/05_Fresnel_circ_1.png")