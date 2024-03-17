async function setIP() {
    var output = document.getElementById("output");
    output.value += "Setting IP...\n";
    scrollOutputToBottom(); // Scroll to bottom after appending message

    try {
        const response = await eel.set_ip()(); // Call Python function to handle file copying
        output.value += response + "\n";
        scrollOutputToBottom(); // Scroll to bottom after appending message
    } catch(error) {
        output.value += "Error setting IP file: " + error + "\n";
        scrollOutputToBottom(); // Scroll to bottom after appending message
    }
}

async function setDiscord() {
    var output = document.getElementById("output");
    output.value += "Setting Discord...\n";
    scrollOutputToBottom(); // Scroll to bottom after appending message

    try {
        const response = await eel.set_discord()(); // Call Python function to handle file copying
        output.value += response + "\n";
        scrollOutputToBottom(); // Scroll to bottom after appending message
    } catch(error) {
        output.value += "Error setting Discord file: " + error + "\n";
        scrollOutputToBottom(); // Scroll to bottom after appending message
    }
}

async function setGmail() {
    var output = document.getElementById("output");
    output.value += "Setting Gmail...\n";
    scrollOutputToBottom(); // Scroll to bottom after appending message

    try {
        const response = await eel.set_gmail()(); // Call Python function to handle file copying
        output.value += response + "\n";
        scrollOutputToBottom(); // Scroll to bottom after appending message
    } catch(error) {
        output.value += "Error setting Gmail file: " + error + "\n";
        scrollOutputToBottom(); // Scroll to bottom after appending message
    }
}

async function setStealthOFF() {
    var output = document.getElementById("output");
    scrollOutputToBottom(); // Scroll to bottom after appending message

    try {
        const response = await eel.set_setStealthOFF()(); // Call Python function to handle file copying
        output.value += response + "\n";
        scrollOutputToBottom(); // Scroll to bottom after appending message
    } catch(error) {
        output.value += "Error setting Stealth in manifest file: " + error + "\n";
        scrollOutputToBottom(); // Scroll to bottom after appending message
    }
}

async function setStealthON() {
    var output = document.getElementById("output");
    scrollOutputToBottom(); // Scroll to bottom after appending message

    try {
        const response = await eel.set_setStealthON()(); // Call Python function to handle file copying
        output.value += response + "\n";
        scrollOutputToBottom(); // Scroll to bottom after appending message
    } catch(error) {
        output.value += "Error setting Stealth in manifest file: " + error + "\n";
        scrollOutputToBottom(); // Scroll to bottom after appending message
    }
}

async function buildAPK() {
    try {
        // Display loading GIF before the build process
        const loadingGif = document.getElementById("loadingGif");
        loadingGif.style.display = "block";

        // Call Python function to run build
        const output = await eel.run_build()();

        // Hide loading GIF after the build process
        loadingGif.style.display = "none";

        // Append build output to the textarea
        document.getElementById("output").value += output;
        scrollOutputToBottom(); // Scroll to bottom after appending output
    } catch(error) {
        console.error(error);
    }
}

async function openIPConfig() {
    try {
        const output = await eel.open_ip_config()();
        document.getElementById("output").value += output + "\n";
        scrollOutputToBottom();
    } catch(error) {
        console.error(error);
    }
}

async function openGmailConfig() {
    try {
        const output = await eel.open_gmail_config()();
        document.getElementById("output").value += output + "\n";
        scrollOutputToBottom();
    } catch(error) {
        console.error(error);
    }
}

async function openDiscordConfig() {
    try {
        const output = await eel.open_discord_config()();
        document.getElementById("output").value += output + "\n";
        scrollOutputToBottom();
    } catch(error) {
        console.error(error);
    }
}

function scrollOutputToBottom() {
    var output = document.getElementById("output");
    output.scrollTop = output.scrollHeight;
}
