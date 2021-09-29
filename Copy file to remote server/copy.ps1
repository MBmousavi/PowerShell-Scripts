$date = (get-date).AddDays(-1)

$var = get-childitem C:\path\to\logs\* | where-object {$_.LastWriteTime -le $date}
	foreach ($f in $var)
	{
		pscp.exe -pw password $f user@x.x.x.x:D:\logs\archive
	}
