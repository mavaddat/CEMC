$tempFile = New-TemporaryFile 
"| Input | Output |`n|---|---|" | Out-File -FilePath $tempFile  -Encoding utf8

Get-ChildItem -Path $env:TEMP | ForEach-Object { 
    if ($_.Name -like '*.in') { 
        "| $(Get-Content $_.FullName) |" | Out-File -FilePath $tempFile   -NoNewline -Append  -Encoding utf8
    }
    elseif ($_.Name -like '*.out') { 
        "$(Get-Content $_.FullName)|" | Out-File -FilePath $tempFile  -Append -Encoding utf8
    }
} 

$tempFile = New-TemporaryFile 
@"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Input and Output</title>
</head>
<body><table>
"@ | Out-File -FilePath $tempFile  -Encoding utf8

Get-ChildItem -Path $env:TEMP | ForEach-Object { 
    if ($_.Name -like '*.in') { 
        "<tr>$(Get-Content $_.FullName) |" | Out-File -FilePath $tempFile   -NoNewline -Append  -Encoding utf8
    }
    elseif ($_.Name -like '*.out') { 
        "$(Get-Content $_.FullName)|" | Out-File -FilePath $tempFile  -Append -Encoding utf8
    }
} 
