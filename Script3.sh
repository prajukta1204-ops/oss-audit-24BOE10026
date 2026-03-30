#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: [Your Name] | Course: Open Source Software

# --- List of directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# --- Display header ---
echo "=================================="
echo "   Directory Audit Report"
echo "=================================="

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner and group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# --- Check Python config directory ---
echo ""
echo "=================================="
echo "   Python Directory Check"
echo "=================================="

PYTHON_DIR="/usr/lib/python3"

# Check if python directory exists
if [ -d "/usr/lib/python3" ]; then
    echo "Python Directory Found!"
    echo "Permissions: $(ls -ld /usr/lib/python3 | awk '{print $1, $3, $4}')"
    echo "Size       : $(du -sh /usr/lib/python3 2>/dev/null | cut -f1)"
else
    # Check alternative python directory
    echo "Checking alternative Python path..."
    PY_PATH=$(python3 -c "import sys; print(sys.prefix)")
    echo "Python Path: $PY_PATH"
    echo "Permissions: $(ls -ld $PY_PATH | awk '{print $1, $3, $4}')"
fi

echo ""
echo "=================================="
echo "   Audit Complete"
echo "=================================="

