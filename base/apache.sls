puppet:
  service.running
#    - apache2

apache2:
  service.dead

copy:
  file.managed:
    - name: /tmp/hello2
    - source: salt://test/hello3
    - user: user
    - group: user
    - mode: 777


copy1:
  file.copy:
    - name: /tmp/test/hello4
    - source: /tmp/test/hello
    - user: user
    - group: user
    - mode: 755


hosts entry:
  host.present:
    - ip: 192.168.0.1
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
    - source: salt://tmp/anydesk.deb  
#anydesk
#  pkg.removed:
#   
cmd.run3:
  cmd.run:
    - name: dpkg -i "/tmp/anydesk_2.9.3-1_amd64(1).deb"


