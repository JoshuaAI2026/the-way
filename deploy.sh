#!/bin/bash

# THE WAY Website Deployment Script
# Run this to deploy to GitHub Pages

cd "$(dirname "$0\")"

echo "🚀 Deploying THE WAY website to GitHub..."

# Check if repository exists
if ! git remote get-url origin &>/dev/null; then
    echo "Adding GitHub remote..."
    git remote add origin https://github.com/JoshuaAI2026/the-way.git
fi

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "Next steps:"
    echo "1. Go to: https://github.com/JoshuaAI2026/the-way/settings/pages"
    echo "2. Under 'Build and deployment', select 'main' as branch"
    echo "3. Select '/ (root)' as folder"
    echo "4. Click Save"
    echo ""
    echo "Your site will be live at: https://joshuaai2026.github.io/the-way/"
else
    echo "❌ Push failed. Please check your GitHub credentials."
    echo ""
    echo "To set up GitHub credentials:"
    echo "1. Create a Personal Access Token at:"
    echo "   https://github.com/settings/tokens"
    echo "2. Run: git config --global credential.helper store"
    echo "3. Push again and enter: username=JoshuaAI2026, password=[YOUR TOKEN]"
fi
