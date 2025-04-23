#!/bin/bash

# Configuration
APP_URL="http://localhost:5000"
LOG_FILE="/var/log/app-health.log"

# Function to log health check result
log_result() {
    local status=$1
    local timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "$timestamp | $status" >> "$LOG_FILE"
}

# Check if the application is responding
if curl -sf "$APP_URL" > /dev/null; then
    log_result "OK"
    exit 0
else
    log_result "FAIL"
    exit 1
fi 