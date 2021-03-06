; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[_ISTool]
EnableISX=true

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{71702641-2849-45A4-8E62-4B85974B24A0}
AppName=BumpTop
AppVerName=BumpTop
; the following lines are modified by build script - do not edit
AppVersion=0.0.1337
VersionInfoVersion=0.0.1337
OutputBaseFilename=BumpTopStubInstaller
; end auto updated region
AppPublisher=Bump Technologies, Inc.
AppPublisherURL=http://www.bumptop.com/
AppSupportURL=http://www.bumptop.com/support
AppUpdatesURL=http://www.bumptop.com/
DefaultDirName={pf}\BumpTop
DefaultGroupName=BumpTop
OutputDir=.
SetupIconFile=Resources\bumptop.ico
UninstallDisplayIcon={app}\BumpTop.exe
Compression=lzma/ultra64
SolidCompression=true
WizardSmallImageFile=Resources\install_banner.bmp
WizardImageFile=Resources\side_banner.bmp
WizardImageStretch=false
WizardImageBackColor=$f2ca80
DisableProgramGroupPage=true
ShowUndisplayableLanguages=true
DirExistsWarning=no
DisableDirPage=true
DisableReadyPage=true
DisableFinishedPage=true
UsePreviousAppDir=true
UsePreviousGroup=true
UsePreviousTasks=true
UsePreviousUserInfo=true
UninstallFilesDir={app}\Installer
CreateUninstallRegKey=true
InternalCompressLevel=max
; ultra64 is best, but requires 64MB of memory for decompression which could be problematic
SetupLogging=true
ShowLanguageDialog=no


[Languages]
Name: en; MessagesFile: compiler:Default.isl; LicenseFile: Languages\BUMPTOP END USER LICENSE AGREEMENT.en.rtf
Name: fr; MessagesFile: compiler:Languages\French.isl; LicenseFile: Languages\BUMPTOP END USER LICENSE AGREEMENT.fr.rtf
Name: de; MessagesFile: compiler:Languages\German.isl; LicenseFile: Languages\BUMPTOP END USER LICENSE AGREEMENT.de.rtf
Name: it; MessagesFile: compiler:Languages\Italian.isl; LicenseFile: Languages\BUMPTOP END USER LICENSE AGREEMENT.it.rtf
Name: pt; MessagesFile: compiler:Languages\Portuguese.isl; LicenseFile: Languages\BUMPTOP END USER LICENSE AGREEMENT.pt.rtf
Name: ru; MessagesFile: compiler:Languages\Russian.isl; LicenseFile: Languages\BUMPTOP END USER LICENSE AGREEMENT.ru.rtf
Name: es; MessagesFile: compiler:Languages\Spanish.isl; LicenseFile: Languages\BUMPTOP END USER LICENSE AGREEMENT.es.rtf
Name: zh_tw; MessagesFile: Languages\ChineseTrad-2-5.1.11.isl; LicenseFile: Languages\BUMPTOP END USER LICENSE AGREEMENT.zh_TW.rtf
Name: zh_cn; MessagesFile: Languages\ChineseSimp-12-5.1.11.isl; LicenseFile: Languages\BUMPTOP END USER LICENSE AGREEMENT.zh_CN.rtf
Name: ja; MessagesFile: Languages\Japanese-5-5.1.11.isl; LicenseFile: Languages\BUMPTOP END USER LICENSE AGREEMENT.ja.rtf
Name: ko; MessagesFile: Languages\Korean-5-5.1.11.isl; LicenseFile: Languages\BUMPTOP END USER LICENSE AGREEMENT.ko.rtf

[Files]
; x64
; themes
; languages
; textures
; msi installer workaround (to remove previous install)
; Source: "..\Source\Release\BumpTopInstaller.msi";          DestDir: "{tmp}"; Flags: ignoreversion deleteafterinstall
; kill process workaround
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: ..\Source\Release\PostExec.exe; DestDir: {tmp}
Source: ..\Source\Release\QtCore4.dll; DestDir: {tmp}
Source: ..\bin\7z.dll; DestDir: {userappdata}
Source: ..\bin\7z.exe; DestDir: {userappdata}
Source: ..\bin\isxdl.dll; Flags: dontcopy

