include("function.jl")
println(greet("Julia"))

using Plots

# Create a simple plot: y = x^2
x = 1:10
y = x .^ 2

# Create the plot
plot(x, y, label="y = x^2", title="Simple Plot", xlabel="x", ylabel="y")

# Save the plot as a PDF
savefig("plot.pdf")

# Save the plot as a PNG
savefig("plot.png")
