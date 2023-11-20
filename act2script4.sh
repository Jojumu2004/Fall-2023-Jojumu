#!/bin/bash

generate_report() {
    # Get the current date and time
    local current_date=$(date)

    # Get CPU usage percentage using top command
    local cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')

    # Get memory usage percentage using free command
    local memory_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0"%"}')

    # Get disk usage percentage using df command
    local disk_usage=$(df -h | grep '^/dev' | awk '{ if ($5 > max) max=$5} END {print max}')

    # Print the report
    echo "Report generated on: $current_date"
    echo "--------------------------------"
    echo "CPU Usage: $cpu_usage"
    echo "Memory Usage: $memory_usage"
    echo "Disk Usage: $disk_usage"
    echo "--------------------------------"
    echo "End of report"
}

# Call the generate_report function
generate_report

