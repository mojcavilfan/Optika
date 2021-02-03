using Plots
function E(a,n,x,z)
    if z>0
        return (2*cos(n*sin(a)*x)*exp(-sqrt(n^2*sin(a)*sin(a)-1)*z))^2
    else
        return (cos(n*sin(a)*x+n*cos(a)*z)+cos(n*sin(a)*x-n*cos(a)*z-0.27))^2
    end
end
x=range(0,stop=20, length=100)
z = range(-15, stop = 15, length=100)
heatmap(x,z,(x,z)->E(0.74,1.5,x,z), c=:haline, aspect_ratio=1)
#surface(z,x,(z,x)->E(0.74,1.5,x,z), zlims=(0,20), alpha=1, c=:haline, linewidth=0.0, camera=[35, 31])
#savefig("04_sim_evsc_hm.png")