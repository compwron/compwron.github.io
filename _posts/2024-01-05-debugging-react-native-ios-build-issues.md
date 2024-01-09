---
layout: post
title: "Debugging React Native IOS build issues"
tags:
 -
---

Errors and things one could try to resolve them
 

 Error: many Fix: `cd myapp && cd ios  && pod deintegrate &&  pod cache clean --all && npm cache verify &&   yarn cache clean && pod install --repo-update && cd myapp && npm run ios`

 Error: `**ERROR** Failed to apply patch for package react-native at path` Fix: `rm -rf node_modules && npm install`

 Error: `:x: error: Multiple commands produce `

 Info: `idb list-targets` shows simulators

 Error: `AppDelegate.h:1:9: 'RCTAppDelegate.h' file not found`

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



 Resources
 1. https://docs.swmansion.com/react-native-reanimated/docs/fundamentals/getting-started/#installation 
 1. https://github.com/CocoaPods/CocoaPods/blob/master/CHANGELOG.md
 1. https://cocoadocs.org/
 1. https://reactnative.dev/docs/0.71/linking-libraries-ios
 https://github.com/react-navigation/react-navigation/issues/9385
https://reactnative.dev/docs/troubleshooting
