custom-spf13
============

custom-spf13 modified to edit puppet and python

Requisites
==========

To be able to install spf13-vim you'll need to have vim, git and curl installed in your machine.

If you want to fully use puppet functionalities you should have puppet installed in your box.

As this configuration uses 256 colors you must make sure that your terminal supports 256 colors and it is configured to do so.

For autocomplation to work fine, you'll need to install ctags (exuberant-ctags)

Installation
============

First follow the installation instructions from:

 * https://github.com/spf13/spf13-vim

After you have this installed, you can download the .vimrc.local and .vimrc.bundles.local files and copy them to your home directory.

When you have done this, you can enter vim and type: 

 * ":BundleInstall"
   * This will install all bundles that are missing
 * ":BundleClean"
   * This will erase the bundles which I don't need from spf13.
