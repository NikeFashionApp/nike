package com.example.nike.Views.Profile.SettingFragment;

import android.graphics.Color;
import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;

import com.example.nike.Mailer.MailAPI;
import com.example.nike.R;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EditEmailFragment extends Fragment {

    private static final String sendEmail = "param1";

    private String getEmail;
    private ImageButton btnBack;
    private EditText newEmail,comfirmEmail;
    private Button btn_done;
    private TextView tv_email;

    private void addControls(View view)
    {
        btnBack = view.findViewById(R.id.btnBack);
        tv_email = view.findViewById(R.id.tv_email);
        tv_email.setText(getEmail);
        newEmail = view.findViewById(R.id.newEmail);
        comfirmEmail = view.findViewById(R.id.comfirmEmail);
        btn_done = view.findViewById(R.id.btn_done);
    }

    private void addEvents()
    {
        btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FragmentManager fm = getActivity().getSupportFragmentManager();
                fm.popBackStack();
            }
        });

        TextWatcher newEmailWatcher = new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override
            public void afterTextChanged(Editable s) {
                validateEmails();
            }
        };

        TextWatcher confirmEmailWatcher = new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override
            public void afterTextChanged(Editable s) {
                validateEmails();
            }
        };
        newEmail.addTextChangedListener(newEmailWatcher);
        comfirmEmail.addTextChangedListener(confirmEmailWatcher);

        btn_done.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sendEmail();
            }
        });
    }

    private void sendEmail()
    {
        String mEmail = getEmail;
        String mSubject = "Your Nike Member email was updated";
        String mMessage = "Your email has been changed to " + newEmail.getText().toString();
        MailAPI mailAPI = new MailAPI(getContext(),mEmail,mSubject,mMessage);
        mailAPI.execute();
    }
    private boolean checkEmailFormat(String email) {
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        Pattern pattern = Pattern.compile(emailRegex);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }
    private void validateEmails() {
        String email1 = newEmail.getText().toString();
        String email2 = comfirmEmail.getText().toString();

        if (checkEmailFormat(email1) && checkEmailFormat(email2) && email1.equals(email2)) {
            btn_done.setEnabled(true);
        } else {
            btn_done.setEnabled(false);
        }
    }
    public EditEmailFragment() {
    }

    public static EditEmailFragment newInstance(String param1) {
        EditEmailFragment fragment = new EditEmailFragment();
        Bundle args = new Bundle();
        args.putString(sendEmail, param1);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            getEmail = getArguments().getString(sendEmail);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_edit_email, container, false);
        addControls(view);
        addEvents();
        return view;
    }
}