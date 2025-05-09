using Plots
using Dates

# Create time series data
dates = Date(2024, 1, 1):Day(1):Date(2024, 1, 10)
values = rand(10)  # random values for plotting

# Plot time chart
plot(dates, values, label="Random Data", xlabel="Date", ylabel="Value", title="Time Chart")
savefig("time_chart.png")  # save the plot as an image
