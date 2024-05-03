#!/bin/bash

# Global configuration parameters
git config --global user.name "devsysape"
git config --global user.email 153757825+devsysape@users.noreply.github.com
git config --global color.ui true
git config --global pull.rebase true
git config --global pull.default current
git config --global push.default current

# Optional but helpful aliases
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
#git config --global alias.ls log --oneline
