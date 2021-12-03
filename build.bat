ECHO OFF

SET HTTP_PROXY = %1

if not exist reveal.js\ (
    git clone https://github.com/hakimel/reveal.js.git --config "http.proxy=%HTTP_PROXY%"
    cd reveal.js
    SET PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
    npm install
    cd ..
)
if exist reveal.js\ (
    cd reveal.js
    if exist "app\" (
        mklink /d app\ ..\app\
    )
    @REM cannot make symbolic link in windows without admin privilegies
    @REM del /S .\index.html
    @REM mklink index.html ..\app\index.html
    COPY /Y app\index.html index.html

)
