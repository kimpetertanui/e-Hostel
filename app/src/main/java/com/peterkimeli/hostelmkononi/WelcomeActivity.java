package com.peterkimeli.hostelmkononi;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class WelcomeActivity extends AppCompatActivity {

    private Button login_btn,register_btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_welcome);

        login_btn=(Button) findViewById(R.id.login_btn);
        register_btn=(Button)findViewById(R.id.register_btn);


        login_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent login_btn=new Intent(WelcomeActivity.this,UserLoginActivity.class);
                startActivity(login_btn);
            }
        });


        register_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent register_btn=new Intent(WelcomeActivity.this,MainActivity.class);
                startActivity(register_btn);
            }
        });


    }
}
