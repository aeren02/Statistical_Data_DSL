import csv

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt


teammate_data = []
with open("python_sources/data.csv", newline="") as f:
    reader = csv.DictReader(f)
    for row in reader:
        teammate_data.append(row)

# visualise teammate_data on Employment_status using pieChart
if teammate_data:
    _counts = {}
    for _row in teammate_data:
        _val = _row.get('Employment_status', 'Unknown')
        _counts[_val] = _counts.get(_val, 0) + 1
    
    _labels = list(_counts.keys())
    _sizes = list(_counts.values())
    
    plt.figure(figsize=(8, 8))
    plt.pie(_sizes, labels=_labels, autopct='%1.1f%%', startangle=140)
    plt.title('Pie Chart of Employment_status in teammate_data', fontsize=16, pad=20)
    plt.axis('equal')
    plt.tight_layout()
    plt.savefig('teammate_data_Employment_status_pie.png', dpi=150)
    plt.close()
    print('Pie chart saved to teammate_data_Employment_status_pie.png')
else:
    print('No data to display for teammate_data.')
