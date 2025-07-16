cat << "EOF"

        ███████╗██╗██╗   ██╗███████╗███╗   ███╗     
        ██╔════╝██║██║   ██║██╔════╝████╗ ████║
        █████╗  ██║██║   ██║█████╗  ██╔████╔██║    
        ██╔══╝  ██║╚██╗ ██╔╝██╔══╝  ██║╚██╔╝██║   
        ██║     ██║ ╚████╔╝ ███████╗██║ ╚═╝ ██║
        ╚═╝     ╚═╝  ╚═══╝  ╚══════╝╚═╝     ╚═╝
                    FiveM Build

     Support : https://discord.gg/8Xq278uazs
          Credit : https://rawhost.fr
                       
EOF
supported="Debian, Ubuntu"

COLOR1='\033[0;32m'
COLOR2='\033[0;31m'
COLOR3='\33[0;33m'
NC='\033[0m'

 if [ "$(id -u)" != "0" ]; then
        printf "${RED}ERREUR: Vous devez obligatoirement utiliser l'utilisateur root pour faire cette opération. ⛔️\\n" 1>&2
        printf "\\n"
        exit 1
fi
    printf "${COLOR2}  💻 OS pris en charge par le script : $supported 💻\\n"
    printf "${NC}\\n"    
    sleep 5

echo
    printf "${COLOR3} Souhaitez-vous installer les packages prérequis pour le serveur VPS ❓ [o/n]\\n"
    read reponse

if [[ "$reponse" == "o" ]] then
printf "${CYAN} Démarrage de l'installation des packages sur le serveur !"
    apt update
    apt full-upgrade -y
    apt install bash curl wget nload htop sudo neofetch -y
    cd
    rm .bashrc
    wget https://raw.githubusercontent.com/null/vps/.bashrc
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config;systemctl restart ssh;systemctl restart sshd

    printf "${NC}\\n"   
    printf "${COLOR1}✔️ Vos packages ont été installés avec succès ! \\n"
fi