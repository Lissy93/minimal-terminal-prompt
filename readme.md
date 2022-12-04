<!-- Title + Description -->
<h1 align="center">📟 Minimal Terminal Prompt</h1>
<p align="center">
  <i>A clean PS1 bash prompt, showing user, host, pathname and git status</i><br>
</p>

<!-- Screenshots -->
<p align="center"><img width="650" src="demo.gif" /></p>

<!-- Docs -->

### Bash Installation

Clone and cd into the repo, then copy the desired PS1 .sh file contents into your  `~/.bashrc`.
Then just reload your bash profile (either restart your cmd, or run the  source command)

```bash
git clone https://github.com/Lissy93/minimal-terminal-prompt.git

cd minimal-terminal-prompt

cat minimal-terminal-prompt.sh  >> ~/.bashrc

source ~/.bashrc
```

Done 😎

_**Note, for Mac OS X:** Because by default OS X starts a login session first,
the file `~/.bash_profile` can be used in place of  `~/.bashrc`. Read more about this on this
[GNU Documentation Article](https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html)._


**References and Further Reading:** All the information you could ever want to know about customising your bash PS1 prompt
can be found on this detailed Linux Documentation and how-to guide, by Giles Orr:
[TLDP: Bash Prompt How-To](http://tldp.org/HOWTO/Bash-Prompt-HOWTO/)


### ZSH Installation

To install this theme for use in [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh),
clone this repository into your OMZ `custom/themes` directory.

```bash
$ git clone https://github.com/Lissy93/minimal-terminal-prompt.git ~/.oh-my-zsh/custom/themes
```

You then need to select this theme in your ~/.zshrc:

```bash
ZSH_THEME="minimal-terminal-prompt"
```

Done 😎

For more information, [see this guide about setting ZSH themes](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization#overriding-and-adding-themes).


<!-- Line Break -->
<hr />

<!-- License + Copyright -->
<p  align="center">
  <i>© <a href="https://aliciasykes.com">Alicia Sykes</a> 2017</i><br>
  <i>Licensed under <a href="https://gist.github.com/Lissy93/143d2ee01ccc5c052a17">MIT</a></i><br>
  <a href="https://github.com/lissy93"><img src="https://i.ibb.co/4KtpYxb/octocat-clean-mini.png" /></a>
</p>

<!-- Dinosaur -->
<!-- 
                        . - ~ ~ ~ - .
      ..     _      .-~               ~-.
     //|     \ `..~                      `.
    || |      }  }              /       \  \
(\   \\ \~^..'                 |         }  \
 \`.-~  o      /       }       |        /    \
 (__          |       /        |       /      `.
  `- - ~ ~ -._|      /_ - ~ ~ ^|      /- _      `.
              |     /          |     /     ~-.     ~- _
              |_____|          |_____|         ~ - . _ _~_-_
-->

