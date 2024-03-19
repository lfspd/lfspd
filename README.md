## Linux For SPD

This is the base system for SPD software docker container.

The main features of the distro:
- minimalistic linux distribuition (no X11, no GUIs, no mans, no locales etc.).
    
  supposed that all applications will run in docker container in batch mode
- all packages built from sources, including system ones
- minimized by size (compiled with size optimization flags + stripped & cleaned) 
- set of packages for scientific programming <b>[Readme/packages.md](Readme/packages.md)</b>
- the latest versions of all the packages : glibc, gcc, perl, cmake, python etc.
- packages installed in <code>/usr /usr/local</code>. Greatly simpifies <b>setup scripts</b>
- customizable. Package not needed - comment it out & rebuild. To add  - valeriy.onuchin@yandex.ru 

Based on the Linux From Scratch project https://www.linuxfromscratch.org/

<b>[BuildFromScratch.md](BuildFromScratch.md)</b> - how to build the distro from scratch

<b>[RunDistro.md](RunDistro.md)</b> - how to run the distro on a local machine

<b>[Readme/packages.md](Readme/packages.md)</b> - packages included in the distro and their descriptions

<b>[Readme](Readme)</b> - directory with detailed info

<b>[Supposed cycle of work for the end user (physicist)](UserDevCycle.md)

<b>[TODO](TODO.md)</b>

It contains <b> > 170</b> packages with the size of the distribution <b>~4.2 Gb </b>.</br>
That includes <b>2.2 Gb </b> of Geant4 data. 
