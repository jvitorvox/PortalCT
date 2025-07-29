#!/bin/bash
# Build script for Portal CT .NET project

echo "Building Portal Casa & Terra..."

# Navigate to the Web project directory
cd src/PortalCT.Web

# Restore NuGet packages
echo "Restoring NuGet packages..."
dotnet restore

# Build the project
echo "Building the project..."
dotnet build --configuration Release

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build completed successfully!"
else
    echo "❌ Build failed!"
    exit 1
fi