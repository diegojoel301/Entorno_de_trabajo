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
