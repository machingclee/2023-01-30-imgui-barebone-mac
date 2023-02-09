# For XCode project

Signing certifcate is necessary to be done inside Xcode, to generate XCode project, run:

```bash
mkdir xcode
cd xcode
cmake -G Xcode ..
```

In case the above fails, try to find the paths explicitly by `xcrun -find cc` and `xcrun -find c++`, then:

```bash
cmake -G Xcode .. \
  -DCMAKE_C_COMPILER=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc\
  -DCMAKE_CXX_COMPILER=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++
```
