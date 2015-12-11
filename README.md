# pathutils

A set of bash scripts providing useful tools to manipulate paths.

Goals:
* Provide useful path tools not native to bash
* Cross-platform
* Simple to install

## Provided tools
These are ported to bash from the Python source for the [posixpath module][] and have the same behavior.

* `isabspath path` - whether `path` is an absolute path. No output; use its return status instead.
* `ismount path` - whether `path` is a mountpoint for some volume. Also no output; use its return status.
* `joinpath basepath relpath1 [relpath2 ...]` - add `relpath` elements onto the `basepath`.
* `samefile path1 path2` - whether two paths point to the same file. Return status only.
* `samestat path1 path2` - whether two paths have the inode and device id. Slightly faster than samefile. Also return status only.
* `splitpath path` - output `path`'s parent directory on the first line and its final element on the second line.
* `splitext path` - output everything until `path`'s last extension on the first line, and its extension on the second line.
* `normpath path` - cleanup `path` from repeated slashes, resolve double and single dots, etc.

## Not provided
Some functions provided by Python's [posixpath module][] were left out, as their functions come standard with bash.

* basename
* dirname
* islink - use `[ -h path ]`
* lexists - use `[ -e path ]`
* walk - use `find`

[posixpath module]: http://svn.python.org/projects/python/branches/release27-maint/Lib/posixpath.py
