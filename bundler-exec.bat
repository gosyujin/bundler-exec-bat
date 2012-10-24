@echo off

set CURRENT_DIR=%cd%
set LOCAL_DIR=%cd%

rem find bundle.bat
for %%I in (bundle.bat) do (
  if exist %%~$path:I (
    :LOOP
      rem ex) "%LOCAL_DIR%" equal "C:\" then "%LOCAL_DIR:~3,1%" equal ""
      if  not "%LOCAL_DIR:~3,1%" == "" (
        if exist "%LOCAL_DIR%\Gemfile" (
          echo bundler is found: bundle exec %*
          cd %CURRENT_DIR%
          bundle exec %*
        ) else (
          cd ../
          rem clear delims.
          rem (default delim are Tab and Space)
          for /F "usebackq delims=" %%s in (`cd`) do (
            rem echo up %%s
            @set LOCAL_DIR=%%s
          )
        )
      goto :LOOP
      ) else (
        echo this is root path: %*
        %*
      )
  ) else (
    echo bundler is NOT found or Gemfile is NOT found: %*
    cd %CURRENT_DIR%
    %*
  )
)
