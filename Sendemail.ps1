# Office 365 SMTP server settings
$smtpServer = "smtp.office365.com" #if your email is using office 365, but you can feel free to look up other providers and use, 
$smtpPort = 587
$smtpUsername = "your email" #put your email address here
$smtpPassword = "your password" #put your email password here

# Sender and recipient email addresses
$from = "your email" #put your email address here
$to = "recipient's email" # put here the email address you are emailing to

# Email subject and body
$subject = "subject" #put here what you want to be in the subject line
#you can put as much as you want in the body. I heavily recommend you create an email and copy and paste the contents of the email between the two quotes. 
$body = "body

"

# Create credentials for authentication
$securePassword = ConvertTo-SecureString $smtpPassword -AsPlainText -Force
$credentials = New-Object System.Management.Automation.PSCredential ($smtpUsername, $securePassword)

# Send email using Send-MailMessage
Send-MailMessage -From $from -To $to -Subject $subject -Body $body -SmtpServer $smtpServer -Port $smtpPort -UseSsl -Credential $credentials
