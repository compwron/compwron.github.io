---
layout: post
title: "Threat Models"
tags:
 -
---

I am not a security expert. Here is some information that it is convenient for me to have all in one place.

### What is a threat model?

It's a list of targets that you (your organization or company) controls that an outside force would like to control or take advantage of.
 list of As a doc, it is a recording of the above in a hopefully understandable to the business and/or developers format

### What are some benefits of having a threat model? / what is the purpose of a threat model?

Impact early architectural decisions in a system and help aid in later discussions about whether it is worthwhile to invest in implementing security controls to mitigate more granular risks, so this is another good example.

### What makes a good threat model?

Granularity, descriptiveness, applicativity to a specific company/situation

### What makes a threat model "high level"?

Less code / less specific to an existing set of applications


### examples of threat models

- [http://securedrop.readthedocs.org/en/latest/development/threat_model.html](http://securedrop.readthedocs.org/en/latest/development/threat_model.html)
- [http://helenanotes.freshdesk.com/support/solutions/articles/1000056185-what-is-the-threat-model-](http://helenanotes.freshdesk.com/support/solutions/articles/1000056185-what-is-the-threat-model-)
- [https://github.com/cure53/DOMPurify/wiki/Security-Goals-&-Threat-Model](https://github.com/cure53/DOMPurify/wiki/Security-Goals-&-Threat-Model)
- [https://github.com/cryptocat/cryptocat/wiki/Threat-Model](https://github.com/cryptocat/cryptocat/wiki/Threat-Model)
- [https://github.com/google/end-to-end/wiki/Threat-model](https://github.com/google/end-to-end/wiki/Threat-model)
- [https://github.com/OWASP/threat-model-samples](https://github.com/OWASP/threat-model-samples)

### how to run Microsoft's threat modeling tool on OS X using Wine.

- Install wine with brew: - brew cask install wine
- Install winetricks: brew cask install winetricks
- Load environment varibles for Wine 32 in a new prefix: export WINEPREFIX=$HOME/.wine-tmt7 WINEARCH=win32
- Create a win32 wineprefix in homedir: winecfg
- Install corefonts and dotnet 4.5 into wineprefix: winetricks dotnet54 corefonts
- Download TMT2016: Microsoft Threat Modeling Tool 2016
- Install TMT2016 into new wineprefix: wine msiexec /i ThreatModelingTool2016.msi
- Set your Windows version to 10: winecfg Change the OS version to 10 as .net install has changed it to 2003
- Run with
- wine "~/.wine-tmt7/drive_c/Program Files/Microsoft Threat Modeling Tool 2016/TMT7.exe"
- Create a launcher that runs the command:
- WINEPREFIX=$HOME/.wine-tmt7 WINEARCH=win32 wine "~/.wine-tmt7/drive_c/Program Files/Microsoft Threat Modeling Tool 2016/TMT7.exe"

(I usually just use the whiteboard)
