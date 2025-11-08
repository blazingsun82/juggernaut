#!/bin/bash

# Quick Fix Script - Run this to prepare debug deployment
echo "🔧 **JUGGERNAUT DEBUG DEPLOYMENT SETUP**"
echo ""

# Backup current build
if [ -f "build.sh" ]; then
    echo "Backing up current build.sh to build.sh.backup..."
    cp build.sh build.sh.backup
fi

# Replace with debug build
echo "Setting up debug build script..."
cp build-debug.sh build.sh

echo ""
echo "✅ **SETUP COMPLETE!**"
echo ""
echo "📋 **INSTRUCTIONS:**"
echo "1. Go to your Cloudflare Pages dashboard"
echo "2. Find your 'midas-19p' project"
echo "3. Go to Settings > Build & output settings"
echo "4. Make sure Build command is: bash build.sh"
echo "5. Make sure Output directory is: dist"
echo "6. Click 'Save and Deploy'"
echo ""
echo "🎯 **This will deploy with comprehensive debugging to track down:""
echo "   - Why your site works then stops after a few minutes"
echo "   - Why you get 'invalid API' errors"
echo "   - All network and JavaScript errors"
echo ""
echo "📊 **Once deployed, visit your site and test the debug buttons!**"
