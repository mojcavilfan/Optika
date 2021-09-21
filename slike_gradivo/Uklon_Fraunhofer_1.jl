using Plots
#t(x) = 1-exp(-5*x)
u(x) = min(x,0.03)
E(x,y) = (sin(2*x*pi)/(2*x*pi))^2 * (exp(-(3*y)^2))
y = range(-1,stop=1, length=1000)
x = range(-20,stop=20, length=1000)
#plot(x,x->u(E(x,0)))
heatmap(x,y,(x,y)->u(E(x,y)), aspect_ratio=1, xlims=[-20,20], ylims=[-1,1], axis=false, 
color=cgrad([:white, :red2]), grid=false, legend=false, xticks=false, yticks=false)
#surface(x,y,(x,y)->E(x,y), zlims=(0,20), alpha=1, c=:haline, linewidth=0.0, camera=[35, 31])
savefig("../slike/05_Fraunhofer_sim_1d.png")