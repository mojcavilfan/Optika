using Plots
using SpecialFunctions
using QuadGK
using FresnelIntegrals

x = range(-8,stop=8, length=1000)
#plot(x, x->real(fresnelc(x)), ylims=[-1, 1],legend=false) 
plot(x, x->real(fresnels(x)), ylims=[-1, 1],legend=false) 

savefig("../slike/05_FresS.svg")