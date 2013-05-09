# My complex zsh config

## Goals

1. Simple install to new instances and users
2. Use zkdb for keys settings (have a some problems)
3. It's simply work with [pythonbrew][pbrew_url] or [virtualenvwrapper][venvwrap_url]
4. Integration with [grc][grc]
5. Convenient theme

[pbrew_url]: https://github.com/utahta/pythonbrew "pythonbrew on github"
[venvwrap_url]: https://bitbucket.org/dhellmann/virtualenvwrapper "virtualenvwrapper on bitbucket"
[grc]: http://kassiopeia.juls.savba.sk/~garabik/software/grc.html "Generic Colouriser" 

## Requirements

* [zsh][zsh]
* [git][git] (for install and update)

[zsh]: http://www.zsh.org "Index to zsh information"
[git]: http://git-scm.com "git's official website"

## Installation

### Automatic

    curl -L https://github.com/zzzsochi/zsh-config/raw/master/install.sh | sh

### Manual

	git clone git://github.com/zzzsochi/zsh_config.git
	cd zsh_config
    ./install.sh install
    cd ..
    rm -rf zsh_config

## Update

    zsh_config_update

## Configuration

All configuration locate in one file: [~/zprofile][zprofile].

[zprofile]: https://github.com/zzzsochi/zsh-config/raw/master/zprofile-template "zprofile-template"
