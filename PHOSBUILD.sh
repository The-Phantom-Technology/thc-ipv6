rm -rf /opt/PHANTX/thc-ipv6

cd /opt/PHANTX

git clone https://github.com/vanhauser-thc/thc-ipv6

cd /opt/PHANTX/thc-ipv6


if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

make
make install

chmod -R 755 /opt/PHANTX
rm -rf /opt/PHOS/tool/thc-ipv6
rm -rf /opt/PHOS/tool/thc-ipv6