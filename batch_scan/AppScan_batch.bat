:: Init Script for cmd.exe
:: Created as part of batch_scan
:: filename: AppScan_batch.bat
:: version v0.0.5 
:: author: ym2011
:: date: 2016-10-01
:: #########################################################################
::@mode con cp select=936
@chcp 936
echo 1 ��������״����иó��������ã�������--����--һ��--�û��ļ����ļ���(%hom%\result);��־�ļ����ļ���(%hom%\Logs)
echo 2 ��������״����иó��������ã�������--����--ɨ��ѡ��--ָʾɨ���Ƿ����(��ѡ)��ɨ��������Զ�����(��ѡ)
echo 3 ��������״����иó��������ã�������--ɨ��--ɨ������--����--���Բ���--ѡ��ò��Ժ󵼳���%hom%\attack.scant
echo 4 �ڵ�ǰĿ¼��ÿ��urltoscan�ļ��У��ֱ𱣴�3��URl����Ϊ�������Է��֣�ͬʱ��������ɨ�������ܺ�Ч����ߵġ�
@echo off
@REM delete the script created by the last time
::@DEL urltoscan*.bat
@REM set AppScanCMD_home
:: Pass through to appropriate loader.
if "%PROCESSOR_ARCHITECTURE%"=="x86" goto 32bit
if "%PROCESSOR_ARCHITECTURE%"=="amd64" goto 64bit
: 32bit
SET AppScan_ROOT=C:\Program Files\IBM\AppScan Standard
goto end
:64bit
SET AppScan_ROOT=C:\Program Files (x86)\IBM\AppScan Standard
goto end
:end
@echo off
SET home=%CD%
@REM change to the path where AppScan was installed
::SET AppScan_ROOT=C:\Program Files (x86)\IBM\AppScan Standard
@REM produce batch_scan for appscancm 
::for /F "delims=/,tokens=3" %%f in (urltoscan.txt) do echo %%f >> urltoname.txt


::��ÿ��urltoscan�ļ��У�����3��URl����Ϊ�������Է��֣�ͬʱ��������ɨ�������ܺ�Ч����ߵġ�
for /F %%u in (urltoscan1.txt) do echo %AppScan_ROOT%/appscancmd /e /su %%u /st %home%\attack.scant /d %home%\result\ /v >> urltoscan1.bat
for /F %%u in (urltoscan2.txt) do echo %AppScan_ROOT%appscancmd /e /su %%u /st %home%\attack.scant /d %home%\result\ /v >> urltoscan2.bat
for /F %%u in (urltoscan3.txt) do echo %AppScan_ROOT%appscancmd /e /su %%u /st %home%\attack.scant /d %home%\result\ /v >> urltoscan3bat
pause
echo "�������������Եȣ�" 
start urltoscan1.bat
start urltoscan2.bat
start urltoscan3.bat