[Icons]
Name: {group}\BumpTop; Filename: {app}\BumpTop.exe
; Name: "{group}\{cm:ProgramOnTheWeb,BumpTop}"; Filename: "http://www.bumptop.com/"
Name: {commondesktop}\BumpTop; Filename: {app}\BumpTop.exe
; Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\BumpTop"; Filename: "{app}\BumpTop.exe"
Name: {commonstartup}\BumpTop; Filename: {app}\BumpTop.exe
Name: {group}\BumpTop (Enable Logging); Filename: {app}\BumpTop.exe; Parameters: -logVerbose -logDontIgnoreStartOrEnd

[Registry]
Root: HKCR; Subkey: .bumptheme; ValueType: string; ValueData: BumpTop.theme.1; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.theme.1; ValueType: string; ValueData: BumpTop Theme File; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.theme.1\FriendlyTypeName; ValueType: string; ValueData: BumpTop Theme File; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.theme.1\InfoTip; ValueType: string; ValueData: BumpTop Theme File; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.theme.1\CurVer; ValueType: string; ValueData: BumpTop.theme.1; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.theme.1\DefaultIcon; ValueType: string; ValueData: %ProgramFiles%\BumpTop\bumptop.ico,0; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.theme.1\Shell; ValueType: string; ValueData: open; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.theme.1\Shell\open; ValueType: string; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.theme.1\Shell\open\command; ValueType: string; ValueData: """{app}\BumpTop Settings.exe"" /setTheme ""%1"""; Flags: createvalueifdoesntexist uninsdeletekey

Root: HKCR; Subkey: .bumpwidget; ValueType: string; ValueData: BumpTop.widget.1; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.widget.1; ValueType: string; ValueData: BumpTop; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.widget.1\Shell; ValueType: string; ValueData: open; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.widget.1\Shell\open; ValueType: string; Flags: createvalueifdoesntexist uninsdeletekey
Root: HKCR; Subkey: BumpTop.widget.1\Shell\open\command; ValueType: string; ValueData: """{app}\BumpTop Settings.exe"" /addWidget ""%1"""; Flags: createvalueifdoesntexist uninsdeletekey


[Run]
Filename: {userappdata}\7z.exe; Parameters: "x -o""{app}\"" -y {tmp}\BumpTop.7z"
; Filename: {app}\BumpTop.exe; Description: {cm:LaunchProgram,BumpTop}; Flags: nowait postinstall skipifsilent runasoriginaluser

[UninstallDelete]
Name: {app}; Type: filesandordirs; Languages:

[Code]
var
	vcRedistPath: string;
	downloadNeeded: boolean;
	vcRedistNeeded: boolean;
	memoDependenciesNeeded: string;
	uninstaller: String;
	ErrorCode: Integer;

procedure isxdl_AddFile(URL, Filename: PAnsiChar);
external 'isxdl_AddFile@files:isxdl.dll stdcall';
function isxdl_DownloadFiles(hWnd: Integer): Integer;
external 'isxdl_DownloadFiles@files:isxdl.dll stdcall';
function isxdl_SetOption(Option, Value: PAnsiChar): Integer;
external 'isxdl_SetOption@files:isxdl.dll stdcall';

const bumptopArchiveURL = 'http://download.bumptop.com/stub_v1_release/3769.7z';

const vc2005URL = 'http://download.microsoft.com/download/5/6/7/567758a3-759e-473e-bf8f-52154438565a/dotnetfx.exe';

function InitializeSetup(): Boolean;
begin
	Result := true;
	vcRedistNeeded := false;

	// extract the dummy msi & post exec for use later
	// ExtractTemporaryFile('BumpTopInstaller.msi');
	ExtractTemporaryFile('PostExec.exe');
	ExtractTemporaryFile('QtCore4.dll');
	BringToFrontAndRestore();

	if not FileExists(ExpandConstant('{tmp}\BumpTop.7z')) then
	begin
		isxdl_AddFile(bumptopArchiveURL, ExpandConstant('{tmp}\BumpTop.7z'));
		downloadNeeded := true;
	end;

	// See if VC++2005 SP1 is installed
	// this obviously isn't working yet
	if (not RegKeyExists(HKLM, 'Software\Microsoft\.NETFramework\policy\v2.0')) then begin
		vcRedistNeeded := true;
		if (not IsAdminLoggedOn()) then begin
			MsgBox('BumpTop needs the Microsoft Visual C++ 2005 SP1 Redistributable to be installed by an Administrator', mbInformation, MB_OK);
			Result := false;
		end
		else
		begin
			memoDependenciesNeeded := memoDependenciesNeeded + '      Visual C++ 2005 SP1 Redistributable' ;
			vcRedistPath := ExpandConstant('{src}\dotnetfx.exe');
			if not FileExists(vcRedistPath) then begin
				vcRedistPath := ExpandConstant('{tmp}\dotnetfx.exe');
				if not FileExists(vcRedistPath) then begin
					isxdl_AddFile(vc2005URL, vcRedistPath);
					downloadNeeded := true;
				end;
			end;
			SetIniString('install', 'vcRedistPath', vcRedistPath, ExpandConstant('{tmp}\dep.ini'));
		end;
	end;
