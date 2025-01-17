import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/components/background.dart';
import 'package:login/components/custom_colors.dart';
import 'package:login/components/custom_textForm.dart';
import 'package:login/constants/screen_size.dart';
import 'package:login/map/location.dart';
import 'package:login/signup/signup_page.dart';

class LoginPage extends StatelessWidget {
    LoginPage({Key? key}) : super(key: key);
     TextEditingController username = TextEditingController();
     TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Background(
              topBackGroundImage: Image.asset("assets/images/main_top.png",width: ScreenSize.screenWidth * 0.35,),
              title: "LOGIN",
              bodyImage: SvgPicture.asset("assets/images/login.svg"), 
              body: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenSize.screenWidth * 0.1,
                  
                  ),
                child: Column(children: [
                  
                  CustomTextForm(
                    hintText: "Username",
                    controller: username,
                    pIcon: const Icon(Icons.person),
                    ),
                    SizedBox(height: ScreenSize.screenHeight * 0.01,),
                    CustomTextForm(
                    hintText: "Password",
                    controller: password,
                    inputtype: CustomInputTypes.password,
                    pIcon: const Icon(Icons.lock),
                    ),
                    
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  const Location();
                  },
                ),
              );
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.3, vertical: ScreenSize.screenHeight * 0.01)),
 backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
     // side: BorderSide(color: Colors.red)
    )
  )
 ), 
            child: Text(
              "Lgoin".toUpperCase(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: ScreenSize.screenHeight * 0.02,),
                     InkWell (
                      onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  SignupPage();
                  },
                ),
              ),
                      child: Text("Don’t have an Account ? ",
                              style:  TextStyle(color: kPrimaryColor),
                            ),
                    ),
                ],),
              ), bottomBackgroundImage: Image.asset("assets/images/login_bottom.png",width: ScreenSize.screenWidth *0.2,), bottomImgaeLocation: 0, 
              )
            ],
          ),
        ),
      );
  }
}