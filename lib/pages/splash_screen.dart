part of 'pages.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 134),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    fontFamily: 'RalewayMedium',
                    fontSize: 20,
                    color: darkblueColor,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Text(
                  'App VisitQu',
                  style: TextStyle(
                      fontFamily: 'RaleWaySemiBold',
                      fontSize: 30,
                      color: darkblueColor),
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Image.asset(
                'images/Icon_paper_plane.png',
                width: 126,
                height: 95,
              ),
              SizedBox(
                height: 73,
              ),
              Container(
                  // margin: EdgeInsets.only(),
                  width: 206,
                  height: 35,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return MainPage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: darkblueColor,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30))),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontFamily: 'RalewayMedium',
                            fontSize: 18,
                            color: mainColor),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
