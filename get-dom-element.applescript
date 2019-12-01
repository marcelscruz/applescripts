execute javascript "document.queryElementsByClass('ytp-play-button')"

tell application "Google Chrome" to tell active tab of window 1
    execute javascript "document.queryElementsByClass('ytp-play-button')"
    -- execute javascript "document.getElementById('chrome-web-store-title').click()"
    --execute javascript "document.querySelectorAll('.tile-grid .most-visited')[3].click()"
end tell