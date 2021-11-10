#/bin/env/ bash

# Error messages
E001="001: Git package not found."
E002="002: Wget package not found."
E003="003: Unzip package not found."
E404="404: Package manager not found."

# Menues template
FONTMENU="--  Necessary fonts  --\nTo avoid problem with printing icons, must be installed some aditional fonts\nList of fonts:\n1.  3270 Nerd Font\n2.  Agave Nerd Font\n3.  Anonymice Nerd Font\n4.  Arimo Nerd Font\n5.  AurulentSansMono Nerd Font\n6.  BigBlueTerminal Nerd Font\n7.  BitstreamVeraSansMono Nerd Font\n8.  Caskaydia Nerd Font (contains ligatures characters)\n9.  BlexMono Nerd Font\n10. CodeNewRoman Nerd Font\n11. Cousine Nerd Font\n12. DaddyTimeMono Nerd Font\n13. DroidSansMono Nerd Font\n14. FantasqueSansMono Nerd Font (contains ligatures characters)\n15. FiraCode Nerd Font (contains ligatures characters)\n16. FiraMono Nerd Font\n17. Go-Mono Nerd Font\n18. Gohu Nerd Font\n19. Hack Nerd Font\n20. Hasklug Nerd Font (contains ligatures characters)\n21. Heavydata Nerd Font\n22. Hurmit Nerd Font\n23. iM Writing Nerd Font\n24. Inconsolata Nerd Font (contains ligatures characters)\n25. InconsolataGo Nerd Font\n26. InconsolataLGC Nerd Font\n27. Iosevka Nerd Font (contains ligatures characters)\n28. JetBrainsMono Nerd Font (contains ligatures characters)\n29. Lekton Nerd Font\n30. LiterationMono Nerd Font\n31. Meslo Nerd Font Nerd Font\n32. Monofur Nerd Font\n33. Monoid Nerd Font (contains ligatures characters)\n34. Mononoki Nerd Font\n35. MPlus Nerd Font\n36. Noto Nerd Font\n37. ProFont Nerd Font\n38. ProggyClean Nerd Font\n39. OpenDyslexic Nerd Font\n40. Overpass Nerd Font\n41. RobotoMono Nerd Font\n42. ShureTechMono Nerd Font\n43. Sauce Code Pro Nerd Font\n44. SpaceMono Nerd Font\n45. Terminess Nerd Font\n46. Tinos Nerd Nerd Font\n47. Ubuntu Nerd Font\n48. UbuntuMono Nerd Font\n49. VictorMono Nerd Font\n"
clear
# Ubuntu Based distro
if command -v apt > /dev/null; then

  echo "--  Installing ZSH shell package  --"
  #sudo apt update && sudo apt upgrade && sudo apt install zsh 
  clear

  if ! command -v git > /dev/null; then

    clear
    echo "ERROR:\n${E001}"
    read -p "Do you want to install Git? y/N" git_answer

    case "$git_answer^^" in
    "Y")
      echo "--  Installing Git --"
      # sudo apt install git
      break;;
    *)
      echo "Abording installation..."
      exit;;   
    esac
  fi

  echo "--  Installing PowerLevel10k  --"
  # git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.local/share/zsh/theme/powerlevel10k
  # echo 'source ~/.local/share/zsh/theme/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

  if ! command -v wget > /dev/null; then

    unset package
    clear
    while true; do

      echo "ERROR:\n${E002}"
      read -p "o you want to install Wget? y/N" wget_answer

      case "$wget_answer^^" in
        "Y")
          clear
          echo "-- Installing wget --"
          #sudo apt install wget
          break;;

        *)
          echo "Abording installation..."
          exit;;
      
      esac
    done
  fi

  while true; do

    unset font
    clear
    if ! command -v unzip > /dev/null;then
      echo "ERROR:\n${E003}"
      read -p "o you want to install Unzip? y/N" unzip_answer

      case "$unzip_answer^^" in
      "Y")
        clear
        echo "-- Installing unzip --"
        #sudo apt install unzip
        break;;
      *)
        echo "Aborting installation ..."
        exit;;
      esac
    fi
    echo ${FONTMENU}
    read -p "Choose font: " font
    case "$font" in
      "1")
        echo "-- Downloading 3270 font --"      
        
        mkdir fonts && wget -O fonts/3270.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/3270.zip
        cd fonts && unzip 3270.zip && rm 3270.zip && rm *Windows* && sudo mkdir "3270 Nerd Font" && sudo cp * /usr/share/fonts/3270\ Nerd\ Font
        break;;

      "2")
        echo "-- Downloading Agave font --"      
        
        mkdir fonts && wget -O fonts/Agave.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Agave.zip
        cd fonts && unzip Agave.zip && rm Agave.zip && rm *Windows* && sudo mkdir "Agave Nerd Font" && sudo cp * /usr/share/fonts/Agave\ Nerd\ Font
        break;;

      "3")
        echo "-- Downloading Anonymice font --"      
        
        mkdir fonts && wget -O fonts/Anonymice.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/AnonymousPro.zip
        cd fonts && unzip Anonymice.zip && rm Anonymice.zip && rm *Windows* && sudo mkdir "Anonymice Nerd Font" && sudo cp * /usr/share/fonts/Anonymice\ Nerd\ Font
        break;;
      "4")
        echo "-- Downloading Arimo font --"      
        
        mkdir fonts && wget -O fonts/Arimo.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Arimo.zip
        cd fonts && unzip Arimo.zip && rm Arimo.zip && rm *Windows* && sudo mkdir "Arimo Nerd Font" && sudo cp * /usr/share/fonts/Arimo\ Nerd\ Font
        break;;
      "5")
        echo "-- Downloading AurulentSansMono font --"      
        
        mkdir fonts && wget -O fonts/AurulentSansMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/AurulentSansMono.zip
        cd fonts && unzip AurulentSansMono.zip && rm AurulentSansMono.zip && rm *Windows* && sudo mkdir "AurulentSansMono Nerd Font" && sudo cp * /usr/share/fonts/AurulentSansMono\ Nerd\ Font
        break;;
      "6")
        echo "-- Downloading BigBlueTerminal font --"      
        
        mkdir fonts && wget -O fonts/BigBlueTerminal.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/BigBlueTerminal.zip
        cd fonts && unzip BigBlueTerminal.zip && rm BigBlueTerminal.zip && rm *Windows* && sudo mkdir "BigBlueTerminal Nerd Font" && sudo cp * /usr/share/fonts/BigBlueTerminal\ Nerd\ Font
        break;;
      "7")
        echo "-- Downloading BitstreamVeraSansMono font --"      
        
        mkdir fonts && wget -O fonts/BitstreamVeraSansMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/BitstreamVeraSansMono.zip
        cd fonts && unzip BitstreamVeraSansMono.zip && rm BitstreamVeraSansMono.zip && rm *Windows* && sudo mkdir "BitstreamVeraSansMono Nerd Font" && sudo cp * /usr/share/fonts/BitstreamVeraSansMono \ Nerd\ Font
        break;;
      "8")
        echo "-- Downloading Cascadia Cove font --"      
        
        mkdir fonts && wget -O fonts/CascadiaCove.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip
        cd fonts && unzip CascadiaCove.zip && rm CascadiaCove.zip && rm *Windows* && sudo mkdir "CascadiaCove Nerd Font" && sudo cp * /usr/share/fonts/CascadiaCove\ Nerd\ Font
        break;;
      "9")
        echo "-- Downloading BlexMono font --"      
        
        mkdir fonts && wget -O fonts/BlexMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/IBMPlexMono.zip
        cd fonts && unzip BlexMono.zip && rm BlexMono.zip && rm *Windows* && sudo mkdir "BlexMono Nerd Font" && sudo cp * /usr/share/fonts/BlexMono\ Nerd\ Font
        break;;
      "10")
        echo "-- Downloading CodeNewRoman font --"      
        
        mkdir fonts && wget -O fonts/CodeNewRoman.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CodeNewRoman.zip
        cd fonts && unzip CodeNewRoman.zip && rm CodeNewRoman.zip && rm *Windows* && sudo mkdir "CodeNewRoman Nerd Font" && sudo cp * /usr/share/fonts/CodeNewRoman\ Nerd\ Font
        break;;
      "11")
        echo "-- Downloading Cousine font --"      
        
        mkdir fonts && wget -O fonts/Cousine.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Cousine.zip
        cd fonts && unzip Cousine.zip && rm Cousine.zip && rm *Windows* && sudo mkdir "Cousine Nerd Font" && sudo cp * /usr/share/fonts/Cousine\ Nerd\ Font
        break;;
      "12")
        echo "-- Downloading DaddyTimeMono font --"      
        
        mkdir fonts && wget -O fonts/DaddyTimeMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DaddyTimeMono.zip
        cd fonts && unzip DaddyTimeMono.zip && rm DaddyTimeMono.zip && rm *Windows* && sudo mkdir "DaddyTimeMono Nerd Font" && sudo cp * /usr/share/fonts/DaddyTimeMono\ Nerd\ Font
        break;;
      "13")
        echo "-- Downloading DejaVuSansMono font --"      
        
        mkdir fonts && wget -O fonts/DejaVuSansMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DejaVuSansMono.zip
        cd fonts && unzip DejaVuSansMono.zip && rm DejaVuSansMono.zip && rm *Windows* && sudo mkdir "DejaVuSansMono Nerd Font" && sudo cp * /usr/share/fonts/DejaVuSansMono\ Nerd\ Font
        break;;
      "14")
        echo "-- Downloading DroidSansMono font --"      
        
        mkdir fonts && wget -O fonts/DroidSansMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip
        cd fonts && unzip DroidSansMono.zip && rm DroidSansMono.zip && rm *Windows* && sudo mkdir "DroidSansMono Nerd Font" && sudo cp * /usr/share/fonts/DroidSansMono\ Nerd\ Font
        break;;
      "15")
        echo "-- Downloading FantasqueSansMono font --"      
        
        mkdir fonts && wget -O fonts/FantasqueSansMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FantasqueSansMono.zip
        cd fonts && unzip FantasqueSansMono.zip && rm FantasqueSansMono.zip && rm *Windows* && sudo mkdir "FantasqueSansMono Nerd Font" && sudo cp * /usr/share/fonts/FantasqueSansMono\ Nerd\ Font
        break;;
      "16")
        echo "-- Downloading raCode font --"      
        
        mkdir fonts && wget -O fonts/raCode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/raCode.zip
        cd fonts && unzip raCode.zip && rm raCode.zip && rm *Windows* && sudo mkdir "raCode Nerd Font" && sudo cp * /usr/share/fonts/raCode\ Nerd\ Font
        break;;
      "17")
        echo "-- Downloading raMono font --"      
        
        mkdir fonts && wget -O fonts/raMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/raMono.zip
        cd fonts && unzip raMono.zip && rm raMono.zip && rm *Windows* && sudo mkdir "raMono Nerd Font" && sudo cp * /usr/share/fonts/raMono\ Nerd\ Font
        break;;
      "18")
        echo "-- Downloading Go-Mono font --"      
        
        mkdir fonts && wget -O fonts/Go-Mono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Go-Mono.zip
        cd fonts && unzip Go-Mono.zip && rm Go-Mono.zip && rm *Windows* && sudo mkdir "Go-Mono Nerd Font" && sudo cp * /usr/share/fonts/Go-Mono\ Nerd\ Font
        break;;
      "19")
        echo "-- Downloading Gohu font --"      
        
        mkdir fonts && wget -O fonts/Gohu.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Gohu.zip
        cd fonts && unzip Gohu.zip && rm Gohu.zip && rm *Windows* && sudo mkdir "Gohu Nerd Font" && sudo cp * /usr/share/fonts/Gohu\ Nerd\ Font
        break;;
      "20")
        echo "-- Downloading Hack font --"      
        
        mkdir fonts && wget -O fonts/Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
        cd fonts && unzip Hack.zip && rm Hack.zip && rm *Windows* && sudo mkdir "Hack Nerd Font" && sudo cp * /usr/share/fonts/Hack\ Nerd\ Font
        break;;
      "21")
        echo "-- Downloading Hasklung font --"      
        
        mkdir fonts && wget -O fonts/Haskling.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Haskling.zip
        cd fonts && unzip Haskling.zip && rm Haskling.zip && rm *Windows* && sudo mkdir "Haskling Nerd Font" && sudo cp * /usr/share/fonts/Haskling\ Nerd\ Font
        break;;
      "22")
        echo "-- Downloading HeavyData font --"      
        
        mkdir fonts && wget -O fonts/HeavyData.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/HeavyData.zip
        cd fonts && unzip HeavyData.zip && rm HeavyData.zip && rm *Windows* && sudo mkdir "HeavyData Nerd Font" && sudo cp * /usr/share/fonts/HeavyData\ Nerd\ Font
        break;;
      "23")
        echo "-- Downloading Hurmit font --"      
        
        mkdir fonts && wget -O fonts/Hurmit.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hermit.zip
        cd fonts && unzip Hurmit.zip && rm Hurmit.zip && rm *Windows* && sudo mkdir "Hurmit Nerd Font" && sudo cp * /usr/share/fonts/Hurmit\ Nerd\ Font
        break;;
      "24")
        echo "-- Downloading iM Writing font --"      
        
        mkdir fonts && wget -O fonts/iM-Writing.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/iA-Writer.zip
        cd fonts && unzip iM-Writing.zip && rm iM-Writing.zip && rm *Windows* && sudo mkdir "iM Writing Nerd Font" && sudo cp * /usr/share/fonts/iM\ Writing\ Nerd\ Font 
        break;;
      "25")
        echo "-- Downloading Inconsolata font --"      
        
        mkdir fonts && wget -O fonts/Inconsolata.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Inconsolata.zip
        cd fonts && unzip Inconsolata.zip && rm Inconsolata.zip && rm *Windows* && sudo mkdir "Inconsolata Nerd Font" && sudo cp * /usr/share/fonts/Inconsolata\ Nerd\ FontInconsolata
        break;;
      "26")
        echo "-- Downloading InconsolataGo font --"      
        
        mkdir fonts && wget -O fonts/InconsolataGo.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/InconsolataGo.zip
        cd fonts && unzip InconsolataGo.zip && rm InconsolataGo.zip && rm *Windows* && sudo mkdir "InconsolataGo Nerd Font" && sudo cp * /usr/share/fonts/InconsolataGo\ Nerd\ Font
        break;;
      "27")
        echo "-- Downloading InconsolataLGC font --"      
        
        mkdir fonts && wget -O fonts/InconsolataLGC.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/InconsolataLGC.zip
        cd fonts && unzip InconsolataLGC.zip && rm InconsolataLGC.zip && rm *Windows* && sudo mkdir "InconsolataLGC Nerd Font" && sudo cp * /usr/share/fonts/InconsolataLGC\ Nerd\ Font
        break;;
      "28")
        echo "-- Downloading Iosevka font --"      
        
        mkdir fonts && wget -O fonts/Iosevka.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
        cd fonts && unzip IoseIosevka.zip && rm Iosevka.zip && rm *Windows* && sudo mkdir "Iosevka Nerd Font" && sudo cp * /usr/share/fonts/Iosevka\ Nerd\ Font
        break;;
      "29")
        echo "-- Downloading JetBrainsMono font --"      
        
        mkdir fonts && wget -O fonts/JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
        cd fonts && unzip JetBrainsMono.zip && rm JetBrainsMono.zip && rm *Windows* && sudo mkdir "JetBrainsMono Nerd Font" && sudo cp * /usr/share/fonts/JetBrainsMono\ Nerd\ Font
        break;;
      "30")
        echo "-- Downloading Lekton font --"      
        
        mkdir fonts && wget -O fonts/Lekton.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Lekton.zip
        cd fonts && unzip Lekton.zip && rm Lekton.zip && rm *Windows* && sudo mkdir "Lekton Nerd Font" && sudo cp * /usr/share/fonts/Lekton\ Nerd\ Font
        break;;
      "31")
        echo "-- Downloading LiterationMono font --"      
        
        mkdir fonts && wget -O fonts/LiterationMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/LiberationMono.zip
        cd fonts && unzip LiterationMono.zip && rm LiterationMono.zip && rm *Windows* && sudo mkdir "LiterationMono Nerd Font" && sudo cp * /usr/share/fonts/LiterationMono\ Nerd\ Font
        break;;
      "32")
        echo "-- Downloading Meslo font --"      
        
        mkdir fonts && wget -O fonts/Meslo.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
        cd fonts && unzip Meslo.zip && rm Meslo.zip && rm *Windows* && sudo mkdir "Meslo Nerd Font" && sudo cp * /usr/share/fonts/Meslo\ Nerd\ Font
        break;;
      "33")
        echo "-- Downloading Monofur font --"      
        
        mkdir fonts && wget -O fonts/Monofur.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Monofur.zip

        cd fonts && unzip Monofur.zip && rm Monofur.zip && rm *Windows* && sudo mkdir "Monofur Nerd Font" && sudo cp * /usr/share/fonts/Monofur\ Nerd\ Font
        break;;
      "34")
        echo "-- Downloading Monoid font --"      
        
        mkdir fonts && wget -O fonts/Monoid.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Monoid.zip
        cd fonts && unzip Monoid.zip && rm Monoid.zip && rm *Windows* && sudo mkdir "Monoid Nerd Font" && sudo cp * /usr/share/fonts/Monoid\ Nerd\ Font
        break;;
      "35")
        echo "-- Downloading Mononoki font --"      
        
        mkdir fonts && wget -O fonts/Mononoki.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Mononoki.zip
        cd fonts && unzip Mononoki.zip && rm Mononoki.zip && rm *Windows* && sudo mkdir "Mononoki Nerd Font" && sudo cp * /usr/share/fonts/Mononoki\ Nerd\ Font
        break;;
      "36")
        echo "-- Downloading MPlus font --"      
        
        mkdir fonts && wget -O fonts/MPlus.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/MPlus.zip
        cd fonts && unzip MPlus.zip && rm MPlus.zip && rm *Windows* && sudo mkdir "MPlus Nerd Font" && sudo cp * /usr/share/fonts/MPlus\ Nerd\ Font
        break;;
      "37")
        echo "-- Downloading Noto font --"      
        
        mkdir fonts && wget -O fonts/Noto.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Noto.zip
        cd fonts && unzip Noto.zip && rm Noto.zip && rm *Windows* && sudo mkdir "Noto Nerd Font" && sudo cp * /usr/share/fonts/Noto\ Nerd\ Font
        break;;
      "38")
        echo "-- Downloading ProFont font --"      
        
        mkdir fonts && wget -O fonts/ProFont.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/ProFont.zip
        cd fonts && unzip ProFont.zip && rm ProFont.zip && rm *Windows* && sudo mkdir "ProFont Nerd Font" && sudo cp * /usr/share/fonts/ProFont\ Nerd\ Font
        break;;
      "39")
        echo "-- Downloading ProggyClean font --"      
        
        mkdir fonts && wget -O fonts/ProggyClean.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/ProggyClean.zip
        cd fonts && unzip ProggyClean.zip && rm ProggyClean.zip && rm *Windows* && sudo mkdir "ProggyClean Nerd Font" && sudo cp * /usr/share/fonts/ProggyClean\ Nerd\ Font
        break;;
      "40")
        echo "-- Downloading OpenDyslexic font --"      
        
        mkdir fonts && wget -O fonts/OpenDyslexic.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/OpenDyslexic.zip
        cd fonts && unzip OpenDyslexic.zip && rm OpenDyslexic.zip && rm *Windows* && sudo mkdir "OpenDyslexic Nerd Font" && sudo cp * /usr/share/fonts/OpenDyslexic\ Nerd\ Font
        break;;
      "41")
        echo "-- Downloading Overpass font --"      
        
        mkdir fonts && wget -O fonts/Overpass.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Overpass.zip
        cd fonts && unzip Overpass.zip && rm Overpass.zip && rm *Windows* && sudo mkdir "Overpass Nerd Font" && sudo cp * /usr/share/fonts/Overpass\ Nerd\ Font
        break;;
      "42")
        echo "-- Downloading RobotoMono font --"      
        
        mkdir fonts && wget -O fonts/RobotoMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip
        cd fonts && unzip RobotoMono.zip && rm RobotoMono.zip && rm *Windows* && sudo mkdir "RobotoMono Nerd Font" && sudo cp * /usr/share/fonts/RobotoMono\ Nerd\ Font
        break;;
      "43")
        echo "-- Downloading ShureTechMono font --"      
        
        mkdir fonts && wget -O fonts/ShureTechMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/ShareTechMono.zip
        cd fonts && unzip ShureTechMono.zip && rm ShureTechMono.zip && rm *Windows* && sudo mkdir "ShureTechMono Nerd Font" && sudo cp * /usr/share/fonts/ShureTechMono\ Nerd\ Font
        break;;
      "44")
        echo "-- Downloading Sauce Code Pro font --"      
        
        mkdir fonts && wget -O fonts/Sauce-Code-Pro.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
        cd fonts && unzip Sauce-Code-Pro.zip && rm Sauce-Code-Pro.zip && rm *Windows* && sudo mkdir "Sauce Code Pro Nerd Font" && sudo cp * /usr/share/fonts/Sauce\ Code\ Pro\ Nerd\ Font
        break;;
      "45")
        echo "-- Downloading SpaceMono font --"      
        
        mkdir fonts && wget -O fonts/SpaceMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SpaceMono.zip
        cd fonts && unzip SpaceMono.zip && rm SpaceMono.zip && rm *Windows* && sudo mkdir "SpaceMono Nerd Font" && sudo cp * /usr/share/fonts/SpaceMono\ Nerd\ Font
        break;;
      "46")
        echo "-- Downloading Terminess font --"      
        
        mkdir fonts && wget -O fonts/Terminess.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Terminus.zip
        cd fonts && unzip Terminess.zip && rm Terminess.zip && rm *Windows* && sudo mkdir "Terminess Nerd Font" && sudo cp * /usr/share/fonts/Terminess\ Nerd\ Font
        break;;
      "47")
        echo "-- Downloading Tinos font --"      
        
        mkdir fonts && wget -O fonts/Tinos.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Tinos.zip
        cd fonts && unzip Tinos.zip && rm Tinos.zip && rm *Windows* && sudo mkdir "Tinos Nerd Font" && sudo cp * /usr/share/fonts/Tinos\ Nerd\ Font
        break;;
      "48")
        echo "-- Downloading Ubuntu font --"      
        
        mkdir fonts && wget -O fonts/Ubuntu.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Ubuntu.zip
        cd fonts && unzip Ubuntu.zip && rm Ubuntu.zip && rm *Windows* && sudo mkdir "Ubuntu Nerd Font" && sudo cp * /usr/share/fonts/Ubuntu\ Nerd\ Font
        break;;
      "49")
        echo "-- Downloading UbuntuMono font --"      
        
        mkdir fonts && wget -O fonts/UbuntuMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/UbuntuMono.zip
        cd fonts && unzip UbuntuMono.zip && rm UbuntuMono.zip && rm *Windows* && sudo mkdir "UbuntuMono Nerd Font" && sudo cp * /usr/share/fonts/UbuntuMono\ Nerd\ Font
        break;;
      *) break;;
    esac
  done

  echo "-- Installing Syntax Highlighlighting --"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.local/share/zsh/plugins/zsh-syntax-highlighting
  echo "source ~/.local/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> /.zshrc
  
  echo "-- Installing Autocomplete --"
  git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.local/share/zsh/plugins/zsh-autocomplete
  echo "source ~/.local/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.zsh" >> /.zshrc

  echo "-- Installing Autosuggestions --"
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.local/share/zsh/plugins/zsh-autosuggestions
  echo "source ~/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> /.zshrc

  clear

  if command -v gnome-terminal > /dev/null; then

  echo "-- Color scheme --"
  read -p "Do you want to install additional Dracula scheme? y/N" color_sheme_answer
  case "$color_scheme_answer^^" in
  "Y")
    git clone https://github.com/dracula/gnome-terminal
    cd gnome-terminal
    ./install.sh
    cd ..&& rm -rf gnome-terminal
  *)break;;
  esac
  fi
fi
break

# Suse Based distro
elif command -v zypper > /dev/null
then

break

# Fedora based distro
elif command -v dnf > /dev/null
then

break

# Gentoo derivitave
elif command -v equo > /dev/null
then

break

# The masters of Linux: Gentoo (im sceard of them )
elif command -v emerge > /dev/null
then

break

# Arch btw chads
else command -v pacman >/dev/null
fi