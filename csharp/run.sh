#!/bin/bash
set -e

echo "Restoring dependencies..."
dotnet restore

echo "Building..."
dotnet build --configuration Release

echo "Running..."
dotnet run --no-build
