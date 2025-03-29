#!/bin/bash

echo "š§¹ Tomcat servisi temizleniyor..."
systemctl stop tomcat 2>/dev/null
systemctl disable tomcat 2>/dev/null
rm -f /etc/systemd/system/tomcat.service
systemctl daemon-reexec
systemctl daemon-reload

echo "š Tomcat dosyalarÄ± siliniyor..."
rm -rf /opt/tomcat
rm -f /tmp/tomcat.tar.gz

echo "š§¼ Zulu JDK temizleniyor..."
rm -rf /usr/lib/jvm/zulu8*
rm -f /tmp/zulu8.tar.gz
rm -f /etc/profile.d/java.sh

echo "š§» .bashrc temizleniyor..."
sed -i '/source \/etc\/profile\.d\/java\.sh/d' ~/.bashrc

echo "š logo.war ile ilgili temp dosyalarÄ± siliniyor..."
rm -rf /tmp/jplatform.ear
rm -rf /tmp/jplatform_extracted
rm -rf /tmp/logo_war_extracted

echo "š Ortam deÄiÅkenleri sÄ±fÄ±rlanÄ±yor..."
unset JAVA_HOME
hash -r
