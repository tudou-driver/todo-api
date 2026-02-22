#!/bin/bash
# Todo API - Startup Script

echo "🚀 Starting Todo API Backend..."

cd /opt/todo-api

# Install dependencies if not exists
if [ ! -d "__pycache__" ]; then
  echo "📦 Installing dependencies..."
  pip install -r requirements.txt
fi

# Start server
echo "✅ Starting FastAPI server on port 8000..."
python -m uvicorn main:app --host 0.0.0.0 --port 8000 --reload
