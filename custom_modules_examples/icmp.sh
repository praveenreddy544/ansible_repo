#echo "{"changed": true, "rc": 0}" gives below line output
#{changed: true, rc: 0}
# But in order to get this output {"changed": true, "rc": 0}, we have to use backslash \ to escape those double quotes. So, we have to use as 
#[chintu@h1 custom_modules_examples]$ echo "{\"changed\": true, \"rc\": 0}"
#{"changed": true, "rc": 0} ### This will be returned from above output

#!/bin/bash
ping -c 1 -w 2 127.0.0.1 >/dev/null 2>&1

if [ $? == 0 ]
then
   echo "{\"changed\": true, \"rc\": 0}"
else
   echo "{\"failed\": true, \"msg\": \"failed to ping\", \"rc\": 1}"
fi
