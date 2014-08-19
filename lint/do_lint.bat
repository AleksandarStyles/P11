@rem The arguments for this batch file:
@rem %1: The path to the project folder
@rem %2: The path to the Kinetis Design Studio installation folder
@rem ------------------------------------------------------
@rem Path to my project folder
SET PROJ_PATH=%1
@rem Path to Kinetis Design Studio installation folder (which is e.g. "C:\Freescale\KDS_1.0.1\eclipse\..\MCU")
SET KDS_PATH=%2
@rem Path to lint-nt.exe
SET LINT_EXE=C:\lint\lint-nt.exe
@rem Path to my lint configuration files
SET LOCAL_LNT_FILES=C:\lint\lnt
@rem Path to my local lint folder inside the project
SET PROJ_LINT_PATH=%PROJ_PATH%\lint
@rem Lint configuration files and includes
SET LNT_INCLUDES=-i"%LOCAL_LNT_FILES%" "%LOCAL_LNT_FILES%\au-misra3.lnt" -i%LOCAL_LNT_FILES%
@rem in order to use more than 1 compliance at a time replace the above line with something like this: SET LNT_INCLUDES=-i"%LOCAL_LNT_FILES%" "%LOCAL_LNT_FILES%\au-misra3.lnt" "%LOCAL_LNT_FILES%\co-mwhc08.lnt" -i%LOCAL_LNT_FILES%
@rem --------------- Run PC-lint ---------------------------
%LINT_EXE% %LNT_INCLUDES% %PROJ_LINT_PATH%\proj_options.lnt %PROJ_LINT_PATH%\proj_files.lnt -vf
