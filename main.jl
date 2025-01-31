# Define file paths
input_filename <- "input.txt"
output_filename <- "output.txt"

input_file = open(input_filename, "r")
input_value = parse(Int, readline(input_file))
close(input_file)

modified_value = input_value * 2

output_file = open(output_filename, "w")
println(output_file, modified_value)
close(output_file)
