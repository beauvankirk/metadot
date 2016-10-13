TODO
====

* Dependency handling with `deps/$distro` and `deps/modules` files.
* Check if modules are correctly installed: find dead and missing symlinks.
* Module descriptions and dependencies.
* Module unloading and restoration.
* More file types:
  * .sample: copied if no origin file exists
  * .sh: added to the profile
  * .mkdir: are simply created
  * .cp: are copied
  * .template: are copied and transformed according to environment or config variables
