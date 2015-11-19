ldapsearch -o  ldif-wrap=no -x -vv -w$LINUX_LDAP_PASSWORD -D "CN=linuxldap,OU=Service Accounts,OU=FT Service Admins,DC=ftroot,DC=com" -H ldap://ldap.ftroot.com/ -b "DC=ftroot,DC=com" -LLL -s sub '(memberOf=CN=DLO-Universal Publishing,OU=Infrastructure Groups,OU=Groups,OU=OSB,OU=EMEA,DC=FTROOT,DC=com)' info  | grep ^info:\ ssh- | sed s/^info:\ //  >authorized_keys_ad
