import 'package:age_calculator/screens/calendar_screen.dart';
import 'package:age_calculator/screens/homePage.dart';
import 'package:age_calculator/shared/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Product Sans",
          scaffoldBackgroundColor: Colors.black,
          // primaryColor: Colors.black,
          //accentColor: Colors.black,
          colorScheme: ColorScheme.light(
            primary: const Color(0xFF000000),
            onPrimary: Color(0xffCDDC39),
            surface: Colors.pink,
          ),
        ),
        home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              child: Container(
                margin: EdgeInsets.only(
                  top: SizeConfig.safeBlockVertical * 34,
                  left: SizeConfig.safeBlockHorizontal * 25,
                  right: SizeConfig.safeBlockHorizontal * 25,
                  bottom: SizeConfig.safeBlockVertical * 25,
                ),
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical * 20,
                ),
                decoration: BoxDecoration(
                    color: Color(0xffCDDC39),
                    borderRadius: BorderRadius.circular(
                      SizeConfig.safeBlockVertical * 8,
                    )),
                child: Center(
                  child: Text(
                    "AGE CALCULATOR",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.safeBlockVertical * 30,
                      letterSpacing: SizeConfig.safeBlockHorizontal * 1.5,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.safeBlockHorizontal * 25,
                right: SizeConfig.safeBlockHorizontal * 25,
                bottom: SizeConfig.safeBlockVertical * 25,
              ),
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.safeBlockVertical * 20,
              ),
              decoration: BoxDecoration(
                  color: Color(0xffCDDC39),
                  borderRadius: BorderRadius.circular(
                    SizeConfig.safeBlockVertical * 8,
                  )),
              child: Center(
                child: Text(
                  "SET REMINDER",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.safeBlockVertical * 30,
                    letterSpacing: SizeConfig.safeBlockHorizontal * 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
