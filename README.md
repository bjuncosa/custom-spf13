custom-spf13
============

custom-spf13 modified to edit puppet and python

Requisites
==========

To be able to install spf13-vim you'll need to have : 
  * vim
  * git
  * curl
  * ctags (exuberant-ctags)
  * puppet (if you want puppet functionalities)

If you want to fully use puppet functionalities you should have puppet installed in your box.

As this configuration uses 256 colors you must make sure that your terminal supports 256 colors and it is configured to do so.


Installation
============

First follow the installation instructions from:

 * https://github.com/spf13/spf13-vim

git clone git://github.com/bjuncosa/custom-spf13.git
ln -s ~/custom-spf13/.vimrc.local
ln -s ~/custom-spf13/.vimrc.bundles.local
ln -s ~/custom-spf13/ftplugins ~/.vim/ftplugins

Once you've finished linking the configurations, you can enter vim and type: 

 * ":BundleInstall"
   * This will install all bundles that are missing
 * ":BundleClean"
   * This will erase the bundles which I don't need from spf13.
