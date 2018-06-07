#!/usr/bin/env python
import OpenSSL
import ssl, socket
import sys
from datetime import datetime
from datetime import date
try:
	domain= sys.argv[1]
	today = datetime.now()
	cert=ssl.get_server_certificate((domain, 443))
	x509 = OpenSSL.crypto.load_certificate(OpenSSL.crypto.FILETYPE_PEM, cert)
	endDay = datetime.strptime(x509.get_notAfter().decode('ascii'), '%Y%m%d%H%M%SZ')
	daysLeft =  abs(endDay - today)
	print daysLeft.days
except Exception as e:
	print(e)
