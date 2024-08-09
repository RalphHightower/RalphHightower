for file in .bashrc update-gem.sh update-npm.sh
do
    if test -f $file
    then
        chmod +x $file
        chmod o-w $file
    fi
done
if test ! -d $HOME/_plugins
then
    mkdir $HOME/_plugins
    >_plugins/ext.ext.rb
fi
if test ! -d $HOME/gems
then
    mkdir $HOME/gems
fi
# Install Ruby Gems to ~/gems'
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH:.
