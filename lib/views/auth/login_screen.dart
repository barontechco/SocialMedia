import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/gradient_button.dart';
import 'package:social_media/views/auth/registration.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/login_image.png'),
              Text('Members Only',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
              Image.asset('assets/images/social_media.png'),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                child: Column(
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(42.0)),
                        color: Color(0xFFFFFFFF),
                        depth: -35,
                      ),
                      child:
                      Expanded(
                        child: TextField(
                          // maxLines: 4,
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                              hintText: "Email Address",
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.mail),
                              // contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0)
                          ),
                          // controller: questionText,
                          // onSubmitted: messageController.handleSubmitted,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,bottom: 40),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          // shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(42.0)),
                          color: Color(0xFFFFFFFF),
                          depth: -35,
                        ),
                        child:
                        Expanded(
                          child: TextField(
                            // maxLines: 4,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                hintText: "Password",
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock),
                                // contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0)
                            ),
                            // controller: questionText,
                            // onSubmitted: messageController.handleSubmitted,
                          ),
                        ),
                      ),
                    ),
            Neumorphic(
                    style: NeumorphicStyle(
                      // shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                      color: Color(0xFFFFFFFF),
                      depth: 35,
                    ),
                    child: Container(
                      width: width,
                      child: UnicornOutlineButton(
                        strokeWidth: 2,
                        radius: 16,
                        gradient: LinearGradient(
                          colors: [ Colors.purple,Colors.blue,Colors.green,Colors.lightGreen],
                          // begin: Alignment.topCenter,
                          // end: Alignment.bottomCenter,
                        ),
                        child: Text('Login', style: TextStyle(fontSize: 16)),
                        onPressed: () {},
                      ),
                    ),
            ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 40),
                child: InkWell(
                    onTap: (){},
                    child: Text("Forgot your password?")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: width/2.5,
                    height: 1.0,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: Text("Or"),
                  ),
                  Container(
                    width: width/2.5,
                    height: 1.0,
                    color: Colors.black,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    color: Color(0xFFFFFFFF),
                    depth: 1,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: InkWell(child: Text('Want to apply for an account? Continue'),onTap: (){
                      Get.to(RegistrationScreen());
                    },),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginSocialButtons extends StatelessWidget {
 String image;
 Function onPressed;
 LoginSocialButtons({this.image,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        margin: EdgeInsets.only(right: 10,bottom: 10,left: 10),
        style: NeumorphicStyle(
          shape: NeumorphicShape.convex,
          boxShape:
          NeumorphicBoxShape.circle(),
          depth: 15,
          lightSource: LightSource.topLeft,
          color:  Color(0xFFFFFFFF),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: Icon(Icons.access_time),
            onTap: onPressed,
          ),
        ),

    );
  }
}
