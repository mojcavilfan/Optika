# Kako pozenes program:
# - odpres terminal
# $ cd slike_gradivo
# $ julia
# julia> import Pkg; Pkg.activate(".")
# julia> include("Interferenca_kroynival.jl")
using Plots
using QuadGK
#pyplot()

y = range(-15pi,stop=15pi, length=1000)
x = range(-15*pi,stop=15*pi, length=1000)

d=9

E(x,y) = cos(0.7*sqrt((x-d)^2+y^2))
F(x,y) = cos(0.7*sqrt((x+d)^2+y^2))

heatmap(x,y,(x,y)-> (E(x,y) + F(x,y))^1, c=:vik, aspect_ratio=1, legend=false, axis=false)
#surface(x,y,(x,y)->E(x,y), zlims=(-10,10), alpha=1, c=:haline, linewidth=0.0, camera=[35, 31])
savefig("06_interferenca_kroglambdanov.png")