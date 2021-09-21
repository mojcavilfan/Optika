using Plots

E(x, t, ω, k, δω, δk) = cos(k*x+ω*t)cos(δk*x+δω*t)
k = 1
ω = 1
fazna = 5
δk = 0.05
δω = δk/fazna
f(x, t) = E(x-10pi, t, ω, k, δω, δk)

tt = LinRange(0, 4*fazna*pi, 12)

x_n(t) = 45pi - t
xx_n(t) = 40pi - t/fazna

p = plot(x-> f(x, 0), 10pi, 58pi, legend = false,
 color = :green, grid = false, axis = false,
 ticks = false)

t = 0
scatter!([x_n(t), xx_n(t)], [f(x_n(t),0), f(xx_n(t), 0)], color = [:blue, :red])
for i in 2:length(tt)
    t = tt[i]
    offset = (i-1)*2
    plot!(p, x-> f(x, t) - offset, 10pi, 58pi, color = :green)
    scatter!([x_n(t), xx_n(t)],
        [f(x_n(t), t) - offset, f(xx_n(t), t) - offset], color = [:blue, :red])
end
savefig("disperyija_2.svg")
p