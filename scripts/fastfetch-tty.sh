#!/bin/bash
if command -v fastfetch >/dev/null 2>&1; then
    fastfetch --pipe
elif command -v neofetch >/dev/null 2>&1; then
    neofetch --stdout
else
    # Basic fallback using standard tools
    echo "$(uname -sr)"
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime -p)"
    echo ""
fi
