Metadot: modular dotfile management
===================================

Metadot allows you to easilly manage and reuse existing dotfiles repositories
by simply cloning then to your `~/.dotfiles/modules` and renaming a few files.

By being modular, it's possible to create modules for specific applications
(vim, mutt, emacs, git, etc). By using git submodules or subtrees, one can even
create her own dotfile collection.

It was inspired by [holman does dotfiles](https://github.com/holman/dotfiles)
and many other initiatives but with a modular design to ease dotfile sharing as
the `metadot` code is split from the dotfiles' folder.

Another approach is to [use GNU Stow to manage your dotfiles](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html).

Instalation
-----------

Get the code:

    git clone https://git.fluxo.info/metadot

Then check the source integrity of the latest release:

    /usr/bin/git -C metadot verify-commit HEAD

Note that `/usr/bin/git` is called to avoid any other `git` wrappers or aliases
you might have available on your shell.

Save the metadot repository anywhere but make sure it's available in your `$PATH`.
I'm my config I use `~/apps/metadot`.

Then get some modules. You can get the whole standard module collection with

    metadot clone https://git.fluxo.info/rhatto/dotfiles

Or simply using

    metadot clone default

Modules names as `dotfiles` have a special meaning and are handled like collections
and are cloned directly as `~/.dotfiles`. After cloning, you can check the current
dotfiles revision using

    metadot version

Third-party collections will hardly suit your needs, so you can fetch individual
modules:

    metadot clone https://git.fluxo.info/rhatto/dotfiles/vim

Or even start your own:

    metadot create vim

In both cases your `vim` module will be available at `~/.dotfiles/modules/vim`.

You can use just one collection at a time. While you can mixed a collection with
individual modules, it's more sane to just start your own collection and keep
modules as git submodules or subtrees.

Usage
-----

The full list of commands is available with `metadot usage`. You'll probably want
to start with the following.

List existing modules:

    metadot ls

Load a module:

    metadot load <module>

Load all modules:

    metadot load --all

Backups are made whenever a module is loaded.

Updating
--------

You can fetch updates in a module collection repository using

    metadot fetch

This commands don't automatically update your working copy. Instead, it just
does a git fetch in the `remotes/origin` repository and display it's last
commit log including git signature.

You can check version differences using `metadot version` and also standard
git commands such as `git-log(1)`. Once you're satisfied and want to apply
changes to the current working copy including updating and initializing
submodules, type

    metadot merge

Layout
------

- `~/.dotfiles`: where all dotfiles modules are stored
- `~/.backups`: backups of old config files
- `~/.custom`: some modules use this folder for custom configuration overriding default parameters

Module format
-------------

Modules rest at ~/.dotfiles/modules and can be git submodules or subtrees. File format is:

    [path/]<name>[.dot][.link]

Which means files

- with a `.link` extension are linked at `$HOME`.
- with a `.dot.link` extension are converted to a dotfile: `vimrc.dot.link` is linked as `~/.vimrc`.
- with other extensions are ignored.

Also,

- file structure is preserved: `apps/scripts.link` is linked as `$HOME/apps/scripts`.
- nested structures are allowed: `config.dot/awesome.link` is linked as `$HOME/.config/awesome`.

See also
--------

Implementations:

* http://dotshare.it
* http://dotfiles.org
* https://dotfiles.github.io
* https://bitbucket.org/davidn/dotstuff
* https://github.com/staticshock/seashell
* https://wiki.archlinux.org/index.php/Dotfiles
* http://www.madewithtea.com/dotfiles-are-your-digital-backpack.html
* http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html
* https://taihen.org/managing-dotfiles-with-gnu-stow/

Configurations:

* https://github.com/xero/dotfiles

Contact
-------

Comments and patches: rhatto at riseup.net
