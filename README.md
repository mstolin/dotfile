# dotfiles

# Software

## Install intellij

1. Download and unpack
    ```sh
    $ sudo tar -xzf ideaIU.tar.gz -C /opt
    ```
    See https://www.jetbrains.com/help/idea/installation-guide.html#standalone

2. Change ownership 
    ```sh
    $ sudo chmod -R g+w /opt/idea-*
    $ sudo chown -R root:wheel /opt/idea-*
    ```
    See https://intellij-support.jetbrains.com/hc/en-us/community/posts/360007671779-How-to-upgrade-intelliJ-on-Linux

3. If needed, create a desktop entry via *Tools > Create Desktop Entry*
