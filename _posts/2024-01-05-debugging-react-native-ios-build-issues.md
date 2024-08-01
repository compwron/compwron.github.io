---
layout: post
title: "Debugging React Native IOS build issues"
tags:
 -
---

Errors and things one could try to resolve them
 
 turn on lots of debugging output `defaults write com.apple.CoreSimulator DebugLogging -bool YES`

 Error: many Fix: `cd myapp && cd ios  && pod deintegrate &&  pod cache clean --all && npm cache verify &&   yarn cache clean && pod install --repo-update && cd myapp && npm run ios`

 Error: `**ERROR** Failed to apply patch for package react-native at path` Fix: `rm -rf node_modules && npm install`

 Error: `:x: error: Multiple commands produce `

```
brew tap facebook/fb
brew install idb-companion
```
 Info: `idb list-targets` shows simulators

 `xcrun simctl boot <simulator id>`

 Error: `AppDelegate.h:1:9: 'RCTAppDelegate.h' file not found`
 Fix: `"EXCLUDED_ARCHS[sdk=iphonesimulator*]" = arm64;` in 4 places

 Error: 
 ```
 :x:  ld: framework 'RNGestureHandler' not found
 :x:  clang: error: linker command failed with exit code 1 (use -v to see invocation)
 ```

 Info: `pod env`

 Info: `pod spec lint [NAME.podspec]`

 Info: `pod outdated`

 Info: available versions of a pod: `https://api.github.com/repos/CocoaPods/Specs/contents/Specs/ObjectiveSugar`

 Info: An MM file is a source code file that can contain both Objective-C and Objective-C++ programming code. It is used on MacOS and differentiates from . M files that contains Objective-C code only.

 Info: `tree -f | grep .xcodeproj | grep -v ".xcodeproj/"`

 Info: npx react-native info

 Error: `AccessibilityResources.bundle" not found`


```
# .xcode.env.local
-# This `.xcode.env` file is versioned and is used to source the environment
-# used when running script phases inside Xcode.
-# To customize your local environment, you can create an `.xcode.env.local`
-# file that is not versioned.
+set -e

-# NODE_BINARY variable contains the PATH to the node executable.
-#
-# Customize the NODE_BINARY variable here.
-# For example, to use nvm with brew, add the following line
-# . "$(brew --prefix nvm)/nvm.sh" --no-use
-export NODE_BINARY=$(command -v node)
```

`sudo xcode-select -switch /Applications/Xcodex.14.3.app`


Error: `Errno::EEXIST - File exists @ syserr_fail2_in - /Users/me/Library/Caches/CocoaPods/Pods/External/hermes-engine/a4753531c473e6dd66fefa25b5cda1bf-47986/destroot/Library/Frameworks/universal/hermes.xcframework/ios-arm64_x86_64-maccatalyst/hermes.framework/Resources` Happened during `npx react-native@0.71.8 init NewRN --version 0.71.8` (making a new react project from scratch to try to compare to a malfunctioning project) 
Fix: idk man, consider not having two projects on one laptop, especially this laptop


Error: `Build service could not create build operation: unknown error while handling message: MsgHandlingError(message: "unable to initiate PIF transfer session (operation in progress?)")`
(Suggested) Fix: restart computer

Debugging `/Volumes/Macintosh\ HD/private/tmp` see simulator IDs

XCode: `Clean Build Folder`

[https://docs.proxyman.io/debug-devices/ios-simulator](https://docs.proxyman.io/debug-devices/ios-simulator)


Network debugging

https://proxyman.io/ios
https://github.com/square/PonyDebugger



 Resources
 1. [https://docs.swmansion.com/react-native-reanimated/docs/fundamentals/getting-started/#installation](https://docs.swmansion.com/react-native-reanimated/docs/fundamentals/getting-started/#installation)
 1. [https://github.com/CocoaPods/CocoaPods/blob/master/CHANGELOG.md](https://github.com/CocoaPods/CocoaPods/blob/master/CHANGELOG.md)
 1. [https://cocoadocs.org/](https://cocoadocs.org/)
 1. [https://reactnative.dev/docs/0.71/linking-libraries-ios](https://reactnative.dev/docs/0.71/linking-libraries-ios)
 1. [https://github.com/react-navigation/react-navigation/issues/9385](https://github.com/react-navigation/react-navigation/issues/9385)
 1. [https://reactnative.dev/docs/troubleshooting](https://reactnative.dev/docs/troubleshooting)
 1. [https://developer.apple.com/support/xcode/](https://developer.apple.com/support/xcode/)
 1. release planning - pre-stage how to rollback if needed [https://forums.developer.apple.com/forums/thread/6682](https://forums.developer.apple.com/forums/thread/6682)
 1. AMAZING [https://github.com/TheoBendixson/apple-build-system-xcode-free](https://github.com/TheoBendixson/apple-build-system-xcode-free)


