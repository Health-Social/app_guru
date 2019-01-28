import 'package:flutter/material.dart';
import 'auth.dart';

class LoginPage extends StatefulWidget {
  LoginPage({this.auth, this.onSignedIn});
  final BaseAuth auth;
  final VoidCallback onSignedIn;

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

enum FormMode { login, signup }

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;
  String _errorMessage;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  // initial form is login form
  FormMode _formMode = FormMode.login;

  // Check if form is valid before perform login or signup
  bool _validateAndSave() {
    final form = _globalKey.currentState;
    if (form.validate()) {
      form.save();
      print('email: $_email, password: $_password');
      return true;
    } else {
      return false;
    }
  }

  void _validateAndSubmit() async {
    if (_validateAndSave()) {
      try {
        if (_formMode == FormMode.login) {
          String userId =
              await widget.auth.signInWithEmailAndPassword(_email, _password);
          print('signed in: $userId');
        } else {
          String userId = await widget.auth
              .createUserWithEmailAndPassword(_email, _password);
          print('new user: $userId');
        }
        widget.onSignedIn();
      } catch (error) {
        print('error: $error');
      }
    }
  }

  Widget _emailTextFormField() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.grey)),
          validator: (String value) {
            if (value.isEmpty) {
              return 'required';
            } else {
              return null;
            }
          },
          onSaved: (value) {
            _email = value;
          },
        ));
  }

  Widget _passwordTextFormField() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'password',
              labelStyle: TextStyle(color: Colors.grey[600])),
          validator: (String value) {
            if (value.isEmpty) {
              return 'required';
            } else {
              return null;
            }
          },
          onSaved: (value) {
            _password = value;
          },
        ));
  }

  Widget _showPrimaryButton() {
    // login or signup button
    return Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(
              radius: 3.5, colors: <Color>[Colors.pink, Colors.pink[100]]),
          borderRadius: BorderRadius.circular(15.0)),
      margin: EdgeInsets.symmetric(horizontal: 100),
      height: 30,
      child: MaterialButton(
        //  key: _globalKey,
        onPressed: _validateAndSubmit,
        child: Container(
          child: Center(
            child: Text(_formMode == FormMode.login ? 'Login' : 'Sign up',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'myriad-pro-light',
                    fontWeight: FontWeight.w900,
                    color: Colors.white)),
          ),
        ),
      ),
    );
  }

  void _moveToRegisterOrLogin() {
    setState(() {
      _globalKey.currentState.reset();
      if (_formMode == FormMode.login) {
        _formMode = FormMode.signup;
      } else if (_formMode == FormMode.signup) {
        _formMode = FormMode.login;
      }
    });
  }

  Widget _showSecondaryButton() {
    return FlatButton(
      onPressed: _moveToRegisterOrLogin,
      child: Text(
          _formMode == FormMode.login
              ? 'Don\'t have an account? Sign up'
              : 'Have an account? login',
          style: TextStyle(
              fontSize: 17,
              fontFamily: 'myriad-pro-light',
              fontWeight: FontWeight.w900,
              color: Colors.grey)),
    );
  }

  Widget _forgotPasswordButton() {
    // show if password is incorrect
  }

  Widget _showBody() {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: <Color>[
              Colors.white,
              Colors.white,
            ])),
        child: Form(
          key: _globalKey,
          child: ListView(
            children: <Widget>[
              SizedBox(height: 80),
              Image.asset('assets/images/logo_inverse_2.PNG'),
              SizedBox(height: 30),
              _emailTextFormField(),
              _passwordTextFormField(),
              SizedBox(height: 20),
              _showPrimaryButton(),
              _showSecondaryButton(),
              SizedBox(height: 40),
            ],
          ),
        ));
  }

  Widget _circularProgressIndicator() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        _showBody(),
        _circularProgressIndicator(),
      ],
    ));
  }
}
