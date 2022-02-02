#
# Be careful, please, here its something is from /etc/skel/.bashrc
#

alias ll="ls -alths"

# lpn allows to show permission in numeric mode. For example, it's helpful for Ansible
function lpn() {
    ls -l $@ | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf("%0o ",k);print}'
}
