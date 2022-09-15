[Installing Qtile — Qtile 0.1.dev80+g62b9e59.d20220914 documentation.md](https://github.com/brandonjanssen/.config/files/9572878/Installing.Qtile.Qtile.0.1.dev80%2Bg62b9e59.d20220914.documentation.md)

## Installing From Source[¶](http://docs.qtile.org/en/latest/manual/install/index.html#installing-from-source#installing-from-source "Permalink to this heading")

### Python interpreters[¶](http://docs.qtile.org/en/latest/manual/install/index.html#installing-from-source#python-interpreters "Permalink to this heading")

We aim to always support the last three versions of CPython, the reference Python interpreter. We usually support the latest stable version of [PyPy](https://www.pypy.org/) as well. You can check the versions and interpreters we currently run our test suite against in our [tox configuration file](https://github.com/qtile/qtile/blob/master/tox.ini).

There are not many differences between versions aside from Python features you may or may not be able to use in your config. PyPy should be faster at runtime than any corresponding CPython version under most circumstances, especially for bits of Python code that are run many times. CPython should start up faster than PyPy and has better compatibility for external libraries.

### Core Dependencies[¶](http://docs.qtile.org/en/latest/manual/install/index.html#installing-from-source#core-dependencies "Permalink to this heading")

Here are Qtile's core runtime dependencies and the package names that provide them in Ubuntu. Note that Qtile can run with one of two backends -- X11 and Wayland -- so only the dependencies of one of these is required.

  
| 
Dependency

 | 

Ubuntu Package

 | 

Needed for

 |
| --- | --- | --- |
| 

**Core Dependencies**

 |
| 

[CFFI](https://cffi.readthedocs.io/en/latest/installation.html)

 | 

python3-cffi

 | 

Bars and popups

 |
| 

[cairocffi](https://cairocffi.readthedocs.io/en/stable/overview.html)

 | 

python3-cairocffi

 | 

Drawing on bars and popups (if using X11 install xcffib BEFORE installing cairocffi, see below)

 |
| 

libpangocairo

 | 

libpangocairo-1.0-0

 | 

Writing on bars and popups

 |
| 

[dbus-next](https://python-dbus-next.readthedocs.io/en/latest/index.html)

 | 

\--

 | 

Sending notifications with dbus (optional).

 |
| 

**X11**

 |
| 

X server

 | 

xserver-xorg

 | 

X11 backends

 |
| 

[xcffib](https://github.com/tych0/xcffib#installation)

 | 

python3-xcffib

 | 

required for X11 backend

 |
| 

**Wayland**

 |
| 

[wlroots](https://gitlab.freedesktop.org/wlroots/wlroots)

 | 

libwlroots-dev

 | 

Wayland backend (see below)

 |
| 

[pywlroots](https://github.com/flacjacket/pywlroots)

 | 

\--

 | 

python bindings for the wlroots library

 |
| 

[pywayland](https://pywayland.readthedocs.io/en/latest/install.html)

 | 

\--

 | 

python bindings for the wayland library

 |
| 

[python-xkbcommon](https://github.com/sde1000/python-xkbcommon)

 | 

\--

 | 

required for wayland backeds

 |

### cairocffi[¶](http://docs.qtile.org/en/latest/manual/install/index.html#installing-from-source#id2 "Permalink to this heading")

Qtile uses [cairocffi](https://cairocffi.readthedocs.io/en/stable/overview.html) for drawing on status bars and popup windows. Under X11, cairocffi requires XCB support via xcffib, which you should be sure to have installed **before** installing cairocffi; otherwise, the needed cairo-xcb bindings will not be built. Once you've got the dependencies installed, you can use the latest version on PyPI:

```
pip install --no-cache-dir cairocffi
```
