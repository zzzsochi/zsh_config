# My config for zsh

## Goals

1. Simple install to new instances and users
2. Use zkdb for keys settings (have a some problems)
3. It's simply work with [pythonbrew][pybrew_url] or [virtualenvwrapper][venvwrap_url]
4. Integration with [grc][grc]
5. Convenient theme

## Requirements

* [zsh][zsh]
* [git][git] (for install and update)
* [culr][curl] (for quick install)
* [pip][pip] (for install [pythonbrew][pybrew_url] or [virtualenvwrapper][venvwrap_url])

## Installation

### Automatic

    curl -L https://raw.github.com/zzzsochi/zsh_config/master/install.sh | zsh

**Warning!** This command quietly rewrite your `~/.zshrc` and `~/.zsh`.

### Manual

    git clone git://github.com/zzzsochi/zsh_config.git ~.zsh
    ln -s ~/.zsh/zshrc ~/.zshrc
    cp ~/.zsh/zprofile-template .zprofile
    vim ~/.zprofile
    logout

## Update

    zsh_config_update

## Configuration

All configuration locate in one file: [~/.zprofile][zprofile].

### pythonbrew

For use [pythonbrew][pybrew_url] you must set `PYTHON_MANAGER=pythonbrew` in [~/.zprofile][zprofile], restart zsh (relogin) and execute `$ setup_python_manager`.

**None:** While my [pull request][pybrew_pull_request] not accepted to the [pythonbrew][pybrew_url] repository, you must use `$ setup_python_manager -f` for setup the pythonbrew.

## TODO

* Fix install.sh for work with `bash` and `sh`
* Function for install and prepare [virtualenvwrapper][venvwrap_url]
* Bug: on Debian 7 [grc][grc] working incorrectly

[pybrew_url]: https://github.com/utahta/pythonbrew "pythonbrew on github"
[venvwrap_url]: https://bitbucket.org/dhellmann/virtualenvwrapper "virtualenvwrapper on bitbucket"
[grc]: http://kassiopeia.juls.savba.sk/~garabik/software/grc.html "Generic Colouriser" 
[zsh]: http://www.zsh.org "Index to zsh information"
[git]: http://git-scm.com "git's official website"
[curl]: http://curl.haxx.se/ "$ sudo aptitude install curl"
[pip]: http://pip-installer.org "A tool for installing and managing Python packages"

[zprofile]: https://github.com/zzzsochi/zsh_config/blob/master/zprofile-template "zprofile-template"

[pybrew_pull_request]: https://github.com/utahta/pythonbrew/pull/125 "Return codes in shell scripts"
