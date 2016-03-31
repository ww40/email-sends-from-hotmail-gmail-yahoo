$userHotmail = "YOUR_EMAIL_HERE@hotmail.com"
$passHotmail = ConvertTo-SecureString -String "YOUR_PASSWORD_HERE" -AsPlainText -Force
$credHotmail = New-Object System.Management.Automation.PSCredential $userHotmail, $passHotmail
$attachmentsHotmail = "C:\Users\$env:USERNAME\Desktop\test.txt"

$mailParamHotmail = @{
    To='SEND_TO@THIS_EMAIL'
    From='Me <YOUR_EMAIL_HERE@hotmail.com>'
    Subject='Sanity test from Hotmail'
    SmtpServer='smtp.live.com'
    Port=587
    Credential=$credHotmail
    UseSSL=$true
 }
$bodyHotmail='File attached for testing.'
Send-MailMessage @mailParamHotmail -Body $bodyHotmail -Attachments $attachmentsHotmail
Write-Host 'Email sent from Hotmail Successfully.' -fore green







$userGmail = "YOUR_EMAIL_HERE@gmail.com"
$passGmail = ConvertTo-SecureString -String "YOUR_PASSWORD_HERE" -AsPlainText -Force
$credGmail = New-Object System.Management.Automation.PSCredential $userGmail, $passGmail
$attachmentsGmail = "C:\Users\$env:USERNAME\Desktop\test.txt"

$mailParamGmail = @{
    To='SEND_TO@THIS_EMAIL'
    From='Me <YOUR_EMAIL_HERE@gmail.com>'
    Subject='Sanity test from Gmail'
    SmtpServer='smtp.gmail.com'
    Port=587
    Credential=$credGmail
    UseSSL=$true
 }
$bodyGmail='File attached for testing.'

Send-MailMessage @mailParamGmail -Body $bodyGmail -Attachments $attachmentsGmail
Write-Host 'Email sent from Gmail Successfully.' -fore green






#at time of testing, yahoo smtp seemed to of taken upto 10 minutes to send out the email from success message.
$userYahoo = "YOUR_EMAIL_HERE@yahoo.co.uk"
$passYahoo = ConvertTo-SecureString -String "YOUR_PASSWORD_HERE" -AsPlainText -Force
$credYahoo = New-Object System.Management.Automation.PSCredential $userYahoo, $passYahoo
$attachmentsYahoo = "C:\Users\$env:USERNAME\Desktop\test.txt"

$mailParamYahoo = @{
    To='YOUR_EMAIL_HERE@gmail.com'
    From='Me <YOUR_EMAIL_HERE@yahoo.co.uk>'
    Subject='Sanity test from Yahoo'
    SmtpServer='smtp.mail.yahoo.com'
    Port=465
    Credential=$credYahoo
    UseSSL=$true
}
$bodyYahoo='File attached for testing.'
Send-MailMessage @mailParamYahoo -Body $bodyYahoo -Attachments $attachmentsYahoo
Write-Host 'Email sent from Yahoo successfully.' -fore Green

