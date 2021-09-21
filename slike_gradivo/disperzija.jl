using Plots

E(x, t, ω, k, δω, δk) = cos(k*x+ω*t)cos(δk*x+δω*t)
k = 1
ω = 1
fazna = 5
δk = 0.05
δω = δk/fazna
f(x, t) = E(x, t, ω, k, δω, δk)

tt = LinRange(0, 4*fazna*pi, 6)

x_n(t) = 21pi - t
xx_n(t) = 30pi - t/fazna

p = plot(x-> f(x, 0), 0, 50pi, legend = false, color = :green)

t = 0
scatter!([x_n(t), xx_n(t)], [f(x_n(t),0), f(xx_n(t), 0)], color = [:blue, :red])
for i in 2:6
    t = tt[i]
    offset = (i-1)*2
    plot!(p, x-> f(x, t) - offset, 0, 50pi, color = :green)
    scatter!([x_n(t), xx_n(t)],
        [f(x_n(t), t) - offset, f(xx_n(t), t) - offset], color = [:blue, :red])
end
savefig("disperzija.svg")
p