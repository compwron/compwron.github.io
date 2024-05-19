---
layout: post
title: "miniapp beeware"
tags:
 -
---

```bash
mkdir bee-ssr
10190  cd bee-ssr
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
briefcase package --adhoc-sign
# briefcase run -u # update, build and run the app with one command
briefcase create iOS
briefcase build iOS
briefcase run iOS # select simulator
# briefcase run iOS -d "iPhone SE (3rd generation)::iOS 16.2"

```