package com.peterkimeli.hostelmkononi;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class DashboardActivity extends AppCompatActivity {

    Button LogOut;
    TextView hostel_idShow;
    String hostel_idHolder;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard);
        Intent intent = getIntent();
        //hostel_idHolder= intent.getStringExtra(ShowSingleRecordActivity.Hostel_id);
        hostel_idShow.setText(hostel_idHolder);

        LogOut = (Button)findViewById(R.id.button);
        hostel_idShow = (TextView)findViewById(R.id.hostel_idShow);





        LogOut.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                finish();

                Intent intent = new Intent(DashboardActivity.this, UserLoginActivity.class);

                startActivity(intent);

                Toast.makeText(DashboardActivity.this, "Log Out Successfully", Toast.LENGTH_LONG).show();


            }
        });
    }
}