#!/usr/bin/env python
import re

#pattern = re.compile(r'(\\w+(?:[-+.]\\w+)*@\\w+(?:[-.]\\w+)*\\.\\w+(?:[-.]\\w+)*)')
str = "<../homepage_school/c2b4616782cf07ec873c0090500091bddbead164.txt>"
pattern = re.compile(r'(^<\.\./homepage_school/(\S*)\.txt)')
m = re.search(pattern, str)
if m:
    print m.group(0)
    print m.group(1)
    print m.group(2)
else:
    print "None"
