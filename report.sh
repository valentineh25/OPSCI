touch a.info
touch b.info
touch c.info
df -h | grep udev >> a.info 2>> a.error
cat /proc/meminfo | grep MemTotal >> a.info 2>> a.error
cat /proc/cpuinfo | grep cores | uniq >> a.info 2>> a.error
lspci |grep VGA >> a.info 2>> a.error
{ lspci -v -s 01:00.0 | grep Subsystem; lspci -v -s 01:00.0 | grep Memory; } >> a.info 2>> a.error
cd ~ ; ls -al  >> /users/Etu3/21213763/OPSCI/system-report/a.info 2>> a.error
cd ~ & ls -al  >> /users/Etu3/21213763/OPSCI/system-report/a.info 2>> a.error
cd ~ && ls -al  >> /users/Etu3/21213763/OPSCI/system-report/a.info 2>> a.error
du -hs >> /users/Etu3/21213763/OPSCI/system-report/a.info 2>> a.error
du -h --max-depth=1 >> /users/Etu3/21213763/OPSCI/system-report/a.info 2>> a.error
quota >> /users/Etu3/21213763/OPSCI/system-report/a.info 2>> a.error
find ~ | wc -l >> /users/Etu3/21213763/OPSCI/system-report/a.info 2>> a.error
find ~ -name *\.java| wc -l >> /users/Etu3/21213763/OPSCI/system-report/a.info 2>> a.error
ps -aux | grep ^`whoami` >> /users/Etu3/21213763/OPSCI/system-report/a.info 2>> a.error
ps -aux --sort=%mem,-%cpu | head -n 11 >> /users/Etu3/21213763/OPSCI/system-report/a.info 2>> a.error
