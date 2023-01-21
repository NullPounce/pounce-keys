# android-keylogger
project was originaly built in a AIDE (mobile app dev) using an old 2.2 gradle build on max api 21

this version was built in android studio electric eel 2022.1.1 with gradle updated to 7.6 and api all the way up to 33 (android 13)


# STEALTH

due to new security features android api 29 and above (oreo and up i believe) it will make it hard to near impossible to hide the app without root.
the stealth version does not allow the app to be open, just a white icon and it just opens the app details menu, sits in the app droor.

in stealth you must make and place your own fix.dat file in the app directory 
Android/data/com.BatteryHealth/files/key/fix.dat
after making fix.dat inside add "192.168.0.135:4444"
without the quotes and replace ip and port with your own ip:port

this option has removed all words "keylogger" and "malware" from UI and code as well as folders and hides the app 100% except setings installed list in
android BELLOW oreo, api 29 and up it will just open app info not showing the ip port field


# NORMAL INSTALL

open the app and just place your ip:port and tap send
you may need to open settings/apps/app-name then tap 3 dots top right and allow special permissions
make sure where you got the file from via web browser and or file manager has access, es works if you have problems
open accessibility settings and enable keylogger or BatteryHealth
no manual fix.dat required



# VIEWING LOGS

open netcat and do


for windows use netcat 5.59 beta
.\ncat.exe -klvp 4444

just tells netcat to listen on port 4444 and not close

enjoy!


# dev
make a new android studio project, empty
file, open downloaded extracted project in new window
right click on each project to open each in file explorer
in youre new project open app\src\main and delete 
copy over the rev, java, main files from the forked project over to this folder









# credits
forked from https://github.com/shivamsuyal/Android-Keylogger
icon <a href="https://www.flaticon.com/free-icons/cyber-attack" title="cyber attack icons">Cyber attack icons created by Taimoor D - Flaticon</a>
