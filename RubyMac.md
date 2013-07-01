# How to install Ruby on Mac Using RVM

Note: This procedure employs sudo. For sudo to work, your user account must have
   * Administrative privliges.
   * A password.

You do not need to do anything about the built-in Apple Ruby: it gets hidden in your execution path by the version RVM builds.

1. Go to [connect.apple.com](http://connect.apple.com) and download the packages for the latest version XCode and the Command Line Tools. Command Line Tools are specific to your version of OS X. Supposedly you can install the CLTs within XCode, but I've had bad luck with that. Install same.

2. Download and install the MacPorts package file from http://www.macports.org/install.php. Again, version-specific packages.
3. Use MacPorts to install the GNU command line tools.
```sh
sudo port install apple-gcc42
```

4. Run the RVM install script directly from their server.
```sh
curl -#L https://get.rvm.io | bash -s stable --autolibs=3 --ruby
```

The last step requires some self-explanatory interactions and significant delays while various native-code tools are built. However, it's a significant time saver because of the way it automates complicated platform-dependent tasks.


