# PRTGavamarbackup
Powershell for Custom EXE/ADV sensor PRTG, to monitor EMC Avamar clients

- Copy the file to your PRTG installation under the Custom Sensors then EXE/Advanced
- Create a new sensor on your desired Device, EXE/ADV select the script avamarbackupcheck.ps1
    Note: the script will use the device name or you can set the FQDN in the parameters field
- Create your schedule and ensure the use Credentials from parent is select not the Probe
- Setup your notifications and tolerances
  Note: your path may be different and will need to be updated in the script itself
