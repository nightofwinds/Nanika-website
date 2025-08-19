@echo off
REM Convert all images in the current folder to compressed WebP
REM Keeps original base filename, just changes extension to .webp

for %%i in (*.jpg *.jpeg *.png *.bmp) do (
    echo Converting "%%i" ...
    ffmpeg -i "%%i" -q:v 50 "%%~ni.webp"
)

echo Done!
pause
