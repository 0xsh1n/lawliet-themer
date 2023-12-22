clear
del() {
  rm -rf ~/.oh-my-zsh
}


download() {
  apt update && apt upgrade
  pkg install zsh -y
  pkg install git -y
  rm -rf ~/.zshrc
  git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
  git clone https://github.com/zsh-users/zsh-autosuggestions /data/data/com.termux/files/home/.oh-my-zsh/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /data/data/com.termux/files/home/.oh-my-zsh/plugins/zsh-syntax-highlighting
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  clear
  menu
}

setup() {
  rm -rf ~/.termux/colors.properties
  rm -rf /data/data/com.termux/files/usr/etc/motd
  cp -r .colors ~/.termux/colors.properties
  rm -rf ~/.zshrc
  chsh -s zsh

  cat .start > $HOME/.zshrc
  echo ""
  echo ""
  read -p '     Shell Name: ' name
  sed -e "s/\0xsh1n/$name/g" .Oxsh1n.zsh-theme > $HOME/.oh-my-zsh/themes/Oxsh1n.zsh-theme
  echo "     theme successfully added, please restart your termux"
  sleep 2
  clear
  menu
}


menu() {
  echo -e "     ⠀⠀     "
  echo -e ""
  echo -e ""
  echo -e "     ⠀⠀          ⠀⠀⢀⣤⣤⣤⣤⣤⣤⣀⡀⠀⠀⢀⣀⠄⠀⠀⣀⣠⣤⡤⠤⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀          ⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⣠⣾⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀          ⡼⠋⠁⠀⠈⠉⠙⠛⠛⠉⣡⣿⡟⠀⠀⣼⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀⠀     ⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⠁⠀⠀⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀⠀⠀     ⠀⠀⠀⠀⠀⢰⣿⣿⣿⠀⠀⠘⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀⠀⠀⠀     ⠀⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀⠀⠀⠀⠀     ⠀⠀⠀⣿⣿⣿⣿⡀⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀     ⠀⠀⢀⣤⣶⣶⣶⣿⣿⣿⣿⡇⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀     ⠀⠀⠈⠉⠉⠙⢿⣿⣿⣿⣿⡇⠀⠀⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀     ⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⡇⠀⠀⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀⠀     ⠀⠀⠀⠶⢶⣶⣾⣿⣿⣿⠁⠀⢠⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀⠀     ⠀⠀⠀⠀⠀⠈⢿⣿⣿⡏⠀⢀⣾⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀     ⠀⠀⠀⠀⠀⠀⠀⢸⣿⡿⠀⢀⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀⠀⠀⠀     ⠀⠀⠀⢀⣾⡟⢁⣴⣟⣡⣤⣤⣶⣶⣶⣶⣶⣦⣤⣀⠀⠀⠀⠀"
 
  echo -e "     ⠀⠀     ⠀⠀⠀     ⠀⠀⠀⢠⣾⣟⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣴⠞"
 
  echo -e "     ⠀⠀     ⠀⠀     ⠀⠀⢀⣴⡿⠿⠛⠛⠋⠉⠉⠉⠉⠉⠉⠛⠛⠿⣿⣿⣿⣿⣿⠟⠁⠀"
 
  echo -e "     ⠀⠀          ⠀⠀⠀⠘⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⠟⠁⠀⠀⠀"
  echo -e ""
  echo -e ""
  echo -e ""
  
  echo "        1. Setup Theme"
  echo "        2. Add Theme"
  echo "        3. Exit"
  echo ""
  read -p "       [?] 0xsh1n: " choice

  case $choice in
    1)
      download
      ;;
    2)
      setup
      ;;
    3)
      clear
      exit
      ;;
    *)
      echo "Invalid choice. Please enter a valid option."
      sleep 1
      clear
      menu
      ;;
  esac
}

menu
