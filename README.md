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

1. Open a Visual Studio develoepr tools command prompt in the wla-dx/ directory
2. `cmake . && cmake --build . --config Release -j`

Output is at `wla-dx/binaries/Release/wla*.exe`.

## PSGTool

Included as a binary, no source available.
