using Plots
function E(a,n,x,z)
    b=asin(n*sin(a))
    if z>0
        return (2*n*cos(a)*cos(sin(b)*x+cos(b)*z)/(n*cos(a)+cos(b)))^2
    else
        return (cos(n*sin(a)*x+n*cos(a)*z)+((n*cos(a)-sqrt(1-n^2*sin(a)*sin(a)))/(n*cos(a)+sqrt(1-n^2*sin(a)*sin(a))))*cos(n*sin(a)*x-n*cos(a)*z))^2
    end
end
x=range(0,stop=20, length=500)
z = range(-15, stop = 15, length=500)
heatmap(x,z,(x,z)->E(0.6,1.5,x,z), c=:haline, aspect_ratio=1)
#surface(z,x,(z,x)->E(0.6,1.5,x,z), zlims=(0,20), alpha=1, c=:haline, linewidth=0.001, camera=[35, 31])
savefig("04_sim_lom_hm.png")
