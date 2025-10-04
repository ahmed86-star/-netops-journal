#!/bin/bash

echo "🚀 Setting up GitHub repository for NetOps Journal"
echo ""

# Install GitHub CLI
echo "📦 Installing GitHub CLI..."
sudo apt update
sudo apt install -y gh

echo ""
echo "🔐 Now let's authenticate with GitHub..."
echo "When prompted, choose:"
echo "  1. Login with a web browser (recommended)"
echo "  2. Choose 'HTTPS' for preferred protocol"
echo "  3. Authenticate Git with your GitHub credentials: Yes"
echo ""
read -p "Press Enter to continue..."

gh auth login

echo ""
echo "📁 Creating GitHub repository..."
gh repo create netops-journal --public --description "NetOps Journal - Where networking meets automation" --source=. --remote=origin --push

echo ""
echo "✅ Done! Your repository is created and pushed to GitHub!"
echo "🌐 View it at: https://github.com/ahmed86-star/netops-journal"

