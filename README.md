# Configuración personal de diversas aplicaciones.

Inicialmente el sistema operativo que se establece es Windows 10, el terminal que se emplea es 'Windows Terminal' y la shell es 'Powershell'.

## Terminal Windows

### Requisitos

[Windows Terminal](https://github.com/microsoft/terminal)
~~~
winget install --id Microsoft.WindowsTerminal -e
~~~

[PowerShell](https://github.com/PowerShell/PowerShell)
~~~
winget install --id Microsoft.Powershell --source winget
~~~

[PSReadLine](https://github.com/PowerShell/PSReadLine)
~~~
Install-Module PSReadLine
~~~

[Oh My Posh](https://github.com/jandedobbeleer/oh-my-posh)
~~~
winget install JanDeDobbeleer.OhMyPosh -s winget
~~~

[Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
~~~
Install-Module -Name Terminal-Icons -Repository PSGallery
~~~

[Nerd Fonts](https://www.nerdfonts.com/)

<https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.zip>

>Descomprimir e instalar las fuentes 

### Instalación

Una vez instalado los requisitos hay que editar las siguientes configuraciones:

    - Windows Terminal
        Copiar o editar el fichero \'settings.json\' de la ruta $ENV:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_\[Ident\]\LocalState\settings.json

    - Perfil PowerShell
        Copiar o editar el fichero \'Microsoft.PowerShell_profile.ps1\' de la ruta $ENV:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

    - Tema Oh My Posh
        Copiar el fichero \'arkanvongothic.omp.json\' de la ruta $ENV:POSH_THEMES_PATH\arkanvongothic.omp.json

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

[MinGW](https://github.com/niXman/mingw-builds-binaries/releases)

<https://github.com/niXman/mingw-builds-binaries/releases/download/13.2.0-rt_v11-rev1/x86_64-13.2.0-release-posix-seh-ucrt-rt_v11-rev1.7z>

>Descomprimir en el \'C:\Program Files\MinGW64\' y añadir en el \'PATH\' la linea \'C:\Program Files\MinGW64\bin\'.
>Dentro de la carpeta \'C:\Program Files\MinGW64\bin' hay que renombrar el fichero \'mingw32-make.exe\' a \'make.exe\'.

[LuaRocks](https://luarocks.org/)

<http://luarocks.github.io/luarocks/releases/luarocks-3.11.1-windows-64.zip>

>Descomprimir en el \'C:\Program Files\LuaRocks\' y añadir en el \'PATH\' a esta carpeta.

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

### LSP

* **Resaltado:** *treesitter.lua*
* **LSP:** *mason.lua, lspconfig.lua*
* **DAP:** \[nvim.dap y nvim-dap-ui\] (Es un debugeador y está sin configurar)
* **Linter:** *linting.lua*
* **Formatters:** *formatting.lua*

Con el comando \':InspectTree\' podemos comprobar la sintaxis y con \':Mason\' veremos los LSP que están instalados.


