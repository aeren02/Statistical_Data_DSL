

// We must drop empty income rows so mathematical plotting works!
Constrain  {
    Income (float) dropna
    Age (int) keep
}

Visualise  on Age vs Income using trendLine
