import os
import eel

# Initialize Eel
eel.init('web')

@eel.expose
def replace_values(ip_address, port, buffer_send_size):
    update_message("Replacing values in XML files...")
    
    # Replace IP Address and Port in XML files
    if os.path.exists("app/src/main/res/values"):
        for root, dirs, files in os.walk("app/src/main/res/values"):
            for file in files:
                if file.endswith(".xml"):
                    file_path = os.path.join(root, file)

                    with open(file_path, "r") as f:
                        content = f.read()

                    content = content.replace("192.168.0.129", ip_address)
                    content = content.replace("4444", port)

                    with open(file_path, "w") as f:
                        f.write(content)

        update_message("Updated placeholders in XML files.")
    else:
        update_message("Error: 'app/src/main/res/values' directory not found.")

    # Replace Buffer Send Size in Java file
    java_file_path = "app/src/main/java/com/MyAccessibilityService.java"
    if os.path.exists(java_file_path):
        with open(java_file_path, "r") as f:
            content = f.read()

        content = content.replace("Buffer-Send-Size-UpdateME", buffer_send_size)

        with open(java_file_path, "w") as f:
            f.write(content)

        update_message("Updated Buffer Send Size in Java file.")
    else:
        update_message("Error: Java file not found.")

@eel.expose
def update_message(new_message):
    eel.updateMessage("message", new_message)

# Start the Eel application
eel.start('IP.html', size=(600, 400), port=9991)
