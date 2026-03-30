#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: [Your Name] | Course: Open Source Software

echo "=================================="
echo "  Open Source Manifesto Generator"
echo "=================================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# --- Hardcoded answers for demonstration ---
TOOL="Python"
FREEDOM="Empowerment"
BUILD="Free Learning App"

# --- Display questions with answers ---
echo "1. Name one open-source tool you use every day: $TOOL"
echo "2. In one word, what does freedom mean to you? $FREEDOM"
echo "3. Name one thing you would build and share freely: $BUILD"

# --- Get date and output filename ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Clear file if already exists ---
> $OUTPUT

# --- Write manifesto to file ---
echo "=================================="  >> $OUTPUT
echo "   MY OPEN SOURCE MANIFESTO"        >> $OUTPUT
echo "   Date: $DATE"                      >> $OUTPUT
echo "=================================="  >> $OUTPUT
echo ""                                    >> $OUTPUT
echo "I believe in the power of open source software." >> $OUTPUT
echo "Every day I use $TOOL — a tool built freely by a global community of developers who chose to share their work with the world." >> $OUTPUT
echo ""                                    >> $OUTPUT
echo "To me, freedom means $FREEDOM." >> $OUTPUT
echo "This is exactly what open source represents — the freedom to use, study, modify, and share software without restriction." >> $OUTPUT
echo ""                                    >> $OUTPUT
echo "I am inspired by developers like Guido van Rossum who built Python and shared it freely during a Christmas holiday in 1989." >> $OUTPUT
echo "Following that spirit, I would build $BUILD and share it freely with everyone who needs it." >> $OUTPUT
echo ""                                    >> $OUTPUT
echo "Open source is not just a license. It is a philosophy." >> $OUTPUT
echo "It is a belief that knowledge belongs to everyone and that we all stand on the shoulders of giants who came before us." >> $OUTPUT
echo ""                                    >> $OUTPUT
echo "   — $(whoami) | $DATE"             >> $OUTPUT
echo "=================================="  >> $OUTPUT

# --- Confirm and display manifesto ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT

