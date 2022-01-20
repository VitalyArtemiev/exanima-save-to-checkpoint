Set-Location $env:APPDATA\Exanima

$latestrsg= Get-ChildItem -Attributes !Directory *.rsg | Sort-Object -Descending -Property LastWriteTime | select -First 1

if ($latestrsg -eq $null) {
	echo "Could not find any RSG files"
	exit
} else {
	echo "Latest rsg file is $latestrsg.Name"
}

$goalrcpname= $latestrsg.Basename + '.rcp'
$backupname= $goalrcpname

$i = 2
while (Test-Path -Path $backupname) {
	$backupname = $goalrcpname + "(" + ($i.ToString()) + ")"
	$i++
}
if (Test-Path -Path $goalrcpname) {
	echo "Renaming $goalrcpname to $backupname"
	Rename-Item $goalrcpname $backupname
}

echo "Renaming $latestrsg to $goalrcpname"
Rename-Item $latestrsg $goalrcpname
