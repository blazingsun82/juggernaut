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
