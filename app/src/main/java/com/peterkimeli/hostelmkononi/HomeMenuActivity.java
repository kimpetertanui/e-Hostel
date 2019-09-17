package com.peterkimeli.hostelmkononi;

import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.widget.CardView;
import android.view.View;
import android.support.v4.view.GravityCompat;
import android.support.v7.app.ActionBarDrawerToggle;
import android.view.MenuItem;
import android.support.design.widget.NavigationView;
import android.support.v4.widget.DrawerLayout;

import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.widget.LinearLayout;

public class HomeMenuActivity extends AppCompatActivity
        implements NavigationView.OnNavigationItemSelectedListener {

    CardView mycard ;
    Intent i ;
    LinearLayout ll;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home_menu);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        FloatingActionButton fab = findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent=new Intent(HomeMenuActivity.this,AskActivity.class);
                startActivity(intent);
            }
        });
        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        NavigationView navigationView = findViewById(R.id.nav_view);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close); ll = (LinearLayout) findViewById(R.id.ll);
//        mycard = (CardView) findViewById(R.id.bankcardId);
//        i = new Intent(this,MpesaActivity.class);
//        mycard.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                startActivity(i);
//            }
//        });
        drawer.addDrawerListener(toggle);
        toggle.syncState();
        navigationView.setNavigationItemSelectedListener(this);

//


    }

    @Override
    public void onBackPressed() {
        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.home, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
//            return true;
        }

        else if (id==R.id.action_privacy){
            Intent intent =new Intent(HomeMenuActivity.this,PrivacyActivity.class);
            startActivity(intent);

        }

        return super.onOptionsItemSelected(item);
    }

    @SuppressWarnings("StatementWithEmptyBody")
    @Override
    public boolean onNavigationItemSelected(MenuItem item) {
        // Handle navigation view item clicks here.
        int id = item.getItemId();

        if (id == R.id.nav_home)
        {
            // Handle the camera action
            Intent intent = new Intent(HomeMenuActivity.this, HomeMenuActivity.class);
            startActivity(intent);
        }
        else if (id == R.id.nav_hostels)
        {
            Intent intent=new Intent(HomeMenuActivity.this,AllHostelsActivity.class);
            startActivity(intent);

        }
        else if (id == R.id.notices)
        {
            Intent intent=new Intent(HomeMenuActivity.this,NoticesActivity.class);
            startActivity(intent);

        }
        else if (id == R.id.nav_Complaints)
        {
            Intent intent=new Intent(HomeMenuActivity.this,ComplaintsActivity.class);
            startActivity(intent);

        }
        else if (id == R.id.nav_privacy)
        {
            Intent intent=new Intent(HomeMenuActivity.this,PrivacyActivity.class);
            startActivity(intent);

        }
        else if (id == R.id.nav_about)
        {
            Intent intent=new Intent(HomeMenuActivity.this, FilterRoomActivity.class);
            startActivity(intent);

        }

        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }
}
