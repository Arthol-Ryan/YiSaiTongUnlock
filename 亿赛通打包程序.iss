; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "YST_Unlock"
#define MyAppVersion "1.1"
#define MyAppPublisher "JohnRey"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{9B2DDDA2-0130-469E-9A9C-F9F33F358625}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=YST_Unlock
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "E:\MyProject\YiSaiTongUnLock\UnlockAll\UnlockAll.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\MyProject\YiSaiTongUnLock\UnlockAll\wps.exe"; DestDir: "{app}"; Flags: ignoreversion
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Registry]
Root: HKCR; Subkey: "Directory\shell\Unlock"; ValueType: string; ValueName: ""; ValueData: "Unlock"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Directory\shell\Unlock\command"; ValueType: string; ValueName: ""; ValueData: """{app}\UnlockAll.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "*\shell\Unlock"; ValueType: string; ValueName: ""; ValueData: "Unlock"; Flags: uninsdeletekey
Root: HKCR; Subkey: "*\shell\Unlock\command"; ValueType: string; ValueName: ""; ValueData: """{app}\UnlockAll.exe"" ""%1"""; Flags: uninsdeletekey
