[![Build Status](https://travis-ci.org/chaimleib/pathutils.svg?branch=master)](https://travis-ci.org/chaimleib/pathutils)

# pathutils

A set of shell tools for manipulating paths.

Goals:
* Provide tools to ease use of the Bourne shell
* Cross-platform:
  * Support for dash (Bourne shell) and bash v3 and v4
  * Support for OS X, Ubuntu and Cygwin
* Simple to install; no compilers needed!
* Security (avoidance of `eval`)
* Minimal dependence on external tools

## Provided tools
These are ported to the Bourne shell from the Python source for the [posixpath module][]. They should have the same behavior, please tell me if there is any difference.

* `isabspath path` - whether `path` is an absolute path. No output; use its return status instead.
* `ismount path` - whether `path` is a mountpoint for some volume. Also no output; use its return status.
* `joinpath basepath relpath1 [relpath2 ...]` - add `relpath` elements onto the `basepath`.
* `samefile path1 path2` - whether two paths point to the same file. Return status only.
* `samestat path1 path2` - whether two paths have the inode and device id. Slightly faster than samefile. Also return status only.
* `splitpath path` - output `path`'s parent directory on the first line and its final element on the second line.
* `splitext path` - output everything until `path`'s last extension on the first line, and its extension on the second line.
* `normpath path` - cleanup `path` from repeated slashes, resolve double and single dots, etc.
* `expanduser path` - spell out the user part of the path in full
* `abspath path` - convert given path to absolute path

## Not provided
Some functions provided by Python's [posixpath module][] were left out, as their functions come standard with the Bourne shell and its derivatives.

* basename
* dirname
* islink - use `[ -h path ]`
* lexists - use `[ -e path ]`
* walk - use `find`

# Testing

Automated testing is performed via Travis CI on Ubuntu 12.04 LTS/bash 4.2.25.
Development and frequent manual testing is under OS X El Capitan 10.11.2/bash 3.2.57.
More occasional manual testing is under Windows 10/Cygwin/bash 4.3.42.

To run the tests, execute `test/runalltests.sh`.

[posixpath module]: http://svn.python.org/projects/python/branches/release27-maint/Lib/posixpath.py
