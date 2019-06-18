# sms-build-tools
Build tools for SMS games. Useful as a build helper.

# Building

## BMP2Tile

1. Open bmp2tile/source/bmp2tile.dpr in Delphi 7
2. Coose Project -> Build bmp2tile

Output is at `bmp2tile/source/bmp2tile.exe`.

## Tile compressor DLLs

1. Open bmp2tilecompressors/compressors/tilecompressordlls.sln in Visual Studio
2. Choose the Release/x86 configuration
3. Build -> Build All

Output is at `bmp2tilecompressors/compressors/Release/*.dll`.

## WLA DX

1. Open a Visual Studio developer tools command prompt in the wla-dx/ directory
2. `cmake . && cmake --build . --config Release -j`

Output is at `wla-dx/binaries/Release/wla*.exe`.

## PSGTool

Included as a binary, no source available. `psgtool.cmd` wraps it to make it
easier to invoke from the path.

# Using

1. Download tools.7z
2. Decompress somewhere
3. Add that somewhere to the path
4. ENJOY!!!

For example, in appveyor:

```
appveyor DownloadFile https://github.com/maxim-zhao/sms-build-tools/releases/download/1.0.48/tools.7z
7z x tools.7z -oc:\tools
path %path%;c:\tools
```

You will need Java to use PSGTool. You will need Windows to use pretty much everything else.
