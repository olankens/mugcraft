If ($MyInvocation.InvocationName -Ne "." -Or "$Env:TERM_PROGRAM" -Eq "Vscode") {

    $Address = "https://raw.githubusercontent.com/olankens/whelpers/HEAD/src/Whelpers.psm1"
    $Content = ([Scriptblock]::Create((New-Object System.Net.WebClient).DownloadString($Address)))
    New-Module -Name "$Address" -ScriptBlock $Content -EA SI > $Null

}