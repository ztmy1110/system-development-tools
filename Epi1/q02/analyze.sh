#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <csv_file>" >&2
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: file '$1' does not exist" >&2
    exit 1
fi

echo "Top 2 HTTP 5xx paths:"

awk -F, '
NR > 1 && $4 >= 500 && $4 < 600 {
    count[$3]++
}
END {
    for (path in count) {
        print path, count[path]
    }
}
' "$1" |
sort -k2,2nr -k1,1 |
head -2

echo "Average latency_ms:"

awk -F, '
NR > 1 {
    sum += $5
    count++
}
END {
    printf "%.2f\n", sum / count
}
' "$1"
