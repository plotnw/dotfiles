#/bin/python
import os
bob = os.popen('acpi | grep -oE \'[0-9]{1,2}\\%\'').read()
newstr = bob[:-1]


print (newstr)
