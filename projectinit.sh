menu(){
    declare -a MENUOPT=("1 - Front-end (HTML / CSS)" "2 - Front-end 2 (HTML / CSS / Javascript)" "3 - Full web app (PHP / Javascript)");
    for i in "${MENUOPT[@]}"
    do
        printf "$i"
        printf "\n"
    done
}

option(){
    printf "Select an option \n";
    read uOption;
    case $uOption in 
        1)
            frontEnd
            ;;
        2)
            frontEndAlt
            ;;
        3) 
            webApp
            ;;
        *)  
            printf "Invalid Choice!!!"
            printf "\n"
            option
            ;;
    esac
}

getProjectName(){
    printf "\n"
    printf "🔥🔥🔥 Enter a project name: 🔥🔥🔥\n"
    printf "\n"
    read projectName
}

makeProjectDir(){
    cd ~
    mkdir $projectName
    cd $projectName
}

makeFrontEndDirectory(){
    touch "index.html"
    touch ".gitignore"
    mkdir "assets"
    mkdir "styles"
    cd "styles"
    touch "main.css"
}

makeFrontEndAltDirectory(){
    touch "index.html"
    touch ".gitignore"
    mkdir "assets"
    mkdir "styles"
    mkdir "scripts"
    cd "styles"
    touch "main.css"
    cd ".."
    cd "scripts"
    touch "index.js"
}

makeWebAppDirectory(){
    touch "index.php"
    touch ".gitignore"
    echo "/vendor" >> .gitignore
    touch "composer.json"
    echo "{}" >> composer.json
    composer install
    mkdir "assets"
    mkdir "styles"
    mkdir "scripts"
    cd "styles"
    touch "main.css"
    cd ".."
    cd "scripts"
    touch "index.js"
}

frontEnd(){
    getProjectName
    makeProjectDir
    makeFrontEndDirectory
}

frontEndAlt(){
    getProjectName
    makeProjectDir
    makeFrontEndAltDirectory
}

webApp(){
    getProjectName
    makeProjectDir
    makeWebAppDirectory
}

printf "\n"
echo "
  __  __  __     ___ _____       ____ 
 /__)/__)/  )  /(_  / )/    //| )//   
/   / ( (__/(_/ /__(__(    (/ |/((  
"
printf "🔥🔥🔥 Developed by Quazi Billah 🔥🔥🔥"
printf "\n"
printf "\n"
printf "PROJECT INIT helps you initialize projects for web development easily! \n"
printf "\n"
printf "*PI will init a project in your root directory \n"
printf "\n"

menu
printf "\n"
option
