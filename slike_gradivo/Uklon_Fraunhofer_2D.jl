using Plots
#t(x) = 1-exp(-5*x)
u(x) = min(x,0.005)
E(x,y) = (sin(x*pi)/(x*pi))^2 * (sin(2*y*pi)/(2*y*pi))^2
y = range(-5,stop=5, length=1000)
x = range(-10,stop=10, length=1000)
#plot(x,x->u(E(x,0)))
heatmap(x,y,(x,y)->u(E(x,y)), aspect_ratio=1, xlims=[-10,10], ylims=[-5,5], axis=false, 
color=cgrad([:white, :red2]), grid=false, legend=false, xticks=false, yticks=false)
#surface(x,y,(x,y)->E(x,y), zlims=(0,20), alpha=1, c=:haline, linewidth=0.0, camera=[35, 31])
savefig("../slike/05_Fraunhofer_sim_2d.png")