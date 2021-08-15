part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 106.77,
              width: 109,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/ikhwan.png'),
                  ),
                  Positioned(
                      bottom: -3,
                      left: 40,
                      child: Container(
                        height: 31,
                        width: 31,
                        decoration: BoxDecoration(
                            color: mainColor, shape: BoxShape.circle),
                      )),
                  Positioned(
                    bottom: 0,
                    left: 43,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: darkblueColor, shape: BoxShape.circle),
                      child: IconButton(
                        color: mainColor,
                        icon: SvgPicture.asset('images/cancel.svg'),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Username
                Center(
                  child: SizedBox(
                    width: 312,
                    child: TextField(
                      enabled: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: 'Ikhwan Wiratama Putra',
                          labelText: 'Username',
                          labelStyle:
                              TextStyle(fontSize: 20, color: darkblueColor),
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // EmailAddress
                Center(
                  child: SizedBox(
                    width: 312,
                    child: TextField(
                      enabled: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: 'wiratama900@gmail.com',
                          labelText: 'Email Address',
                          labelStyle:
                              TextStyle(fontSize: 20, color: darkblueColor),
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Country
                Center(
                  child: SizedBox(
                    width: 312,
                    child: TextField(
                      enabled: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: 'Indonesi',
                          labelText: 'Country',
                          labelStyle:
                              TextStyle(fontSize: 20, color: darkblueColor),
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Password
                Center(
                  child: SizedBox(
                    width: 312,
                    child: TextField(
                      enabled: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: '*********',
                          labelText: 'Password',
                          labelStyle:
                              TextStyle(fontSize: 20, color: darkblueColor),
                          border: OutlineInputBorder()),
                      obscureText: true,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigation(),
    );
  }
}
