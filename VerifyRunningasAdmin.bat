if /I "%username:~0,6%"=="ADMIN_" GOTO FAILURE3
if /I "%username%"=="administrator" GOTO FAILURE

:CheckPermissions
    echo Administrative permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed.
    ) else (
        echo Failure: Current permissions inadequate.
	GOTO FAILURE
    )

::for GOTO FAILURE, create a separate message for custom failure message. 