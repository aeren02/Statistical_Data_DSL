Load "python_sources/data.csv" as raw_data

// We must drop empty income rows so mathematical plotting works!
Constrain raw_data as clean_data {
    Income (float) dropna
    Age (int) keep
}

Visualise clean_data on Age vs Income using trendLine
