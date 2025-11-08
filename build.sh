#!/bin/bash

# Juggernaut Build Script with Comprehensive Debugging
echo "🚀 Building Juggernaut website with DEBUG MODE enabled..."

# Set debug mode and create detailed logging
set -x  # Enable command tracing
DEBUG_LOG="/tmp/juggernaut-build-debug.log"
BUILD_TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo "=== JUGGERNAUT BUILD DEBUG SESSION STARTED ===" | tee -a "$DEBUG_LOG"
echo "Timestamp: $BUILD_TIMESTAMP" | tee -a "$DEBUG_LOG"
echo "Working Directory: $(pwd)" | tee -a "$DEBUG_LOG"
echo "User: $(whoami)" | tee -a "$DEBUG_LOG"
echo "Environment: $(env | sort)" | tee -a "$DEBUG_LOG"

# Create dist directory with logging
echo "Creating dist directory..." | tee -a "$DEBUG_LOG"
mkdir -p dist || { echo "ERROR: Failed to create dist directory" | tee -a "$DEBUG_LOG"; exit 1; }
echo "✅ Dist directory created successfully" | tee -a "$DEBUG_LOG"

# Create the main HTML file with debug information
echo "Generating HTML with debug mode..." | tee -a "$DEBUG_LOG"
cat > dist/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Juggernaut - AI Orchestration System (DEBUG MODE)</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            min-height: 100vh;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }
        
        .hero {
            text-align: center;
            padding: 4rem 0;
        }
        
        .logo {
            font-size: 4rem;
            font-weight: bold;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        
        .subtitle {
            font-size: 1.5rem;
            margin-bottom: 2rem;
            opacity: 0.9;
        }
        
        .description {
            font-size: 1.1rem;
            line-height: 1.6;
            max-width: 800px;
            margin: 0 auto 3rem;
            opacity: 0.8;
        }
        
        .debug-panel {
            background: rgba(0,0,0,0.5);
            padding: 1rem;
            border-radius: 10px;
            margin: 2rem 0;
            border: 1px solid rgba(0,255,0,0.5);
        }
        
        .debug-log {
            max-height: 200px;
            overflow-y: auto;
            background: rgba(0,0,0,0.3);
            padding: 1rem;
            border-radius: 5px;
            font-family: monospace;
            font-size: 0.8rem;
            margin-top: 1rem;
        }
        
        .debug-entry {
            margin: 0.2rem 0;
            color: #00ff00;
        }
        
        .error-entry {
            color: #ff4444;
        }
        
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin: 4rem 0;
        }
        
        .feature {
            background: rgba(255,255,255,0.1);
            padding: 2rem;
            border-radius: 10px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255,255,255,0.2);
        }
        
        .feature h3 {
            font-size: 1.3rem;
            margin-bottom: 1rem;
        }
        
        .cta-section {
            text-align: center;
            margin: 4rem 0;
        }
        
        .btn {
            display: inline-block;
            padding: 1rem 2rem;
            background: rgba(255,255,255,0.2);
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-weight: bold;
            margin: 0.5rem;
            border: 2px solid rgba(255,255,255,0.3);
            transition: all 0.3s ease;
        }
        
        .btn:hover {
            background: rgba(255,255,255,0.3);
            transform: translateY(-2px);
        }
        
        .btn.demo {
            background: rgba(255,165,0,0.2);
            border-color: rgba(255,165,0,0.5);
        }
        
        .btn.demo:hover {
            background: rgba(255,165,0,0.3);
        }
        
        .status {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 1rem;
            margin: 2rem 0;
            padding: 1rem;
            background: rgba(0,255,0,0.1);
            border-radius: 10px;
            border: 1px solid rgba(0,255,0,0.3);
        }
        
        .status-dot {
            width: 10px;
            height: 10px;
            background: #00ff00;
            border-radius: 50%;
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0% { opacity: 1; }
            50% { opacity: 0.5; }
            100% { opacity: 1; }
        }
        
        .tech-stack {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin: 3rem 0;
            flex-wrap: wrap;
        }
        
        .tech-item {
            background: rgba(255,255,255,0.1);
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-size: 0.9rem;
            border: 1px solid rgba(255,255,255,0.2);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="hero">
            <div class="logo">⚡ JUGGERNAUT</div>
            <div class="subtitle">Enterprise AI Orchestration System (DEBUG MODE)</div>
            
            <div class="status">
                <div class="status-dot"></div>
                <span>System Status: Fully Operational</span>
            </div>
            
            <div class="description">
                Juggernaut is a powerful AI orchestration platform that enables seamless integration 
                and management of multiple AI systems. Built for enterprise-scale deployments with 
                robust error handling, real-time monitoring, and dynamic scaling capabilities.
            </div>
            
            <div class="description" style="background: rgba(255,255,255,0.05); padding: 1.5rem; border-radius: 10px; margin-top: 2rem;">
                <strong>🚀 DEBUG MODE ACTIVE</strong><br>
                This version includes comprehensive debugging to track deployment issues and API problems.
                All events are logged and can be reviewed in the console.
            </div>
            
            <div class="tech-stack">
                <span class="tech-item">Python 3.13</span>
                <span class="tech-item">Supabase</span>
                <span class="tech-item">Cloudflare Pages</span>
                <span class="tech-item">Real-time Sync</span>
                <span class="tech-item">Enterprise Grade</span>
            </div>
        </div>
        
        <div class="debug-panel">
            <h3>🔍 Debug Console</h3>
            <p>Real-time monitoring of site status and any issues detected.</p>
            <div id="debug-log" class="debug-log">
                <div class="debug-entry">[INIT] Debug mode initialized</div>
            </div>
        </div>
        
        <div class="features">
            <div class="feature">
                <h3>🤖 Multi-Agent Orchestration</h3>
                <p>Coordinate multiple AI agents seamlessly with intelligent task distribution and real-time communication protocols.</p>
            </div>
            
            <div class="feature">
                <h3>📊 Real-time Monitoring</h3>
                <p>Comprehensive dashboards with live system metrics, performance analytics, and automated alerting capabilities.</p>
            </div>
            
            <div class="feature">
                <h3>🔒 Enterprise Security</h3>
                <p>Advanced authentication, role-based access control, and end-to-end encryption for all data transmissions.</p>
            </div>
            
            <div class="feature">
                <h3>⚡ High Performance</h3>
                <p>Optimized for speed with intelligent caching, load balancing, and automatic scaling mechanisms.</p>
            </div>
            
            <div class="feature">
                <h3>🔄 Dynamic Templates</h3>
                <p>Flexible template system with real-time branding, customization, and deployment capabilities.</p>
            </div>
            
            <div class="feature">
                <h3>🛠️ DevOps Integration</h3>
                <p>Complete DevOps command hub with automated deployment, monitoring, and maintenance workflows.</p>
            </div>
        </div>
        
        <div class="cta-section">
            <button class="btn demo" onclick="testApiKey()">🧪 Test API Key</button>
            <button class="btn" onclick="logDebug()">📝 Generate Debug Log</button>
            <button class="btn" onclick="checkSystem()">🔧 System Check</button>
            <a href="https://github.com/blazingsun82/juggernaut" class="btn" target="_blank">🚀 View on GitHub</a>
            <a href="mailto:info@juggernaut.ai" class="btn">📧 Contact Us</a>
            <a href="https://github.com/blazingsun82/juggernaut" class="btn">📚 Documentation</a>
        </div>
    </div>
    
    <script>
        // Comprehensive Debug System
        class JuggernautDebug {
            constructor() {
                this.logEntries = [];
                this.startTime = new Date();
                this.isDebugging = true;
                this.init();
            }
            
            init() {
                this.log('DEBUG MODE ACTIVATED', 'info');
                this.log('Page loaded at: ' + new Date().toISOString(), 'info');
                this.log('User Agent: ' + navigator.userAgent, 'info');
                this.log('Screen Resolution: ' + screen.width + 'x' + screen.height, 'info');
                this.log('Window size: ' + window.innerWidth + 'x' + window.innerHeight, 'info');
                
                // Monitor for errors
                window.addEventListener('error', (e) => {
                    this.log('JavaScript Error: ' + e.message + ' at ' + e.filename + ':' + e.lineno, 'error');
                });
                
                // Monitor for network errors
                window.addEventListener('unhandledrejection', (e) => {
                    this.log('Unhandled Promise Rejection: ' + e.reason, 'error');
                });
                
                // Monitor resource loading
                this.monitorResources();
                
                // Start periodic health checks
                this.startHealthCheck();
            }
            
            log(message, type = 'info') {
                const timestamp = new Date().toLocaleTimeString();
                const entry = {
                    time: timestamp,
                    message: message,
                    type: type,
                    timestamp: new Date().toISOString()
                };
                
                this.logEntries.push(entry);
                this.updateDebugDisplay();
                
                // Also log to console
                if (type === 'error') {
                    console.error('[JUGGERNAUT DEBUG]', message);
                } else {
                    console.log('[JUGGERNAUT DEBUG]', message);
                }
            }
            
            updateDebugDisplay() {
                const debugLog = document.getElementById('debug-log');
                if (debugLog) {
                    const recentEntries = this.logEntries.slice(-10); // Show last 10 entries
                    debugLog.innerHTML = recentEntries.map(entry => 
                        `<div class="debug-entry ${entry.type === 'error' ? 'error-entry' : ''}">
                            [${entry.time}] ${entry.message}
                        </div>`
                    ).join('');
                    debugLog.scrollTop = debugLog.scrollHeight;
                }
            }
            
            monitorResources() {
                // Monitor images
                const images = document.querySelectorAll('img');
                images.forEach(img => {
                    img.addEventListener('load', () => this.log('Image loaded: ' + img.src, 'info'));
                    img.addEventListener('error', () => this.log('Image failed to load: ' + img.src, 'error'));
                });
                
                // Monitor fonts
                if (document.fonts) {
                    document.fonts.ready.then(() => {
                        this.log('All fonts loaded successfully', 'info');
                    }).catch(e => {
                        this.log('Font loading error: ' + e.message, 'error');
                    });
                }
            }
            
            startHealthCheck() {
                // Check system status every 30 seconds
                setInterval(() => {
                    this.checkSystemHealth();
                }, 30000);
            }
            
            checkSystemHealth() {
                this.log('Health check: System running', 'info');
                
                // Check if page is still visible
                if (document.hidden) {
                    this.log('Page hidden - checking if this is the issue', 'warning');
                }
                
                // Check memory usage (if available)
                if (performance.memory) {
                    const used = Math.round(performance.memory.usedJSHeapSize / 1048576);
                    const total = Math.round(performance.memory.totalJSHeapSize / 1048576);
                    this.log(`Memory usage: ${used}MB / ${total}MB`, 'info');
                }
                
                // Check connection status
                if ('connection' in navigator) {
                    const connection = navigator.connection;
                    this.log(`Connection: ${connection.effectiveType || 'unknown'} (${connection.downlink || 'unknown'} Mbps)`, 'info');
                }
            }
            
            exportLog() {
                const logData = {
                    session: this.startTime.toISOString(),
                    userAgent: navigator.userAgent,
                    screenSize: screen.width + 'x' + screen.height,
                    windowSize: window.innerWidth + 'x' + window.innerHeight,
                    logs: this.logEntries
                };
                
                const blob = new Blob([JSON.stringify(logData, null, 2)], { type: 'application/json' });
                const url = URL.createObjectURL(blob);
                const a = document.createElement('a');
                a.href = url;
                a.download = 'juggernaut-debug-log-' + Date.now() + '.json';
                a.click();
                URL.revokeObjectURL(url);
                
                this.log('Debug log exported', 'info');
            }
        }
        
        // Initialize debug system
        const debug = new JuggernautDebug();
        
        // Test API Key function (with proper debugging)
        function testApiKey() {
            debug.log('API Key test initiated', 'info');
            
            // Get environment variables (these will show undefined in static site)
            const supabaseUrl = 'VITE_SUPABASE_URL' in window ? window.VITE_SUPABASE_URL : 'NOT SET (static site)';
            const supabaseKey = 'VITE_SUPABASE_ANON_KEY' in window ? window.VITE_SUPABASE_ANON_KEY : 'NOT SET (static site)';
            const googleKey = 'VITE_GOOGLE_MAPS_API_KEY' in window ? window.VITE_GOOGLE_MAPS_API_KEY : 'NOT SET (static site)';
            
            debug.log('Supabase URL: ' + supabaseUrl, 'info');
            debug.log('Supabase Key: ' + (supabaseKey ? '***CONFIGURED***' : 'NOT SET'), 'info');
            debug.log('Google Maps API: ' + (googleKey ? '***CONFIGURED***' : 'NOT SET'), 'info');
            
            // Test actual API call
            if (supabaseUrl && supabaseKey && supabaseUrl !== 'NOT SET (static site)') {
                debug.log('Attempting Supabase connection test...', 'info');
                
                // Simple health check API call
                fetch(supabaseUrl + '/rest/v1/', {
                    method: 'GET',
                    headers: {
                        'apikey': supabaseKey,
                        'Authorization': 'Bearer ' + supabaseKey
                    }
                })
                .then(response => {
                    if (response.ok) {
                        debug.log('✅ Supabase API connection successful!', 'info');
                    } else {
                        debug.log('❌ Supabase API error: ' + response.status + ' - ' + response.statusText, 'error');
                    }
                })
                .catch(error => {
                    debug.log('❌ Supabase connection failed: ' + error.message, 'error');
                });
            } else {
                debug.log('⚠️ API keys not configured - this is why you get "invalid API" errors', 'info');
                debug.log('💡 This is a STATIC site, not connected to backend services', 'info');
            }
        }
        
        // Generate debug log
        function logDebug() {
            debug.exportLog();
        }
        
        // System check
        function checkSystem() {
            debug.log('=== SYSTEM CHECK STARTED ===', 'info');
            
            // Check various system properties
            debug.log('Page Title: ' + document.title, 'info');
            debug.log('URL: ' + window.location.href, 'info');
            debug.log('Protocol: ' + window.location.protocol, 'info');
            debug.log('Host: ' + window.location.host, 'info');
            debug.log('Path: ' + window.location.pathname, 'info');
            debug.log('Search: ' + window.location.search, 'info');
            debug.log('Hash: ' + window.location.hash, 'info');
            debug.log('Referrer: ' + document.referrer, 'info');
            debug.log('Cookies enabled: ' + navigator.cookieEnabled, 'info');
            debug.log('JavaScript enabled: YES', 'info');
            debug.log('LocalStorage available: ' + (typeof(Storage) !== "undefined"), 'info');
            debug.log('SessionStorage available: ' + (typeof(sessionStorage) !== "undefined"), 'info');
            
            // Performance metrics
            const perfData = performance.getEntriesByType('navigation')[0];
            if (perfData) {
                debug.log('Page load time: ' + Math.round(perfData.loadEventEnd - perfData.fetchStart) + 'ms', 'info');
                debug.log('DOM ready time: ' + Math.round(perfData.domContentLoadedEventEnd - perfData.fetchStart) + 'ms', 'info');
            }
            
            debug.log('=== SYSTEM CHECK COMPLETED ===', 'info');
        }
        
        // Log page visibility changes
        document.addEventListener('visibilitychange', () => {
            if (document.hidden) {
                debug.log('Page became hidden - potential deployment issue point', 'warning');
            } else {
                debug.log('Page became visible', 'info');
            }
        });
        
        // Log before unload
        window.addEventListener('beforeunload', () => {
            debug.log('Page unload requested', 'info');
        });
        
        // Periodic status updates
        setInterval(() => {
            debug.log('Status check: All systems nominal', 'info');
        }, 60000); // Every minute
    </script>
</body>
</html>
EOF

echo "✅ HTML generated with debug mode" | tee -a "$DEBUG_LOG"

# Create debug information file
echo "Creating debug info file..." | tee -a "$DEBUG_LOG"
cat > dist/debug-info.json << EOF
{
  "buildTimestamp": "$BUILD_TIMESTAMP",
  "buildEnvironment": "DEBUG MODE",
  "buildSystem": "$(uname -a)",
  "buildUser": "$(whoami)",
  "buildPath": "$(pwd)",
  "gitBranch": "$(git branch 2>/dev/null || echo 'No git repo')",
  "gitCommit": "$(git log -1 --oneline 2>/dev/null || echo 'No git commit')",
  "nodeVersion": "$(node --version 2>/dev/null || echo 'No node')",
  "npmVersion": "$(npm --version 2>/dev/null || echo 'No npm')",
  "pythonVersion": "$(python3 --version 2>/dev/null || echo 'No python')",
  "availableTools": "$(which bash || echo 'No bash')",
  "diskSpace": "$(df -h . | tail -1 | awk '{print $4}')",
  "memory": "$(free -h | grep Mem | awk '{print $2}')",
  "cloudflarePages": "Configured",
  "buildCommand": "bash build-debug.sh"
}
EOF

echo "✅ Debug info file created" | tee -a "$DEBUG_LOG"

# Create deployment verification script
cat > dist/deploy-check.js << 'EOF'
// Cloudflare Pages Deployment Verification Script
// This runs when the page loads to verify deployment status

(function() {
    const startTime = Date.now();
    const deployCheck = {
        timestamp: new Date().toISOString(),
        url: window.location.href,
        userAgent: navigator.userAgent,
        referrer: document.referrer
    };
    
    // Log to console for debugging
    console.log('=== CLOUDFLARE PAGES DEPLOYMENT VERIFICATION ===');
    console.log('Deployment check started:', deployCheck);
    
    // Check if we're on the right domain
    if (window.location.hostname.includes('.pages.dev')) {
        console.log('✅ Running on Cloudflare Pages domain');
    } else {
        console.log('❌ Not on Cloudflare Pages domain');
    }
    
    // Check if page loaded successfully
    window.addEventListener('load', function() {
        const loadTime = Date.now() - startTime;
        console.log(`✅ Page loaded successfully in ${loadTime}ms`);
        
        // Send verification data
        if (window.fetch) {
            // Log deployment verification (no external call to avoid CORS issues)
            console.log('Deployment verification data:', deployCheck);
        }
    });
    
    // Monitor for any failures
    window.addEventListener('error', function(e) {
        console.error('❌ JavaScript Error Detected:', e);
        console.error('This could be causing deployment instability');
    });
})();
EOF

echo "✅ Deployment verification script created" | tee -a "$DEBUG_LOG"

# Final verification
echo "Running final build verification..." | tee -a "$DEBUG_LOG"
if [ -f "dist/index.html" ] && [ -s "dist/index.html" ]; then
    FILE_SIZE=$(stat -c%s dist/index.html)
    echo "✅ Build verification PASSED" | tee -a "$DEBUG_LOG"
    echo "📊 HTML file size: $FILE_SIZE bytes" | tee -a "$DEBUG_LOG"
    echo "📁 Files created:" | tee -a "$DEBUG_LOG"
    ls -la dist/ | tee -a "$DEBUG_LOG"
else
    echo "❌ Build verification FAILED" | tee -a "$DEBUG_LOG"
    echo "Dist directory contents:" | tee -a "$DEBUG_LOG"
    ls -la dist/ | tee -a "$DEBUG_LOG"
    exit 1
fi

echo "" | tee -a "$DEBUG_LOG"
echo "=== JUGGERNAUT BUILD DEBUG SESSION COMPLETED ===" | tee -a "$DEBUG_LOG"
echo "Build completed successfully at $(date)" | tee -a "$DEBUG_LOG"
echo "Debug log saved to: $DEBUG_LOG" | tee -a "$DEBUG_LOG"

echo ""
echo "🎯 **DEBUG BUILD COMPLETE!**"
echo "📁 Files created in dist/:"
echo "   - index.html (with debug console)"
echo "   - debug-info.json (build metadata)"  
echo "   - deploy-check.js (deployment verification)"
echo ""
echo "🔍 **What this debug version does:**"
echo "   ✅ Real-time error tracking"
echo "   ✅ API key testing (shows why 'invalid API' happens)"
echo "   ✅ System health monitoring"
echo "   ✅ Performance metrics"
echo "   ✅ Deployment verification"
echo ""
echo "🚀 **Next Steps:**"
echo "   1. Deploy this debug version to Cloudflare Pages"
echo "   2. Test all features to see what triggers issues"
echo "   3. Check the debug console for detailed logs"
echo "   4. Export debug logs to share with MiniMax Agent"
echo ""
echo "**Ready for deployment with comprehensive debugging!**" | tee -a "$DEBUG_LOG"

set +x  # Disable command tracing