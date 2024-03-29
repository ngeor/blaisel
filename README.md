# blaisel

Bazel rules for Pascal

## Requirements

Free Pascal needs to be installed. It is expected to be on a specific path:

- `C:\opt\lazarus\fpc\3.2.2\bin\x86_64-win64\fpc.exe` for Windows
- `/usr/local/bin/` for Mac
- `/usr/bin/` for Linux

Additionally, for Linux the `ld` binary needs to be installed in `/usr/bin/`.

Tested with:

- Bazel 5.3.2
- fpc 3.2.2
- Linux (via Vagrant), Windows

## Examples

See the examples folder for examples.

The C example does not work on Windows.

## Usage

```py
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "blaisel",
    sha256 = "86c53e1ca8f673a8be69925090da6cf1d328b6af4c568d1c1bfc8e926dd1220e",
    urls = [
        "https://github.com/ngeor/blaisel/archive/refs/tags/v0.3.0.zip"
    ],
    strip_prefix = "blaisel-0.3.0"
)
```

## Rules documentation

<!-- Generated with Stardoc: http://skydoc.bazel.build -->


Bazel rules for building Pascal code with Free Pascal Compiler.


<a id="#fpc_binary"></a>

## fpc_binary

<pre>
fpc_binary(<a href="#fpc_binary-name">name</a>, <a href="#fpc_binary-deps">deps</a>, <a href="#fpc_binary-src">src</a>)
</pre>

Creates a program with the FPC compiler

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="fpc_binary-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/docs/build-ref.html#name">Name</a> | required |  |
| <a id="fpc_binary-deps"></a>deps |  -   | <a href="https://bazel.build/docs/build-ref.html#labels">List of labels</a> | optional | [] |
| <a id="fpc_binary-src"></a>src |  -   | <a href="https://bazel.build/docs/build-ref.html#labels">Label</a> | required |  |


<a id="#fpc_library"></a>

## fpc_library

<pre>
fpc_library(<a href="#fpc_library-name">name</a>, <a href="#fpc_library-deps">deps</a>, <a href="#fpc_library-src">src</a>)
</pre>

Creates a shared library with the FPC compiler

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="fpc_library-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/docs/build-ref.html#name">Name</a> | required |  |
| <a id="fpc_library-deps"></a>deps |  -   | <a href="https://bazel.build/docs/build-ref.html#labels">List of labels</a> | optional | [] |
| <a id="fpc_library-src"></a>src |  -   | <a href="https://bazel.build/docs/build-ref.html#labels">Label</a> | required |  |


<a id="#fpc_unit"></a>

## fpc_unit

<pre>
fpc_unit(<a href="#fpc_unit-name">name</a>, <a href="#fpc_unit-deps">deps</a>, <a href="#fpc_unit-src">src</a>)
</pre>

Creates a unit with the FPC compiler

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="fpc_unit-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/docs/build-ref.html#name">Name</a> | required |  |
| <a id="fpc_unit-deps"></a>deps |  -   | <a href="https://bazel.build/docs/build-ref.html#labels">List of labels</a> | optional | [] |
| <a id="fpc_unit-src"></a>src |  -   | <a href="https://bazel.build/docs/build-ref.html#labels">Label</a> | required |  |
