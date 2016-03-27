archstation
-----------

Ansible setup for a [Samsung NP900X5L-K02US](http://www.samsung.com/us/computer/pcs/NP900X5L-K02US) [Archlinux](https://www.archlinux.org) workstation.

### initial setup

```
> wget archfi.sf.net/archfi
> chmod +x ./archfi && ./archfi
> pacman -S git make
> cd /usr/src
> git clone https://github.com/dylanmei/archstation && cd archstation
> echo "secret" > vault_pass.txt
> make bootstrap
> make
```
