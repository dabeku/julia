# Import necessary libraries
using Plots
using DataFrames

# Generate sample data: x values from 1 to 10, and y = 2 * x
x = 1:10  # x values from 1 to 10
y = 2 .* x  # y = 2 * x (element-wise multiplication)

# Create a DataFrame to display the data in two columns
data = DataFrame(x = x, y = y)

# Display the data in the console (two columns)
println("Displaying data (x and y):")
println(data)

# Create a plot of the data
plot(x, y, label="y = 2x", xlabel="x", ylabel="y", title="Plot of y = 2x", linewidth=2)

# Show the plot
display(plot(x, y, label="y = 2x", xlabel="x", ylabel="y", title="Plot of y = 2x", linewidth=2))
