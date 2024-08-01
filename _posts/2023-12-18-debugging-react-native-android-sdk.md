---
layout: post
title: "Debugging React Native Android SDK"
tags:
 -
---

Step one, stare at [https://reactnative.dev/docs/environment-setup?platform=android](https://reactnative.dev/docs/environment-setup?platform=android)

The original problem looked like `npm run android` starting a metro server and then hanging forever. 

The problem was actually that I had a version of `cmdline-tools` (11) that was too new for the version of java (zulu11) that my react native (0.71) was using.

The fix was to install the older version in Android Studio and prepend it to my path with `PATH="$ANDROID_HOME/cmdline-tools/10.0/bin:$PATH"`

The journey to finding this included (partial list):

Noticing that `adb shell` also hung forever

`sudo dtruss adb` to see why it was hanging

`codesign --remove-signature adb` to allow `dtruss` to run

And before that, having to turn off system integrity protection for dtruss by restarting into recovery mode and running `csrutil disable`

`xattr -d com.apple.provenance <path to adb>` which did not work for unknown reasons - gave up on dtruss

`python -m http.server` and then visit localhost:8000 to check that there wasn't a firewall blocking adb from itself

`adb kill-server` because `lsof` claimed that we had two adbs

`emulator` threw a useful exception indicating wrong java version of... something... 

`which emulator`

`xattr -d com.apple.quarantine [which emulator]`

checked in Android Studio and the emulator was present and launched, BUT `emulator -list-avds` threw same java version exception - therefore it's a commandline tools issue

`grep -rin "Required for building and installing your app on Android" node_modules` to find where the message was from - it turned out to be [cli-doctor/src/tools/envinfo.ts](https://github.com/react-native-community/cli/blob/main/packages/cli-doctor/src/tools/envinfo.ts) which got it from https://github.com/tabrindle/envinfo/blob/main/src/helpers/sdks.js](https://github.com/react-native-community/cli/blob/main/packages/cli-doctor/src/tools/envinfo.ts which got it from [tabrindle/envinfo sdks.js](https://github.com/tabrindle/envinfo/blob/main/src/helpers/sdks.js)

`type -a sdkmanager` see the location of all installed versions of a command on the PATH!!!

```
bash -x `type sdkmanager` --list # see script execute line by line - easier than reading it, when it errors halfway
```

At this point, it was clear that the wrong version was installed in Android Studio, but not clear which version was correct. So just install several versions and try them one by one like this: `env PATH="$ANDROID_HOME/cmdline-tools/10.0/bin:$PATH" sdkmanager --list` until you find one that doesn't throw bad java version exceptions

Double check by running `env PATH="$ANDROID_HOME/cmdline-tools/10.0/bin:$PATH" npx react-native doctor` and see it work

Now that the answer is clear, add the PATH prepend to your `.zshrc` and to your PR / documentation as needed

Close and restart terminal and Android Studio to check that it works even when restarted


Addenda

If you see an error like

```
01-04 22:53:03.957 91262 7506869 I adb     : main.cpp:63 Android Debug Bridge version 1.0.41
01-04 22:53:03.957 91262 7506869 I adb     : main.cpp:63 Version 34.0.5-10900879
...
01-04 22:53:03.958 91262 7506869 I adb     : transport_mdns.cpp:237 Openscreen mdns discovery enabled
01-04 22:53:04.574 91262 7506869 F adb     : main.cpp:165 could not install smartsocket listener: Address already in use
```

Then look for your multiple running servers with:
`pgrep -lfi adb`

and kill them with:
`pkill -lfi adb`


Other stuff:

`adb shell "cmd uimode night yes"`
`adb shell "cmd uimode night no"`

very noisy ADB debugging: `export ADB_TRACE=all`


[compilesdkversion-minsdkversion-targetsdkversion](https://medium.com/androiddevelopers/picking-your-compilesdkversion-minsdkversion-targetsdkversion-a098a0341ebd)