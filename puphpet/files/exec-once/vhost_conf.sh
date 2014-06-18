echo '<VirtualHost *:80>
     UseCanonicalName Off
     ServerName vagrant.dev
     ServerAlias *.vagrant.dev
     VirtualDocumentRoot /var/www/%-3+/web

     LogFormat "%h %l %u %t \"%r\" %>s %b" vcommon
     CustomLog /var/log/apache2/vagrant.dev-access_log vcommon
     ErrorLog /var/log/apache2/vagrant.dev-error_log
     LogLevel warn
 </VirtualHost>' >> /etc/apache2/sites-enabled/vhost.conf

/etc/init.d/apache2 reload
