lamp:
  pkg.installed:
    - pkgs:
      - apache2
      - libapache2-mod-php

/var/www/html/index.html:
 file.managed:
   - source: salt://apache/index.html

/etc/apache2/mods-enabled/userdir.conf:
 file.symlink:
   - target: ../mods-available/userdir.conf

/etc/apache2/mods-enabled/userdir.load:
 file.symlink:
   - target: ../mods-available/userdir.load

/etc/apache2/sites-available/test.example.com.conf:
  file.managed:
    - source: salt://apache/test.example.com.conf

/etc/apache2/sites-enabled/test.example.com.conf:
  file.symlink:
    - target: ../sites-available/test.example.com.conf

/etc/hosts:
  file.managed:
    - source: salt://apache/hosts

/etc/apache2/mods-available/php7.2.conf:
  file.managed:
    - source: salt://php/php7.2.conf

apache2service:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-enabled/userdir.conf
      - file: /etc/apache2/mods-enabled/userdir.load
      - file: /etc/apache2/sites-enabled/test.example.com.conf
      - file: /etc/apache2/mods-available/php7.2.conf
