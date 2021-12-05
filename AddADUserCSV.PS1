Import-Csv "C:\ps\create_new_ad_users.csv" | ForEach-Object {
$upn = $_.SamAccountName + “@powershell.com”
$uname = $_.LastName + " " + $_.FirstName
New-ADUser -Name $uname `
-DisplayName $uname `
-GivenName $_.FirstName `
-Surname $_.LastName `
-UserPrincipalName $upn `
-SamAccountName $_.samAccountName `
-AccountPassword (ConvertTo-SecureString $_.Password -AsPlainText -force) -Enabled $true
}

#See create_new_ad_users.csv in this repository for the csv used. 
