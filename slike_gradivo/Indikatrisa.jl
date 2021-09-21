using Plots
function E(a,b,x,y)
    E = sqrt(1 - x^2/a - y^2/b) 
end
x=range(0,stop=20, length=10)
z = range(-15, stop = 15, length=10)
surface(x,y,(x,y)->E(1,2,x,y))
#heatmap(x,z,(x,z)->E(0.74,1.5,x,z), c=:haline, aspect_ratio=1)
#surface(z,x,(z,x)->E(0.74,1.5,x,z), zlims=(0,20), alpha=1, c=:haline, linewidth=0.0, camera=[35, 31])
#savefig("04_sim_evsc_hm.png")
