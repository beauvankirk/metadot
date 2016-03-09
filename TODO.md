TODO
====

- Find dead symlinks at $HOME pointing to dotfiles.
- Per-distro package dependency listing/handling.
- Check if modules are correctly installed.
- Module descriptions and dependencies.
- Module unloading and restoration.
- More file types:
  - .sample: copied if no origin file exists
  - .sh: added to the profile
  - .mkdir: are simply created
  - .cp: are copied
  - .template: are copied and transformed according to environment or config variables
