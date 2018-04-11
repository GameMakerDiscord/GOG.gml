Maintained by: YellowAfterlife

This extension wraps GOG.com SDK for use in GameMaker: Studio and GameMaker Studio 2 games.

It covers the basic functionality - achievements, stats, and leaderboards, plus a few other commonly used functions.

Naming convention used here follows that of built-in Steam functions, so if you've done Steam integrations for games before, you'll have an easy enough time with this.

**Note:** you need to be an approved developer on GOG Galaxy Dev Portal to make use of Galaxy SDK.

## Quick links
* [Pre-built extension files and test project](https://yellowafterlife.itch.io/gog-gml)
* [Documentation](https://yal.cc/r/18/gog/) (includes [setup instructions](http://yal.cc/r/18/gog/#setup))

## Building
Download or clone the repository.

Create a "GOG" directory and extract [GOG SDK](https://devportal.gog.com/panel/components/sdk) (v1.113.3 was used as of writing this) into there.

Binaries are then built as following:

* **Windows:**
  Open the included Visual Studio project (GOG.gml.sln; VS2015 was originally used) and compile for x86.
  
  This will also automatically set up new functions in the extension if you have [gmxgen](https://bitbucket.org/yal_cc/gmxgen) added to your PATH.
* **Mac OS:** Run `build-osx.sh`. You'll need XCode command line tools installed.

Once new binaries were made, you can either add the updated extension to your project directly (by drag-and-dropping it onto the workspace area in GMS1/GMS2) or open the test project in GMS1, export the extension to GMEZ, and import it to your project.

## Special thanks

* David of [Vertigo Gaming](http://www.vertigogaming.net/) for sponsoring initial development of this extension for use in *Cook, Serve, Delicious!* and *Cook, Serve, Delicious! 2!!*.
