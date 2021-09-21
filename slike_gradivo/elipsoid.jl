using Plots
pyplot()
function elipsoid(a, b, c; points = 40)
    ϕ = range(0, 2pi, length = points)
    θ = range(-pi, pi, length = points)
    x = a*sin.(ϕ)*cos.(θ)' 
    y = b*cos.(ϕ)*cos.(θ)'
    z = c*ones(size(ϕ))*sin.(θ)'
    return x, y, z
end

function plot_elipsoid(a, b, c; points=40)
    x, y, z = elipsoid(a, b, c, points=points)
    surface(x, y, z, xlims=[-c, c], ylims=[-c, c])
    wireframe!(x, y, z, xlims=[-c, c], ylims=[-c, c])
end

plot_elipsoid(3, 4, 5, points = 20)