using Plots
#t(x) = 1-exp(-5*x)
u(x) = min(x,0.3)
N= 5
D= 3
E(x,y,N,D) = (sin(x*pi)/(x*pi))^2 * (exp(-(5*y)^2)) * ((sin(N*D*x*pi))/(sin(D*x*pi)))^2
#E(x,y,N,D) = (exp(-(3*y)^2)) * ((sin(N*D*x*pi))/(sin(D*x*pi)))^2
#F(x,y,N,D) = 25*(sin(x*pi)/(x*pi))^2 * (exp(-(3*y)^2))
y = range(-5,stop=5, length=1000)
x = range(-2,stop=2, length=1000)
#plot(x,x->u(E(x,0,N,D)))
#plot!(x,x->u(F(x,0,N,D)))
heatmap(x,y,(x,y)->u(E(x,y,N,D)), aspect_ratio=1, xlims=[-2,2], ylims=[-1,1], axis=false, 
color=cgrad([:white, :red2]), grid=false, legend=false, xticks=false, yticks=false)
#surface(x,y,(x,y)->E(x,y), zlims=(0,20), alpha=1, c=:haline, linewidth=0.0, camera=[35, 31])
savefig("../slike/05_Fraunhofer_sim_N5D3.png")