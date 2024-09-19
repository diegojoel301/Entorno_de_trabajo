# Entorno_de_trabajo
Mi entorno netamente personalizado de bspwm, sxhkd, polybar, entre otros

## Para Gnome-Terminal

```
  dconf load /org/gnome/terminal/ < gnome-terminal-config.conf
```

Foto de mi entorno de trabajo UwU
![alt text](screenshot.png "Entorno de trabajo UwU")

## Para nerd fonts

Al menos el polybar usa nerd fonts, asi que tendremos que instalarlo (De la pagina: https://www.nerdfonts.com/font-downloads):
- MesloLG Nerd Font
- IntoneMono Nerd Font
Una vez los descomprimas (En mi caso en Descargas).

```
cp *.ttf ~/.local/share/fonts
```

Al final: 

```
fc-cache -fv
```

## ZSH, OH-MY-ZSH, Powerlevel 10k

Instalar:
```
sudo apt-get install  zsh
```

Luego

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh
```

Para P10K:

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

En /home/diegojoel301/.zshrc cambiar ZSH_THEME por:

```
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Al final:

```
p10k configure
```
