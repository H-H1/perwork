#!/bin/bash

# Test script for Docker Compose setup
echo "Testing Docker Compose setup for Uni-App project..."

# Check if docker-compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "Error: docker-compose is not installed"
    exit 1
fi

# Check Docker daemon
if ! docker info &> /dev/null; then
    echo "Error: Docker daemon is not running"
    exit 1
fi

echo "1. Building services..."
docker-compose build --no-cache frontend backend

echo "2. Starting services in detached mode..."
docker-compose up -d

echo "3. Waiting for services to start..."
sleep 10

echo "4. Checking service status..."
docker-compose ps

echo "5. Testing frontend health check..."
if curl -s http://localhost:8080/health | grep -q "healthy"; then
    echo "✓ Frontend health check passed"
else
    echo "✗ Frontend health check failed"
fi

echo "6. Testing backend health check..."
if curl -s http://localhost:5000/health | grep -q "healthy"; then
    echo "✓ Backend health check passed"
else
    echo "✗ Backend health check failed"
fi

echo "7. Testing API proxy..."
if curl -s http://localhost:8080/api/health | grep -q "healthy"; then
    echo "✓ API proxy test passed"
else
    echo "✗ API proxy test failed"
fi

echo "8. Viewing logs..."
docker-compose logs --tail=10

echo ""
echo "Test completed!"
echo "Frontend: http://localhost:8080"
echo "Backend:  http://localhost:5000"
echo "API:      http://localhost:8080/api/"
echo ""
echo "To stop services: docker-compose down"
echo "To view logs:     docker-compose logs -f"