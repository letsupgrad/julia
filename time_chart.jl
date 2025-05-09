using Pkg
Pkg.activate(".")  # Ensure we're in the correct environment

# Required packages
using Plots
using Dates

# Generate synthetic time data
dates = Date(2023, 1, 1):Day(1):Date(2023, 1, 30)
values = rand(30) .* 100

# Plot the time series
plot(dates, values,
     xlabel="Date",
     ylabel="Value",
     title="Time Series Chart",
     seriestype=:line,
     lw=2,
     legend=false,
     fmt=:png)

# Save plot
savefig("time_series_chart.png")
println("Chart saved as 'time_series_chart.png'")

