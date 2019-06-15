LetsMove
========

A sample project that demonstrates how to move a running Mac OS X application to the Applications folder.

![Screenshot](http://i.imgur.com/euTRZiI.png)


Requirements
------------
Builds and runs on Mac OS X 10.6 or higher. Does NOT support sandboxed applications.


[[[NSWorkspace sharedWorkspace] performFileOperation:NSWorkspaceRecycleOperation]
This is deprecated, as of OS X 10.11, so no point in using it.

[[NSWorkspace sharedWorkspace] recycleURLs:]
This is probably the one you want. It's asynchronous, so your application can continue to operate while the files are being moved to the trash.

[NSFileManager trashItemAtURL:]
This is similar to option 2, but it's synchronous, and only handles one file at a time.

[NSFileManager removeItemAtPath:]
This doesn't trash the file, it deletes it permanently, and immediately.

[NSFileManager removeItemAtURL:]
This is just like option 4, except using a file:// URL instead of a path. More-convenient when you already have a URL rathe than a path.





Usage
-----

Option 1:

Build then embed LetsMove.framework into your app.

Option 2:

Copy the following files into your project:

- PFMoveApplication.h
- PFMoveApplication.m

If your project has ARC enabled, you'll want to disable ARC on the above files. You can do so by adding -fno-objc-arc compiler flag to your PFMoveApplication.m source file. See http://stackoverflow.com/questions/6646052/how-can-i-disable-arc-for-a-single-file-in-a-project/6658549#6658549

If your application is localized, also copy the 'MoveApplication.string' files into your project.

Link your application against Security.framework.

In your app delegate's "-[applicationWillFinishLaunching:]" method, call the PFMoveToApplicationsFolderIfNecessary function at the very top.


License
-------
Public domain




Code Contributors:
-------------
* Andy Kim
* John Brayton
* Chad Sellers
* Kevin LaCoste
* Rasmus Andersson
* Timothy J. Wood
* Matt Gallagher
* Whitney Young
* Nick Moore
* Nicholas Riley
* Matt Prowse
* Maxim Ananov
* Charlie Stigler


Translators:
------------
* Eita Hayashi (Japanese)
* Gleb M. Borisov, Maxim Ananov (Russian)
* Wouter Broekhof (Dutch)
* Rasmus Andersson / Spotify (French and Spanish)
* Markus Kirschner (German)
* Fredrik Nannestad (Danish)
* Georg Alexander Bøe (Norwegian)
* Marco Improda (Italian)
* Venj Chu (Simplified Chinese)
* Sérgio Miranda (European Portuguese)
* Victor Figueiredo and BR Lingo (Brazilian Portuguese)
* AppLingua (Korean)
* Czech X Team (Czech)
* Marek Telecki (Polish)
* Petar Vlahu (Macedonian)
* Václav Slavík (Hungarian, Serbian, and Turkish)
* Erik Vikström (Swedish)
* Inndy Lin (Traditional Chinese)
* aONe (Catalan)
* Marek Hrusovsky (Slovak)

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
