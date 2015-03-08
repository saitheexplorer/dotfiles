# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme z tab localhost

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
set fish_custom $HOME/dotfiles/fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

echo "Configuring boot2docker..."
boot2docker init > /dev/null
boot2docker up > /dev/null
boot2docker shellinit | source
