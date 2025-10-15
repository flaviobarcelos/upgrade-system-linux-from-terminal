🧰 **System Upgrade Script (Bash)**

Script em Bash para automatizar o processo de atualização completa do sistema em distribuições baseadas em Ubuntu.

O objetivo é simplificar a manutenção do ambiente Linux, centralizando a atualização dos pacotes APT, Flatpak e Snap em um único comando, com feedback visual e mensagens claras em cada etapa. Inclui também uma opção interativa para iniciar o upgrade da versão do sistema operacional.

**Principais recursos**

-   Atualização automática de pacotes APT (`update`, `upgrade`, `autoremove`).
-   Atualização de aplicativos Flatpak e Snap.
-   Exibição de informações do sistema via `neofetch` (se instalado).
-   Pergunta interativa para executar o upgrade de versão do sistema (`do-release-upgrade`).

Ideal para quem quer manter o sistema sempre limpo, atualizado e sem complicação.

---

### **Como Usar**

Primeiro, certifique-se de ter o `git` instalado. Depois, clone o repositório e dê permissão de execução ao script.

```bash
# Clone este repositório
git clone [https://github.com/flaviobarcelos/upgrade-system-linux-from-terminal.git](https://github.com/flaviobarcelos/upgrade-system-linux-from-terminal.git)

# Navegue até o diretório criado
cd upgrade-system-linux-from-terminal

# Dê permissão de execução ao script
chmod +x upgrade-system.sh
```

Agora, você tem duas opções para executá-lo:

**Opção 1: Execução Direta**
Execute o script diretamente do terminal. Este método é ideal para uso rápido ou para testar.
```
sudo ./upgrade-system.sh
```

**Opção 2: Instalar como um Comando de Sistema**
``` 
# Mova o script para o diretório de binários locais
sudo mv upgrade-system.sh /usr/local/bin/upgrade-system

# Agora, você pode executá-lo de qualquer diretório
sudo upgrade-system
```

---

**Contribuição**

Sinta-se à vontade para abrir uma issue para relatar bugs ou sugerir novas funcionalidades. Pull requests são sempre bem-vindos!
