touch a.info
touch b.info
touch c.info
df -h | grep udev >> a.info 2>> a.error
cat /proc/meminfo | grep MemTotal >> a.info 2>> a.error
cat /proc/cpuinfo | grep cores | uniq >> a.info 2>> a.error
lspci |grep VGA >> a.info 2>> a.error
{ lspci -v -s 01:00.0 | grep Subsystem; lspci -v -s 01:00.0 | grep Memory; } >> a.info 2>> a.error
cd ~ ; ls -al  >> /users/Etu3/21213763/OPSCI/system-report/b.info 2>> b.error
cd ~ & ls -al  >> /users/Etu3/21213763/OPSCI/system-report/b.info 2>> b.error
cd ~ && ls -al  >> /users/Etu3/21213763/OPSCI/system-report/b.info 2>> b.error
du -hs >> /users/Etu3/21213763/OPSCI/system-report/b.info 2>> b.error
du -h --max-depth=1 >> /users/Etu3/21213763/OPSCI/system-report/b.info 2>> b.error
quota >> /users/Etu3/21213763/OPSCI/system-report/b.info 2>> b.error
find ~ | wc -l >> /users/Etu3/21213763/OPSCI/system-report/b.info 2>> b.error
find ~ -name *\.java| wc -l >> /users/Etu3/21213763/OPSCI/system-report/b.info 2>> b.error
ps -aux | grep ^`whoami` >> /users/Etu3/21213763/OPSCI/system-report/c.info 2>> c.error
ps -aux --sort=%mem,-%cpu | head -n 11 >> /users/Etu3/21213763/OPSCI/system-report/c.info 2>> c.error
ip route get 1.1.1.1 >> /users/Etu3/21213763/OPSCI/system-report/d.info 2>> d.error
netstat | grep tcp >> /users/Etu3/21213763/OPSCI/system-report/d.info 2>> d.error
netstat >> /users/Etu3/21213763/OPSCI/system-report/d.info 2>> d.error

#crontab -e
#0 8 * * 1 ./users/Etu3/21213763/OPSCI/system-report/report.sh

