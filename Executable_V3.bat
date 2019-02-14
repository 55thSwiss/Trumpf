cmd /c

REM set current directory of executable/batch files
cd /d "C:\Users\TRUMPF\Desktop\QuickFlow_Stuff\"

REM clear previous information in Variable Output file
copy /y nul BarCodeVariableOutput.txt

REM separate Input string into a-h for marking field values in Output file 
FOR /F "tokens=1-8 delims=;" %%a in (BarcodeVariableInput.txt) DO (

	If NOT %%a=="" Echo(%%a >> BarcodeVariableOutput.txt
	If NOT %%b=="" Echo(%%b >> BarcodeVariableOutput.txt
	If NOT %%c=="" Echo(%%c >> BarcodeVariableOutput.txt
	If NOT %%d=="" Echo(%%d >> BarcodeVariableOutput.txt
	If NOT %%e=="" Echo(%%e >> BarcodeVariableOutput.txt
	If NOT %%f=="" Echo(%%f >> BarcodeVariableOutput.txt
	If NOT %%g=="" Echo(%%g >> BarcodeVariableOutput.txt
	If NOT %%h=="" Echo(%%h >> BarcodeVariableOutput.txt
)

endlocal

exit
