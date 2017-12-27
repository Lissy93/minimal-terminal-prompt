# Minimal Terminal Prompt

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/90311506c8cc4470881ac325ae682c93)](https://www.codacy.com/app/lissy93/minimal-terminal-prompt?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Lissy93/minimal-terminal-prompt&amp;utm_campaign=Badge_Grade)

A clean PS1 bash prompt, showing user, host and pathname

<p align="center">
  <img src="demo.gif" />
</p>


## Installation

Clone and cd into the repo, then just copy the desired PS1 .sh file contents into your  `~/.bashrc`
```
cat minimal-terminal-prompt.sh  >> ~/.bashrc
```

Then reload the new updated profile, either by restarting your terminal, or by running:
```
source ~/.bashrc
```

Done 😎

_(**Note (for Mac OS X):** Because by default OS X starts a login session first,
the file `~/.bash_profile` can be used in place of  `~/.bashrc`. Read more about this on this
[GNU Documentation Article](https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html). )_



##  References and Further Reading

All the information you could ever want to know about customising your bash PS1 prompt
can be found on this detailed Linux Documentation and how-to guide, by Giles Orr: http://tldp.org/HOWTO/Bash-Prompt-HOWTO/
