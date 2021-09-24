Push-Location -Path $env:TEMP

Get-ChildItem -Path all_data -Recurse -Directory | ForEach-Object { 
    if ( -not ($_.FullName -like '*__MACOSX*' ) -and $_ -like "*[0-9]") {
        $tempFile = New-TemporaryFile 
        "| File | Input | Output |`n|---|---|---|" | Out-File -FilePath $tempFile  -Encoding utf8

        Get-ChildItem -Path $_.FullName | ForEach-Object {
            $fileName = $_.BaseName 
            if ($_.Name -like '*.in') { 
                "`n| $fileName | $(Get-Content $_.FullName) |" | Out-File -FilePath $tempFile   -NoNewline -Append  -Encoding utf8
            }
            elseif ($_.Name -like '*.out') { 
                "$(Get-Content $_.FullName)|" | Out-File -FilePath $tempFile  -Append -Encoding utf8
            }
        }
        Push-Location $_.FullName
        $toFileName = "InOut.md"
        Rename-Item -Path $tempFile -NewName $toFileName
        Move-Item -Path $(Resolve-Path -Path $(Join-Path $tempFile '..' $toFileName)) -Destination .

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
    <tr>
        <th>File Name</th>
        <th>Test Input</th>
        <th>Test Output</th>
  </tr>
"@ | Out-File -FilePath $tempFile  -Encoding utf8

        Get-ChildItem -Path $_.FullName | ForEach-Object {
            $fileName = $_.BaseName
            if ($_.Name -like '*.in') { 
                "`n`t<tr>`n`t`t<td>$fileName</td>`n`t`t<td>$(Get-Content $_.FullName)</td>" | Out-File -FilePath $tempFile   -NoNewline -Append  -Encoding utf8
            }
            elseif ($_.Name -like '*.out') { 
                "`n`t`t<td>$(Get-Content $_.FullName)</td>`n`t</tr>" | Out-File -FilePath $tempFile  -Append -Encoding utf8
            }
        }
        Rename-Item -Path $tempFile -NewName "InOut.html"
        Move-Item -Path $tempFile -Destination .
    }
}