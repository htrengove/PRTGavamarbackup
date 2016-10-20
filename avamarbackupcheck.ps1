$DEVICE=$args[0]
#Set Path
$logpath = "\\$($DEVICE)\c$\Program Files\avs\var\clientlogs"
cd $logpath
#Get Latest Log
$logfile = gci *.log | sort LastWriteTime | select -last 1 | Select-object -Property Name
#Check Log
$status = Select-String -Path $logfile.Name -Pattern "avtar Info <5314>:" |  Foreach {$_.Line}
#remove unwanted chars
$statusclean = $status -replace ‘[<>]’
#check status outcome
if ($status -match "Command failed") { $result= "1" } else { $result = "0" }
#send to PRTG

"<prtg>"
"<result>"   
"<channel>"
"BackupStatus"
"</channel>"
"<value>"
echo $result
"</value>"
"</result>"
"<text>"
echo "Status: $($statusclean)"
"</text>"
"</prtg>"