using Plots
using SpecialFunctions
#t(x) = 1-exp(-5*x)
u(x) = min(x,0.003)
r(x,y,a) = sqrt((x-a)^2+y^2)
F(r) = (besselj1(r)/r)^2
E(x,y) = F(r(x,y,0))^2+F(r(x,y,1))^2
y = range(-10,stop=10, length=1000)
x = range(-10,stop=10, length=1000)
#plot(x,x->F(x))
#plot!(x,x->u(F(x,0,N,D)))
heatmap(x,y,(x,y)->E(x,y), aspect_ratio=1, xlims=[-5,10], ylims=[-5,5], axis=false, 
color=cgrad([:white, :red2, :red1]), grid=false, legend=false, xticks=false, yticks=false)
#heatmap(x,y,(x,y)->u(E(x,y)), aspect_ratio=1, xlims=[-25,25], ylims=[-25,25], axis=false, 
#color=cgrad([:white, :red2, :red1]), grid=false, legend=false, xticks=false, yticks=false)
#surface(x,y,(x,y)->E(x,y), zlims=(0,20), alpha=1, c=:haline, linewidth=0.0, camera=[35, 31])
savefig("../slike/05_res_3.png")