# Empty .jl file
using Plots

# Sample data for the plots
x = 1:10
y = rand(10)
z = rand(10, 10)  # For contour plot, a 2D array

# Create the first plot (Line plot)
p1 = plot(x, y, label="Line plot", title="Line Plot", xlabel="X Axis", ylabel="Y Axis")
#savefig(p1, "line_plot.png")

# Create the second plot (Bar plot)
p2 = bar(x, y, label="Bar plot", title="Bar Plot", xlabel="X Axis", ylabel="Y Axis")
#savefig(p2, "bar_plot.png")

# Create the third plot (Contour plot)
p3 = contourf(x, x, z, title="Contour Plot", xlabel="X Axis", ylabel="Y Axis")
#savefig(p3, "contour_plot.png")

using PDFmerger: append_pdf!

   savefig(p3, "temp.pdf")
   append_pdf!("allplots.pdf", "temp.pdf", cleanup=true)
   savefig(p2, "temp.pdf")
   append_pdf!("allplots.pdf", "temp.pdf", cleanup=true)
   savefig(p1, "temp.pdf")

    append_pdf!("allplots.pdf", "temp.pdf", cleanup=true)
