using Pkg
Pkg.activate(".")

using CSV
using DataFrames
using Plots
using StatsBase
using Dates

# Sample data
dates = Date(2023, 1, 1):Day(1):Date(2023, 1, 30)
values = rand(30) .* 100
df = DataFrame(Date = dates, Value = values)

# Plot
plot(df.Date, df.Value,
     xlabel="Date",
     ylabel="Value",
     title="Sample Time Series",
     lw=2,
     seriestype=:line)

savefig("time_series_chart.png")
println("Chart saved as 'time_series_chart.png'")