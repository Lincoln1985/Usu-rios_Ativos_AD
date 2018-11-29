$usuarios = @(Get-ADUser -filter {enabled -eq $true} -Properties Name, SamAccountName, Mail,HomeDirectory, Title, Department, Company, PasswordNeverExpires, Created)

$resultado = @($usuarios | Select-Object Name, SamAccountName, Mail,HomeDirectory, Title, Department, Company, PasswordNeverExpires, Enabled, Created)

# Exportar para o formato CSV (Usuarios-AD.csv)
$resultado | Sort Company | Export-Csv Usuarios-AD.csv -NoTypeInformation -Encoding Utf8