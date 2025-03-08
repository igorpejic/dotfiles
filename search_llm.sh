#!/usr/bin/env bash

# Prompt user for input via Rofi
QUERY=$(rofi -dmenu -p "Search: " -lines 0)

# If the user provided input, execute your custom terminal command
if [ -n "$QUERY" ]; then
    urxvt -name FloatingTerm -e bash -c "llm '$QUERY'; read -p 'Press enter to exit'"
fi

