#!/bin/bash

# Cursor Agents Setup Script
# This script initializes the git submodule containing shared Cursor agents

set -e  # Exit on error

echo "🚀 Cursor Agents Setup"
echo "===================="
echo ""

# Check if .cursor-agents directory exists
if [ -d ".cursor-agents/agents" ] && [ "$(ls -A .cursor-agents/agents 2>/dev/null)" ]; then
    echo "✅ Cursor Agents are already installed!"
    echo ""
    echo "Available agents:"
    echo "  - @draft-page (Draft Page Generator)"
    echo "  - @fix-grammar (Grammar Fixer)"
    echo ""
    echo "Nothing to do! 🎉"
    exit 0
fi

echo "📦 Installing Cursor Agents..."
echo ""

# Test git access (silently)
echo "→ Testing git access..."

SSH_WORKS=false
HTTPS_WORKS=false

# Test SSH
if git ls-remote git@git.corp.adobe.com:AdobeDocs/CursorAgents.git >/dev/null 2>&1; then
    SSH_WORKS=true
fi

# Test HTTPS
if git ls-remote https://git.corp.adobe.com/AdobeDocs/CursorAgents.git >/dev/null 2>&1; then
    HTTPS_WORKS=true
fi

# Determine which URL to use
if [ "$SSH_WORKS" = true ]; then
    REPO_URL="git@git.corp.adobe.com:AdobeDocs/CursorAgents.git"
    echo "✅ Access verified (SSH)!"
elif [ "$HTTPS_WORKS" = true ]; then
    REPO_URL="https://git.corp.adobe.com/AdobeDocs/CursorAgents.git"
    echo "✅ Access verified (HTTPS)!"
else
    echo ""
    echo "❌ Git Access Not Configured"
    echo ""
    echo "I couldn't access git.corp.adobe.com with your current setup."
    echo ""
    
    # Run diagnostics
    echo "🔍 Running diagnostics..."
    echo ""
    
    echo "Git version:"
    git --version 2>&1 || echo "  ❌ Git not found"
    echo ""
    
    echo "Git user:"
    if [ -n "$(git config --global user.name)" ]; then
        echo "  ✅ $(git config --global user.name) <$(git config --global user.email)>"
    else
        echo "  ⚠️  Not configured (run: git config --global user.name 'Your Name')"
    fi
    echo ""
    
    echo "Network connectivity:"
    if ping -c 1 git.corp.adobe.com >/dev/null 2>&1; then
        echo "  ✅ Can reach git.corp.adobe.com"
    else
        echo "  ❌ Cannot reach git.corp.adobe.com (VPN connected?)"
    fi
    echo ""
    
    echo "SSH test:"
    SSH_ERROR=$(ssh -T git@git.corp.adobe.com 2>&1)
    if echo "$SSH_ERROR" | grep -q "successfully authenticated"; then
        echo "  ✅ SSH works"
    else
        echo "  ❌ SSH failed:"
        echo "     $SSH_ERROR" | head -1
    fi
    echo ""
    
    echo "HTTPS test:"
    HTTPS_ERROR=$(git ls-remote https://git.corp.adobe.com/AdobeDocs/CursorAgents.git 2>&1 | head -1)
    if [ $? -eq 0 ]; then
        echo "  ✅ HTTPS works"
    else
        echo "  ❌ HTTPS failed:"
        echo "     $HTTPS_ERROR"
    fi
    echo ""
    
    echo "Quick fixes:"
    echo ""
    echo "  SSH Host key verification failed? Add host key:"
    echo "    ssh-keyscan git.corp.adobe.com >> ~/.ssh/known_hosts"
    echo ""
    echo "  SSH Permission denied? Use HTTPS instead:"
    echo "    git config --global url.\"https://git.corp.adobe.com/\".insteadOf git@git.corp.adobe.com:"
    echo ""
    echo "  HTTPS authentication? Set up credential helper:"
    echo "    git config --global credential.helper osxkeychain  # macOS"
    echo "    git config --global credential.helper wincred      # Windows"
    echo ""
    echo "  Still stuck?"
    echo "    1. Make sure you're on Adobe VPN"
    echo "    2. Verify access: https://git.corp.adobe.com/AdobeDocs/CursorAgents"
    echo "    3. Ask your team lead for help"
    echo ""
    echo "After fixing, run this script again:"
    echo "  ./setup-agents.sh"
    echo ""
    exit 1
fi

# Check if submodule is configured
if ! git config --file .gitmodules --get-regexp path | grep -q ".cursor-agents" 2>/dev/null; then
    echo "→ Adding submodule..."
    if ! git submodule add "$REPO_URL" .cursor-agents 2>&1; then
        INSTALL_ERROR=$?
        echo ""
        echo "❌ Failed to add submodule"
        echo ""
        echo "💡 Possible fixes:"
        echo ""
        echo "  Submodule already exists (from failed install)?"
        echo "    git submodule deinit -f .cursor-agents"
        echo "    rm -rf .cursor-agents .git/modules/.cursor-agents"
        echo "    ./setup-agents.sh"
        echo ""
        echo "  Permission issues?"
        echo "    Check that you have write access to this repository"
        echo ""
        exit $INSTALL_ERROR
    fi
fi

# Initialize submodule
echo "→ Initializing git submodule..."
if ! git submodule init 2>&1; then
    echo "❌ Failed to initialize submodule"
    exit 1
fi

# Update submodule to latest
echo "→ Fetching latest agents..."
if ! git submodule update --remote --recursive 2>&1; then
    echo ""
    echo "❌ Failed to fetch agents"
    echo ""
    echo "💡 Try manually:"
    echo "  cd .cursor-agents"
    echo "  git pull origin main"
    echo "  cd .."
    echo ""
    exit 1
fi

# Verify installation
if [ -d ".cursor-agents/agents" ] && [ "$(ls -A .cursor-agents/agents 2>/dev/null)" ]; then
    echo ""
    echo "✅ Installation Complete!"
    echo ""
    echo "Installed agents:"
    echo "  - 📄 Draft Page Generator (@draft-page)"
    echo "  - 🎯 Fix Grammar (@fix-grammar)"
    echo ""
    echo "You can now use agents in Cursor. Try typing:"
    echo "  @draft-page"
    echo ""
    echo "Happy documenting! ✨"
else
    echo ""
    echo "❌ Installation Failed"
    echo ""
    echo "The agents directory was not created properly."
    echo "Please check:"
    echo "  1. Your network connection"
    echo "  2. VPN is connected"
    echo "  3. Git access to https://git.corp.adobe.com/AdobeDocs/CursorAgents"
    echo ""
    echo "Try running manually:"
    echo "  git submodule update --init --recursive"
    echo ""
    exit 1
fi

