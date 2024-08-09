if test ! -d $HOME/gems
then
    mkdir $HOME/gems
fi
# Install Ruby Gems to ~/gems'
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
