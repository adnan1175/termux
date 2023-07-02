# Termux 
  
 ## Download App 
   <a href="https://play.google.com/store/apps/details?id=com.termux"><img src="https://raw.githubusercontent.com/adnan1175/termux/main/543398a9017644e99ea1d8d13fcb7788.jpeg" alt="Termux App" width="900" height="60"></a> 
   <br>
- Fix termux repo and setup:
 ```

curl -O https://raw.githubusercontent.com/adnan1175/termux/main/fix-repo.sh

bash fix-repo.sh
 ```

- or  setup all at once 
 ```
 apt install git 
 git clone https://github.com/adnan1175/termux
 cd termux 
 chmod +x setup.sh
 ./setup.sh
 ```
⚠️⚠️⚠️ apt install will not work until repo fix
