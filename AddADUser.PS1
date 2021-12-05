New-ADUser -Name "Joe Friday" `
           -GivenName "Joe" `
           -Surname "Friday" `
           -UserPrincipalName "joe.friday@ServerAcademy.com" `
           -SameAccountName "joe.friday" `
           -EmailAddress "joe@ServerAcademy.com" `
           -Description "This is the users description" `
           -OfficePhone "123-123-1234" `
           -Path "OU-Domain Users,OU=ServerAcademy,DC-ServerAcademy,DC=local" `
           -ChangePasswordAtLogin $true `
           -AccountPassword $ConvertTo-SecureString "Password!@#" -AsPlainText -force) `
           -Enabled $true
_____________________________________________________________________

$parameters = @{
    Name = "Joe Friday"
    Description = "This is the users description"
    EmailAddress = "joe@PowerShell.com"
    Givenname = "Joe"
    OfficePhone = "123-123-1234"
    Path = "CN=Users,DC=PowerShell,DC=com"
    SamAccountName = "joe.friday"
    Surname = "Friday"
    UserPrincipalName = "joe.friday@PowerShell.com"
    AccountPassword = $(ConvertTo-SecureString "Password!@#" -AsPlainText -force)
    ChangePasswordAtLogon = $true
    Enabled = $true  
}

New-ADUser @parameters