#!/bin/bash
echo "🚀 Starting Task Manager Web Interface..."
echo "📱 Open your browser and go to: http://localhost:5000"
echo "🌐 Accessible from any device on your network"
echo ""
cd "$(dirname "$0")"
python web_gui.py
