using Plots
using SpecialFunctions
using QuadGK
using FresnelIntegrals

x = range(-5,stop=10, length=1000)
F(d) = (real(fresnelc(d))+0.5)^2+(real(fresnels(d))+0.5)^2 
y = range(-1,stop=1, length=1000)
#plot(x, x->F(x), xlims=[-5,10])

heatmap(x,y,(x,y)->F(x), aspect_ratio=1, xlims=[-5,10], ylims=[-1,1], axis=false, 
color=cgrad([:white, :red1]), grid=true, legend=false, xticks=true, yticks=false)

savefig("../slike/05_FresRobH.svg")