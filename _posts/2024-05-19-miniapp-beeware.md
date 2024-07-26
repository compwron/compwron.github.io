---
layout: post
title: "miniapp beeware"
tags:
 -
---

```bash
mkdir bee-ssr
cd bee-ssr
python3 -m venv  bee-ssr
source bee-ssr/bin/activate
python -m pip install briefcase
briefcase new # go thru setup instructions
cd ssrB
briefcase dev
# edit code to have a mini UI as per tutorial
briefcase create # takes timeeeee on slow wifi
briefcase build
briefcase run
# briefcase package --adhoc-sign mac app build
# briefcase run -u # update, build and run the app with one command
briefcase create iOS
briefcase build iOS
# Launch Screen.storyboard: error: iOS 17.5 Platform Not Installed.

briefcase run iOS # select simulator
# briefcase run iOS -d "iPhone 15 Pro"

```