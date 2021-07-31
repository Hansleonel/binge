import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:binge/providers/providers.dart';
import 'package:binge/ui/ui.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Binge',
                    style: TextStyle(
                      color: Colors.yellow[700],
                      fontSize: 64,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  ChangeNotifierProvider(
                    create: (BuildContext context) => LoginFormProvider(),
                    child: _LoginForm(),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginFormProvider = Provider.of<LoginFormProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: loginFormProvider.formKeyUnique,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: "email", labelText: "Ingresa tu email"),
              onChanged: (valorTextFormField) {
                loginFormProvider.email = valorTextFormField;
              },
              validator: (valorTextFormField) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = new RegExp(pattern);

                return regExp.hasMatch(valorTextFormField ?? '')
                    ? null
                    : 'el valor ingresado no parece ser un correo';
              },
            ),
            SizedBox(
              height: 32,
            ),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecorations.authInputDecoration(
                hintText: '*******',
                labelText: 'Ingrese Password',
              ),
              onChanged: (valorTextFormPassword) {
                loginFormProvider.password = valorTextFormPassword;
              },
              validator: (valorTextFormPass) {
                if (valorTextFormPass != null &&
                    valorTextFormPass.length >= 6) {
                  return null;
                }
                return 'el valor ingresado debe de tener por lo mens 6 caracteres';
              },
            ),
            SizedBox(
              height: 32,
            ),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                disabledColor: Colors.grey,
                color: Colors.teal.shade400,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 56, vertical: 16),
                  child: Text(
                    loginFormProvider.getIsLoading ? 'Espere' : 'Ingresar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onPressed: loginFormProvider.getIsLoading
                    ? null
                    : () async {
                        FocusScope.of(context).unfocus();

                        if (!loginFormProvider.isValidForm()) {
                          print("debe de cumplir con las condicones");
                        } else {
                          loginFormProvider.setIsLoading = true;

                          await Future.delayed(Duration(seconds: 2));

                          loginFormProvider.setIsLoading = false;
                        }
                      })
          ],
        ),
      ),
    );
  }
}
