These templates show opened ports of the system via zabbix discovery and add to be item on zabbix server.

How to use on Linux;
Copy the configuration from conf-file and paste to bottom of the zabbix_agentd.conf file.
Restart the zabbix agent service.

How to use on Windows;
Copy the configuration from conf-file and paste to bottom of the zabbix_agentd.conf file.
Copy the portcheck.ps1 file to Zabbix agent directory. 
Check the permission of portcheck.ps1 script file ;
You can test via cmd "powershell.exe -File "C:\Program Files\Zabbix Agent\portcheck.ps1"".
Restart the zabbix agent service.
