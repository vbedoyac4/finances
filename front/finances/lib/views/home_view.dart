import 'package:finances/views_models/home_model.dart';
import 'package:finances/widgets/ButtonWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finances/shared/globals.dart';
import 'package:finances/widgets/TextFieldWidget.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final model = Provider.of<HomeModel>(context);

    return Scaffold(
      backgroundColor: Global.white,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextFieldWidget(
                hintText: 'Email',
                obscureText: false,
                prefixIconData: Icons.mail_outline,
                suffixIconData: model.isValid ? Icons.check : null,
                onChanged: (value) {
                  model.isValidEmail(value);
                },
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFieldWidget(
                    hintText: 'Password',
                    obscureText: true,
                    prefixIconData: Icons.lock_outline,
                  ),
                  SizedBox(height: 10),
                  Text('Forgot password?',
                  style: TextStyle(
                    color: Global.mediumBlue
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              ButtonWidget(
                title: 'Login',
                hasBorder: false
              ),
              SizedBox(height: 10,),
              ButtonWidget(
                  title: 'Sign Up',
                  hasBorder: true
              ),
            ],
          ),
        ),
    );
  }

}