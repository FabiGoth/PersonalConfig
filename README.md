# Configuración personal de diversas aplicaciones.

Inicialmente el sistema operativo que se establece es Windows 10, el terminal que se emplea es 'Windows Terminal' y la shell es 'Powershell'.

## NeoVIM

### Requisitos

[NeoVIM](https://github.com/neovim/neovim)
~~~
winget install Neovim.Neovim
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

