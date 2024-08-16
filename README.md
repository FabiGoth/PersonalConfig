# Configuración personal de diversas aplicaciones.

Inicialmente el sistema operativo que se establece es Windows 10, el terminal que se emplea es 'Windows Terminal' y la shell es 'Powershell'.

## NeoVIM

### Requisitos

[NeoVIM](https://github.com/neovim/neovim)
~~~
winget install Neovim.Neovim
~~~

[Git](https://git-scm.com/)
~~~
winget install --id Git.Git -e --source winget
~~~

[NodeJS](https://nodejs.org/en/)
~~~
winget install --id OpenJS.NodeJS.LTS
~~~

[Ripgrep](https://github.com/BurntSushi/ripgrep)
~~~
winget install BurntSushi.ripgrep.MSVC
~~~

[Fd](https://github.com/sharkdp/fd)
~~~
winget install sharkdp.fd
~~~

[Lazygit](https://github.com/jesseduffield/lazygit)
~~~
winget install -e --id=JesseDuffield.lazygit
~~~

### Instalación

Elimine o haga una copia de seguridad de la carpeta nvim antigua por si acaso. Los siguientes comandos muestran cómo eliminar la configuración anterior.

#### Mac/Linux
~~~
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/FabiGoth/PersonalConfig.git ~/.config/nvim && nvim
~~~

#### Windows
~~~
rm -Force ~\AppData\Local\nvim
rm -Force ~\AppData\Local\nvim-data

git clone https://github.com/FabiGoth/PersonalConfig.git $ENV:USERPROFILE\AppData\Local\nvim && nvim
~~~

