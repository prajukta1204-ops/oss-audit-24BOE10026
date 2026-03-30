#!/bin/bash
# Script 4: Log File Analyzer
# Author: [Your Name] | Course: Open Source Software

# --- Command line arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}     # Default keyword is 'error'
COUNT=0

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    echo "Creating sample log file for demonstration..."

    # Create a sample log file for testing
    cat > sample.log << 'EOF'
INFO: System started successfully
INFO: Python interpreter loaded
ERROR: Module not found exception
WARNING: Memory usage is high
ERROR: Connection timeout occurred
INFO: Retrying connection
ERROR: Failed to connect to database
WARNING: Disk space running low
INFO: Backup completed successfully
ERROR: Authentication failed
EOF
    LOGFILE="sample.log"
    echo "Sample log file created: sample.log"
    echo ""
fi

# --- Read file line by line and count keyword ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print summary ---
echo "=================================="
echo "   Log File Analyzer Report"
echo "=================================="
echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"
echo "Count   : $KEYWORD found $COUNT times"
echo "----------------------------------"

# --- Print last 5 matching lines ---
echo "Last 5 matching lines:"
echo "----------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "=================================="
echo "   Analysis Complete"
echo "=================================="

