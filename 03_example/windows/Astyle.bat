@echo off
rem https://github.com/RT-Thread/rt-thread/blob/master/documentation/coding_style_cn.md   asyle ����
for /R .\ %%f in (*.c, *.h) do AStyle.exe --style=allman --indent=spaces=4 --indent-preproc-block --pad-oper --pad-header --unpad-paren --suffix=none --align-pointer=name --lineend=linux --convert-tabs  %%f

echo !
echo �Ѿ���ʽ�� [����]  *.C �� *.H ����
REM pause>nul

set TT=5
echo ��������ĸ���˳�
for /l %%a in (%TT%,-1,1)do (
echo %%a����Զ��˳�
choice/c abcdefghijklmnopqrstuvwxyz1 /t 1 /d 1 >nul||if not errorlevel 27 exit
)