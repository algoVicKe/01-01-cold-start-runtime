#!/bin/bash
set -e

echo "Building Go..."
go build -o app

echo "Running Go..."
./app
