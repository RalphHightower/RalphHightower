for file in .bashrc update-gem.sh update-npm.sh
do
    if test -f $file
    then
        chmod +x o-w $file
    file
done
if test ! -d $HOME/_plugins
then
    mkdir $HOME/_plugins
if
if test ! -d ~/_plugins
then
    mkdir ~/_plugins
if
if test ! -d $HOME/gems
then
    mkdir $HOME/gems
fi
if test ! ~/gems
then
    mkdir ~/gems
fi
# Install Ruby Gems to ~/gems'
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
