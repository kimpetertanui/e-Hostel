package com.peterkimeli.hostelmkononi;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Window;

public class SplashActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_splash);
        Thread thread=new Thread(){
            @Override
            public void run(){
                try
                {
                    sleep(4000);

                }
                catch ( Exception e){
                    e.printStackTrace();

                }

                finally {
                    Intent welcomeintent=new Intent(SplashActivity.this,WelcomeActivity.class);
                    startActivity(welcomeintent);

                }
            }
        };
        thread.start();
    }
    @Override
    public void onPause(){
        super.onPause();
    }

}
