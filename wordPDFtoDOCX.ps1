function Import-Assembly {
    [CmdletBinding()]
    param (
        $PartialName
    )
    process {
        try {
            $assembly = [System.Reflection.Assembly]::LoadWithPartialname("$PartialName")
            Write-Verbose -Message "Natively loaded '$PartialName' version $($assembly.getName().Version) from $($assembly.Location) through [System.Reflection.Assembly]::LoadWithPartialname"
        } catch [System.Management.Automation.MethodInvocationException] {
            $assemblyRemote = powershell.exe -Version 5.1 -OutputFormat XML -NoProfile -Command "[Reflection.Assembly]::LoadWithPartialname(`"$PartialName`")"
            $assembly = [System.Reflection.Assembly]::LoadFile($($assemblyRemote.Location))
            Write-Verbose -Message "Resolved path for '$PartialName' using PowerShell 5.1 and loaded version $($assembly.getName().Version) from $($assembly.Location) through [System.Reflection.Assembly]::LoadWithPartialname"
        }
    }
}

Import-Assembly -PartialName "Microsoft.Office.Interop.Word" -Verbose

Import-Assembly -PartialName "Office" -Verbose

$encoding = [Microsoft.Office.Core.MsoEncoding]::msoEncodingAutoDetect

$pdfPath = Join-Path $env:TEMP seniorEF.pdf

# See https://ss64.com/ps/syntax-word.html

$MSWord = New-Object -ComObject Word.Application

# We want to open, but need to convert
# See https://docs.microsoft.com/en-us/office/vba/api/word.documents.open

$pdfConverter = $MSWord.Application.FileConverters | Where-Object -Property Extensions -Match pdf

# Document Open (Variant FileName, Variant ConfirmConversions, Variant ReadOnly, Variant AddToRecentFiles, Variant PasswordDocument, Variant PasswordTemplate, Variant Revert, Variant WritePasswordDocument, Variant WritePasswordTemplate, Variant Format, Variant Encoding, Variant Visible, Variant OpenAndRepair, Variant DocumentDirection, Variant NoEncodingDialog, Variant XMLTransform)

$pdf = $MSWord.Documents.Open($pdfPath, $false, $false, $false, $([Type]::Missing), $([Type]::Missing), $true, $([Type]::Missing), $([Type]::Missing), $($pdfConverter.OpenFormat), $encoding, $false, $false, $false, DocumentDirection, NoEncodingDialog)

$MSWord.Documents.OpenNoRepairDialog($pdfPath, $false, $false, $false, $([Type]::Missing), $([Type]::Missing), $true, $([Type]::Missing), $([Type]::Missing), $($pdfConverter.OpenFormat), $encoding, $false, $false, $false, DocumentDirection, NoEncodingDialog)

# Document OpenNoRepairDialog (Variant FileName, Variant ConfirmConversions, Variant ReadOnly, Variant AddToRecentFiles, Variant PasswordDocument, Variant PasswordTemplate, Variant Revert, Variant WritePasswordDocument, Variant WritePasswordTemplate, Variant Format, Variant Encoding, Variant Visible, Variant OpenAndRepair, Variant DocumentDirection, Variant NoEncodingDialog, Variant XMLTransform)