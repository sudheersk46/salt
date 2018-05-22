apache:
 
   service.running:
    - require:
      - pkg: apache2
