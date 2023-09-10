---
layout: post
title: "zoom-deepface"
tags:
 -
---

Notes from trying to piece together legos to run "connect to zoom and run an emotion analyzer"

https://www.xfce.org/

https://gitlab.desy.de/frank.schluenzen/headless-xfce 

https://orbstack.dev/

https://pyautogui.readthedocs.io/en/latest/

zoom section of http://techno-fandom.org/~hobbit/

https://tigervnc.org/ server vs viewer

`ICE-unix`

https://github.com/parMaster/zoomrs (might be better?)

https://github.com/kastldratza/zoomrec (launched, notes below)

https://devforum.zoom.us/t/are-meeting-recordings-done-in-single-channel-or-multiple-channels/69733/3 multiple audio channels can do yay


`PYTHONUNBUFFERED`


write a cube yaml for launching this thing and deepface, and a secret third thing that... stictches them togetehr on demand... desktop overlay rather than webcam... 


actual code notes



```
diff --git a/example/meetings.csv b/example/meetings.csv
index 564effd..bc3ea17 100755
--- a/example/meetings.csv
+++ b/example/meetings.csv
@@ -1,4 +1,2 @@
 weekday;time;duration;id;password;description;record;
-monday;09:55;60;111111111111;741699;Important_Meeting;true;
-monday;14:00;90;222222222222;321523;Unimportant_Meeting;false;
-tuesday;17:00;90;https://zoom.us/j/123456789?pwd=abc;;Meeting_with_URL;true;
+sunday;10:02;11111111;https://somecompany.zoom.us/j/85424287323?pwd=redacted;;Meeting_with_URL;true;
diff --git a/res/entrypoint.sh b/res/entrypoint.sh
index f47675c..0f1eeeb 100755
--- a/res/entrypoint.sh
+++ b/res/entrypoint.sh
@@ -52,13 +52,20 @@ pactl load-module module-remap-source master=microphone.monitor source_name=micr
 pactl set-source-volume 3 60%
 
 echo -e "\nStart script.."
-sleep 5
+sleep 1
 
+ps aux
+export
+
+set -x
+export SESSION_MANAGER=$(cat ~/.ICEauthority | perl -pe 's/.*(local.*?unix\/\d*).*/$1/'),$(cat ~/.ICEauthority | perl -pe 's/.*(local.*?unix\/\d*).*/$1/; s/local/unix/')
+export DEBUG=True
 # Start python script in separated terminal
 if [[ "$DEBUG" == "True" ]]; then
   # Wait if something failed
-  xfce4-terminal -H --geometry 85x7+0 --title=zoomrec --hide-toolbar --hide-menubar --hide-scrollbar --hide-borders --zoom=-3 -e "python3 -u ${HOME}/zoomrec.py"
+  xfce4-terminal -H --geometry 85x7+0 --title=zoomrec --hide-toolbar --hide-menubar --hide-scrollbar --hide-borders --zoom=-3 -e "/bin/bash -c 'PYTHONUNBUFFERED=1 python3 -u ${HOME}/zoomrec.py |& tee -a /proc/1/fd/1'"
 else
   # Exit container if something failed
   xfce4-terminal --geometry 85x7+0 --title=zoomrec --hide-toolbar --hide-menubar --hide-scrollbar --hide-borders --zoom=-3 -e "python3 -u ${HOME}/zoomrec.py"
-fi
\ No newline at end of file
+fi
+sleep 10000
```


```
docker run --rm -e TZ=US/Pacific -v $(pwd)/example/meetings.csv:/home/zoomrec/meetings.csv:ro --security-opt seccomp:unconfined -it $(docker build -q .)
```

TODO zoomrec:794 - add something to check if the zoom meeting has ended early or something
```
  -v $HOME/Documents/Movies:/home/zoomrec/recordings \
  -v $HOME/Documents/Music:/home/zoomrec/audio \
```

```
export DEEPFACE_TARGET=~/Documents/deepface-shallow
git clone https://github.com/serengil/deepface.git --depth 1 $DEEPFACE_TARGET
python3 -m pip install deepface
python3 -c 'from deepface import DeepFace; from pathlib import Path; import os; DeepFace.stream(str(Path(os.environ['DEEPFACE_TARGET']).expanduser()))'
```


