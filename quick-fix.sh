#!/bin/bash

echo "🔧 Fixing Git remote configuration..."

# Remove old remote
git remote remove origin

# Add new remote with HTTPS
git remote add origin https://github.com/ahmed86-star/netops-journal.git

echo "✅ Remote changed to HTTPS"
echo ""
echo "📝 Next steps:"
echo "1. Create repository on GitHub: https://github.com/new"
echo "   - Repository name: netops-journal"
echo "   - Keep it Public"
echo "   - Do NOT initialize with any files"
echo ""
echo "2. Then run: git push -u origin main"
echo ""
echo "You'll be prompted for your GitHub username and Personal Access Token"
echo "Create token at: https://github.com/settings/tokens"

