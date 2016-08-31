Based on openfrontier/gerrit

* Add MYUID and MYGID params to set running user(best to match site owner)
* Don't chown -R if can write to site repo

quick start:
```
docker run -p 8080:8080 -p 29418:29418 -e WEBURL=http://192.168.1.100:8080 -e AUTH_TYPE=LDAP -e LDAP_SERVER=192.168.1.100 -e LDAP_ACCOUNTBASE="dc=home,dc=com" -it -e MYUID=507 -e MYGID=507 -v /data/git/gerrit_site:/var/gerrit/review_site wangmuy/gerrit
```
