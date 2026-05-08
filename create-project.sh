#!/bin/bash

set -e

PROJECT_NAME=$1

if [ -z "$PROJECT_NAME" ]; then
  echo "Usage: ./create-project.sh project-name"
  exit 1
fi

TEMPLATE_DIR="$HOME/se-lab-template"
PROJECTS_DIR="$HOME/se-lab-projects"
TARGET_DIR="$PROJECTS_DIR/$PROJECT_NAME"

echo ""
echo "======================================"
echo "Creating project: $PROJECT_NAME"
echo "======================================"
echo ""

# Prevent overwrite
if [ -d "$TARGET_DIR" ]; then
  echo "[ERROR] Project already exists:"
  echo "$TARGET_DIR"
  exit 1
fi

mkdir -p "$PROJECTS_DIR"

echo "[INFO] Copying template..."

rsync -av \
  --exclude='.git' \
  --exclude='node_modules' \
  --exclude='01-*' \
  "$TEMPLATE_DIR/" \
  "$TARGET_DIR/"

cd "$TARGET_DIR"

echo "[INFO] Initializing git repository..."

git init

echo "[INFO] Installing Node tooling dependencies..."

npm install

echo "[INFO] Installing git hooks..."

mkdir -p .git/hooks

if [ -f scripts/commit-msg.sh ]; then
  cp scripts/commit-msg.sh .git/hooks/commit-msg
  chmod +x .git/hooks/commit-msg
else
  echo "[WARN] commit-msg hook missing"
fi

echo "[INFO] Creating initial commit..."

git add .
git commit -m "chore: initialize project template"

echo "[INFO] Creating GitHub repository..."

gh repo create "$PROJECT_NAME" \
  --public \
  --source=. \
  --remote=origin \
  --push

echo ""
echo "======================================"
echo "[SUCCESS] Project created successfully"
echo "======================================"
echo ""

echo "Location:"
echo "$TARGET_DIR"
