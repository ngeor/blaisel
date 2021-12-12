# blaisel
Bazel rules for Pascal

Requirements:

Free Pascal needs to be installed. It is expected to be on a specific path:

- `C:\lazarus\fpc\3.0.4\bin\x86_64-win64\fpc.exe` for Windows
- `/usr/local/bin/` for Mac
- `/usr/bin/` for Linux

Additionally, for Linux the `ld` binary needs to be installed in `/usr/bin/`.

Tested with:

- Bazel 4.2.1
- fpc 3.0.4
- Linux (via Vagrant), Windows

See the examples folder for examples.
