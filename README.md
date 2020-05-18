# Gala
[![Translation status](https://l10n.elementary.io/widgets/desktop/-/gala/svg-badge.svg)](https://l10n.elementary.io/engage/desktop/?utm_source=widget)

A window & compositing manager based on libmutter and designed by elementary for use with Pantheon.

## Building, Testing, and Installation

You'll need the following dependencies:
* meson
* gettext (>= 0.19.6)
* gnome-settings-daemon-dev (>= 3.15.2),
* gsettings-desktop-schemas-dev
* libbamf3-dev
* libcanberra-dev
* libcanberra-gtk3-dev
* libclutter-1.0-dev (>= 1.12.0)
* libgee-0.8-dev
* libglib2.0-dev (>= 2.44)
* libgnome-desktop-3-dev
* libgranite-dev (>= 5.3.0)
* libgtk-3-dev (>= 3.4.0)
* libmutter-0-dev (>= 3.23.90) | libmutter-dev (>= 3.14.4)
* libplank-dev (>= 0.10.9)
* libxml2-utils
* valac (>= 0.28.0)

Run this to install all dependencies

```
sudo apt install meson libbamf3-dev libplank-dev libgranite-dev libgnome-desktop-3-dev gnome-settings-daemon-dev libmutter-2-dev libcanberra-dev libcanberra-gtk3-dev
```

## Notes on enabling Blur

May not work inside of a VM and you will need to copy the hex value of specific Window Id's to activate the blur.

https://github.com/elementary/gala/issues/424

May want to use the BlurWindow.vala gist and compile it.

https://gist.github.com/rbreaves/444909167e6658096d1f02529f8eb991

Unknown if I successfully merged this with the latest Gala release or not as of 5/18/2020


Run `meson build` to configure the build environment. Change to the build directory and run `ninja` to build

    meson build --prefix=/usr
    cd build
    ninja

You can set the `documentation` option to `true` to build the documentation. In the build directory, use `meson configure`

    meson configure -Ddocumentation=true

To install, use `ninja install`, then execute with `gala --replace`

    sudo ninja install
    gala --replace
