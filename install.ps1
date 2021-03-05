#Install Exchange 2010 on a single role server (CAS, MBX, HT all on one)
Import-Module ServerManager; Add-WindowsFeature NET-Framework,RSAT-ADDS,Web-Server,Web-Basic-Auth,Web-Windows-Auth,Web-Metabase,Web-Net-Ext,Web-Lgcy-Mgmt-Console,WAS-Process-Model,RSAT-Web-Server,Web-ISAPI-Ext,Web-Digest-Auth,Web-Dyn-Compression,NET-HTTP-Activation,RPC-Over-HTTP-Proxy
#Reboot
Set-Service NetTcpPortSharing -StartupType Automatic
setup /PrepareSchema
Setup /PrepareAD /OrganizationName:"PwnDefend Labs"
#now install exchange from setup
