# Check if sdkman is already installed

if [[ $(command -v sdk) == "" ]]; then
    echo "Installing SDKMAN!"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Updating Homebrew"
    brew update
fi