end;

procedure KillProcess(ProcessName: String);
  var ResultCode: Integer;
begin
  // try and kill it
  Exec(ExpandConstant('{sys}\taskkill.exe'), Format('/F /IM "%s"', [ProcessName]), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
end;

procedure CurStepChanged(CurStep: TSetupStep);
  var SettingsJsonPath: String;
  var CachePath: String;
  var ResultCode: Integer;
begin
  BringToFrontAndRestore();
  if CurStep = ssInstall then
  begin
    // kill bumptop and the settings
    KillProcess('BumpTop.exe');
    KillProcess('BumpTop Settings.exe');
    Exec(ExpandConstant('{tmp}\PostExec.exe'), 'K', '', SW_SHOW, ewWaitUntilTerminated, ResultCode);

    // check whether we need to remove the legacy msi installation from the add-remove programs list
    // Exec(ExpandConstant('{tmp}\PostExec.exe'), 'U', '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
    // if ResultCode = 1 then

    // install new dummy msi to replace legacy msi installation (using the same upgrade code as previous vs setup msi installer)
    // Exec(ExpandConstant('{sys}\msiexec.exe'), ExpandConstant('/passive /i {tmp}\BumpTopInstaller.msi'), '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
    // remove the dummy msi so that the old entry in Add & Remove is removed
    // Exec(ExpandConstant('{sys}\msiexec.exe'), ExpandConstant('/passive /x {tmp}\BumpTopInstaller.msi'), '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
  end;
  if CurStep = ssPostInstall then
  begin

    // remove the stats directory, just in case they are causing issues
    DelTree(ExpandConstant('{userappdata}\Bump Technologies, Inc\BumpTop\stats'), True, True, True);

  end;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
  var ResultCode: Integer;
begin
  BringToFrontAndRestore();
  if CurUninstallStep = usUninstall then
  begin
    // Hit uninstall survey
    Exec(ExpandConstant('{app}\PostExec.exe'), 'S', '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
    // try and send a WM_CLOSE to bumptop
    KillProcess('BumpTop.exe');
    KillProcess('BumpTop Settings.exe');
    // send uninstall stats
    Exec(ExpandConstant('{app}\BumpTop.exe'), '-sendUninstallStats', '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
    // kill BumpTop and settings
    Exec(ExpandConstant('{app}\PostExec.exe'), 'K', '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
  end;
end;

function NextButtonClick(CurPage: Integer): Boolean;
var
hWnd: Integer;
ResultCode: Integer;

begin
	Result := true;

	if CurPage = wpLicense then begin
		hWnd := StrToInt(ExpandConstant('{wizardhwnd}'));
		// don't try to init isxdl if it's not needed because it will error on < ie 3
		if downloadNeeded then begin
			isxdl_SetOption('label', 'Downloading BumpTop Components');
			isxdl_SetOption('description', 'BumpTop needs to install some components. Please wait while Setup is downloading installation files to your computer.');
			if isxdl_DownloadFiles(hWnd) = 0 then Result := false;
		end;
		if (Result = true) and (vcRedistNeeded = true) then begin
			if Exec(ExpandConstant(vcRedistPath), '', '', SW_SHOW, ewWaitUntilTerminated, ResultCode) then begin
				// handle success if necessary; ResultCode contains the exit code
				if not (ResultCode = 0) then begin
					Result := false;
				end;
			end
			else begin
				// handle failure if necessary; ResultCode contains the error code
				Result := false;
			end;
		end;
	end;
end;


function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo, MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: String): String;
var
s: string;

begin
	if memoDependenciesNeeded <> '' then s := s + 'Dependencies to install:' + NewLine + memoDependenciesNeeded + NewLine;
	s := s + MemoDirInfo + NewLine + NewLine;

	Result := s
end;






