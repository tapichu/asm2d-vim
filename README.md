# asm2d

asm2d-vim is a lightweight Vim plugin to add syntax highlighting to assembly
files for the asm2d assembler.  It also configures the program to use for the
`:make` command.

Full Documentation: [:help asm2d](http://vim-doc.heroku.com/view?https://raw.github.com/tapichu/asm2d-vim/master/doc/asm2d.txt)

## Installation and Usage

### Using [pathogen](https://github.com/tpope/vim-pathogen)

``` bash
cd ~/.vim
mkdir -p bundle && cd bundle
git clone git://github.com/tapichu/asm2d-vim.git
```

### Using [vundle](https://github.com/gmarik/vundle)

Add a new bundle to your `.vimrc`:

``` vim
Bundle 'tapichu/asm2d-vim'
```

Run `vim` and update your bundles:

``` vim
:BundleInstall!
```

### Manually

Copy (or symlink) the contents of this repository into the vim application
support directory:

``` bash
git clone git://github.com/tapichu/asm2d-vim.git
cd asm2d-vim
cp -R * ~/.vim
```

`asm2d` should appear as a file type and be automatically detected for files
with the `.s2d` or `.asm2d` extension.
