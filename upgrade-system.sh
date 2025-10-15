#!/bin/bash

echo "=============================="
echo "System Upgrade..."
echo "========== APT PACKAGES =========="

# Update APT
echo "🔄 Updating APT packages..."
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
echo "✅ APT packages updated!"

echo "========== FLATPAK & SNAP PACKAGES =========="

# Update Flatpak (Flathub)
if command -v flatpak &> /dev/null; then
    echo "🔄 Updating Flatpak apps..."
    flatpak update -y
    echo "✅ Flatpak updated!"
else
    echo "⚠ Flatpak not found, skipping..."
fi

# Update Snap
if command -v snap &> /dev/null; then
    echo "🔄 Updating Snap packages..."
    sudo snap refresh
    echo "✅ Snap updated!"
else
    echo "⚠ Snap not found, skipping..."
fi

echo "========== DO RELEASE UPGRADE =========="

# Ask if user wants to upgrade OS version
read -p "Deseja atualizar o sistema operacional para a próxima versão? (s/N): " choice
case "$choice" in 
  [sS]|[sS][iI])
    echo "🚀 Iniciando atualização do sistema operacional..."
    sudo do-release-upgrade -d
    ;;
  *)
    echo "⏭ Atualização do sistema operacional ignorada."
    ;;
esac

echo "========== SYSTEM INFO  =========="
# Show system info
if command -v neofetch &> /dev/null; then
    neofetch
else
    echo "ℹ️ System info tool 'neofetch' not found."
fi

echo "=============================="
echo "System upgrade complete!"
echo "=============================="

