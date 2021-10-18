# sms-build-tools
Build tools for SMS games. Useful as a build helper. 

This project builds from source where possible using a CI platform so you can have some confidence in the provenance of the binaries. Builds produce new releases automatically and you can reference them by number for a stable build environment.

Note that this project is only intended to support Windows currently. Linux users should be able to figure things out for themselves.

# Contents

- [BMP2Tile](https://github.com/maxim-zhao/bmp2tile) with all [compressor DLLs](https://github.com/maxim-zhao/bmp2tilecompressors)
- [WLA DX](https://github.com/vhelin/wla-dx), generally a recent version
  - Only wlalink and wla-z80 (for now)
  - Plus my "compile.bat" helper that simplifies building single-file projects
- PSGTool 
  - for use with [PSGLib](https://github.com/sverx/PSGlib)
  - Plus a batch file wrapper
- [Flips](https://github.com/Alcaro/Flips) for making patches
- [GNU Make](https://www.gnu.org/software/make/) for build automation

Not included:

- [devKitSMS](https://github.com/sverx/devkitSMS) - you will need to pull it into your project some other way
- [SDCC](http://sdcc.sourceforge.net) - needs a full install in your build anyway

# Using

1. Download tools.7z
2. Decompress somewhere
3. Add that somewhere to the path
4. ENJOY!!!

For example, in appveyor:

```
appveyor DownloadFile https://github.com/maxim-zhao/sms-build-tools/releases/download/1.0.102/tools.7z
7z x tools.7z -oc:\tools
path %path%;c:\tools
```

You will need Java to use PSGTool. You will need Windows to use pretty much everything else.
