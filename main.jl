# Import necessary libraries
using Plots  # For plotting
using DataFrames  # For structured data

# Create a DataFrame with multiple columns
data = DataFrame(
    x = 1:10,
    y = 2 .* (1:10),
    z = rand(10),
    w = 5 .+ (1:10)
)

# Print some output text
println("This is a simple table with multiple columns")
println("-----------------------------------")
println("Data in table format:\n")
println(data)  # Print the DataFrame

# Additional output text before plotting
println("\nNext, let's plot a relationship:")

# Create the plot of x vs. y
p = plot(data.x, data.y, label="y = 2x", xlabel="x", ylabel="y", title="x vs y")

# Save the plot as a PNG file
savefig(p, "x_vs_y_plot.png")
println("\nPlot saved as 'x_vs_y_plot.png'.")

# Display the plot in the notebook (or REPL)
display(p)

# Show a plot comparing all columns (just as an example)
println("\nLet's also compare all the columns\n")

# Create the plot comparing all columns
p2 = plot(data.x, [data.y data.z data.w], label=["y" "z" "w"], title="Multiple Columns Comparison")

# Save the second plot as a PNG file
savefig(p2, "multiple_columns.png")

data = DataFrame(
    x = 1:10,
    y = 3 .* (1:10),
    z = rand(10),
    w = 6 .+ (1:10)
)

println(data)
