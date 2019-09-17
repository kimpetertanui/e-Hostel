package com.peterkimeli.hostelmkononi;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import java.util.HashMap;

public class MainActivity extends AppCompatActivity {

    Button register, login;
    EditText name, phone_no,email,id_no, password ;
    TextView userlogin;
    String name_Holder, phone_no_Holder,email_Holder, id_Holder,password_Holder;
    String finalResult ;
    String HttpURL = "http://192.168.43.131/HostelYangu/add_user.php";
    Boolean CheckEditText ;
    ProgressDialog progressDialog;
    HashMap<String,String> hashMap = new HashMap<>();
    HttpParse httpParse = new HttpParse();




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //Assign Id'S
        name = (EditText)findViewById(R.id.name);
        phone_no = (EditText)findViewById(R.id.phone_no);
        email=(EditText) findViewById(R.id.email);
        id_no = (EditText)findViewById(R.id.id_no);
        password = (EditText)findViewById(R.id.password);

        register = (Button)findViewById(R.id.register);
        login = (Button)findViewById(R.id.login);
        userlogin=(TextView)findViewById(R.id.userlogin);

        //Adding Click Listener on button.
        register.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                // Checking whether EditText is Empty or Not
                CheckEditTextIsEmptyOrNot();

                if(CheckEditText){

                    // If EditText is not empty and CheckEditText = True then this block will execute.

                    UserRegisterFunction(name_Holder,phone_no_Holder, id_Holder, email_Holder, password_Holder);

                }
                else {

                    // If EditText is empty then this block will execute .
                    Toast.makeText(MainActivity.this, "Please fill all form fields.", Toast.LENGTH_LONG).show();

                }


            }
        });

        userlogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                Intent intent = new Intent(MainActivity.this,UserLoginActivity.class);
                startActivity(intent);

            }
        });




    }

    public void CheckEditTextIsEmptyOrNot(){

        name_Holder = name.getText().toString();
        phone_no_Holder = phone_no.getText().toString();
        email_Holder = email.getText().toString();
        id_Holder = id_no.getText().toString();
        password_Holder = password.getText().toString();


        if(TextUtils.isEmpty(name_Holder) || TextUtils.isEmpty(phone_no_Holder)  || TextUtils.isEmpty(email_Holder) || TextUtils.isEmpty(id_Holder) || TextUtils.isEmpty(password_Holder))
        {

            CheckEditText = false;

        }
        else {

            CheckEditText = true ;
        }

    }

    public void UserRegisterFunction(final String name, final String phone_no,final String email, final String id_no, final String password){

        class UserRegisterFunctionClass extends AsyncTask<String,Void,String> {

            @Override
            protected void onPreExecute() {
                super.onPreExecute();

                progressDialog = ProgressDialog.show(MainActivity.this,"Loading Data.......",null,true,true);
            }

            @Override
            protected void onPostExecute(String httpResponseMsg) {

                super.onPostExecute(httpResponseMsg);

                progressDialog.dismiss();
                Intent intent=new Intent(MainActivity.this, HomeMenuActivity.class);
                startActivity(intent);

                Toast.makeText(MainActivity.this,httpResponseMsg.toString(), Toast.LENGTH_LONG).show();

            }

            @Override
            protected String doInBackground(String... params) {

                hashMap.put("name",params[0]);

                hashMap.put("phone_no",params[1]);

                hashMap.put("email",params[2]);
                hashMap.put("id_no",params[3]);

                hashMap.put("password",params[4]);

                finalResult = httpParse.postRequest(hashMap, HttpURL);

                return finalResult;
            }
        }

        UserRegisterFunctionClass userRegisterFunctionClass = new UserRegisterFunctionClass();

        userRegisterFunctionClass.execute(name,phone_no,email,id_no,password);
    }

}