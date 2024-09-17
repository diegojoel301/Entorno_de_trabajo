#!/bin/bash

# Función para obtener la dirección IP de una interfaz si existe
get_ip() {
    local interface=$1
    if ip addr show "$interface" >/dev/null 2>&1; then
        ip_address=$(ip addr show $interface | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
        if [ -z "$ip_address" ]; then
            echo "inactive"
        else
            echo "$ip_address"
        fi
    else
        echo "inactive"
    fi
}

# Obtener las direcciones IP de ens33 y tun0
ip_ens33=$(get_ip "ens33")
ip_tun0=$(get_ip "tun0")

# Iconos personalizados con color
icon_ens33="%{F#bd93f9}󰈀%{F-}"  # Icono ens33 con color #bd93f9
icon_tun0="%{F#bd93f9}%{F-}"    # Icono tun0 con color #bd93f9

# Mostrar las direcciones IP o estado "inactive"
if [ "$ip_ens33" == "inactive" ] && [ "$ip_tun0" == "inactive" ]; then
    echo "inactive"
else
    echo "$icon_ens33 $ip_ens33 | $icon_tun0 $ip_tun0"
fi


