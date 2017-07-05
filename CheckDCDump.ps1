#checks DC list for dump files.

$outfile = "C:\scripts\minidump.txt"

$servers = get-content C:\scripts\DCs.txt

foreach ($server in $servers){

$fileExists = Test-Path \\$server\C$\Windows\Minidump\*.dmp

if ($fileExists){
    
    $server | Out-File $outfile -Append
    Get-ChildItem \\$server\C$\Windows\Minidump | Out-File $outfile -Append


    }
}