
##
# DELUXE-USR-LOCAL-BIN-INSERT
# (do not remove this comment)
##
echo $PATH | grep -q -s "/usr/local/bin"
if [ $? -eq 1 ] ; then
    PATH=$PATH:/usr/local/bin
    export PATH
fi

##
# Your previous /Users/supinchecompilla/.profile file was backed up as /Users/supinchecompilla/.profile.macports-saved_2009-04-28_at_19:10:22
##

# MacPorts Installer addition on 2009-04-28_at_19:10:22: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql83/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2009-04-28_at_19:10:22: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

export PATH=/usr/local/mysql/bin:$PATH

##
# Your previous /Users/supinchecompilla/.profile file was backed up as /Users/supinchecompilla/.profile.macports-saved_2010-09-08_at_21:32:51
##

# MacPorts Installer addition on 2010-09-08_at_21:32:51: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH=~/bin:$PATH
export PATH=$HOME/bin:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
