Set-WinUserLanguageList -Force ja-JP      # 言語リストとプロパティを日本語に設定
Set-WinSystemLocale -SystemLocale ja-JP   # システムロケールを 日本 に変更
Set-WinUILanguageOverride -Language ja-JP # 表示言語と地域設定を 日本語 に変更
Set-WinHomeLocation 122                   # 国と地域を 日本 に変更
Restart-Computer

$path = [System.Environment]::GetEnvironmentVariable('PATH' , 'User')
$path += ';C:\Users\WDAGUtilityAccount\Desktop\readonly\PortableGit\bin'
[System.Environment]::SetEnvironmentVariable('PATH' , $path , 'User')