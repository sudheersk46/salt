puppet:
  service.running
#    - apache2

apache2:
  service.dead

copy:
  file.managed:
    - name: /tmp/hello2
    - source: salt://test/hello3
    - user: superuser
    - group: superuser
    - mode: 777


copy1:
  file.copy:
    - name: /home/superuser/salt/base/test/hello4
    - source: /home/superuser/salt/base/test/hello
    - user: superuser
    - group: superuser
    - mode: 755


hosts entry:
  host.present:
    - ip: 192.168.0.41
    - names:
      - server1.test 
      - server1


cmd run:
  cmd.run:
    - name: cat "/etc/hosts | grep server1 "
cmd.run1:
  cmd.run:
    - name: service apache2 status && service puppet status 
cmd.run2: 
  cmd.run:
    - name: cat "/tmp/hello1"
#    - name: service puppet status     

anydeskpkg:
  pkg.installed:
    - source: salt://home/superuser/salt/anydesk.deb  
#anydesk
#  pkg.removed:
#   
cmd.run3:
  cmd.run:
    - name: dpkg -i "/home/superuser/Downloads/anydesk_2.9.3-1_amd64(1).deb"


