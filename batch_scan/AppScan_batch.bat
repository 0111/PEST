:: Init Script for cmd.exe
:: Created as part of batch_scan
:: #########################################################################
:: 1 ��������״����иó��������ã�������--����--һ��--�û��ļ����ļ���(D:\appscan\result);��־�ļ����ļ���(D:\appscan\Logs)
:: 2 ��������״����иó��������ã�������--����--ɨ��ѡ��--ָʾɨ���Ƿ����(��ѡ)��ɨ��������Զ�����(��ѡ)
@REM 3 ��������״����иó��������ã�������--ɨ��--ɨ������--����--���Բ���--ѡ��ò��Ժ󵼳���D:\appscan\attack.scant 
@REM 4 �������32λϵͳ���뽫·��C:\Program Files (x86)\IBM\AppScan Standard ��Ϊ C:\Program Files\IBM\AppScan Standard

::@mode con cp select=936
@chcp 936
echo 1 ��������״����иó��������ã�������--����--һ��--�û��ļ����ļ���(D:\appscan\result);��־�ļ����ļ���(D:\appscan\Logs)
echo 2 ��������״����иó��������ã�������--����--ɨ��ѡ��--ָʾɨ���Ƿ����(��ѡ)��ɨ��������Զ�����(��ѡ)
echo 3 ��������״����иó��������ã�������--ɨ��--ɨ������--����--���Բ���--ѡ��ò��Ժ󵼳���D:\appscan\attack.scant 
echo 4 �������32λϵͳ���뽫·��C:\Program Files (x86)\IBM\AppScan Standard ��Ϊ C:\Program Files\IBM\AppScan Standard
echo 5 �ڵ�ǰĿ¼��ÿ��urltoscan�ļ��У��ֱ𱣴�3��URl����Ϊ�������Է��֣�ͬʱ��������ɨ�������ܺ�Ч����ߵġ�
@echo off
@REM delete the script created by the last time
::@DEL urltoscan*.bat
@REM set AppScanCMD_home
@echo off
SET home=%CD%
SET AppScan_ROOT=C:\Program Files (x86)\IBM\AppScan Standard
@REM change to the path where AppScan was installed

@REM produce batch_scan for appscancm 
::for /F "delims=/,tokens=3" %%f in (urltoscan.txt) do echo %%f >> urltoname.txt


::��ÿ��urltoscan�ļ��У�����3��URl����Ϊ�������Է��֣�ͬʱ��������ɨ�������ܺ�Ч����ߵġ�
for /F %%u in (urltoscan0.txt) do echo %AppScan_ROOT%/appscancmd /e /su %%u /st %home%\attack.scant /d %home%\result\ /v >> urltoscan0.bat
for /F %%u in (urltoscan1.txt) do echo %AppScan_ROOT%appscancmd /e /su %%u /st %home%\attack.scant /d %home%\result\ /v >> urltoscan1.bat
for /F %%u in (urltoscan2.txt) do echo %AppScan_ROOT%appscancmd /e /su %%u /st %home%\attack.scant /d %home%\result\ /v >> urltoscan2.bat

echo "�������������Եȣ�" 
start urltoscan1.bat
start urltoscan2.bat
start urltoscan3.bat








