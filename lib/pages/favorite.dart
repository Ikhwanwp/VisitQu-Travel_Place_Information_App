part of 'pages.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Container(
          height: 92,
          width: 300,
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 52),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(14)),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 4, top: 3),
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('images/kawah_ijen.png'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    child: Text(
                      'Kawah Ijen',
                      style: TextStyle(
                          fontFamily: 'RalewayBold',
                          color: darkblueColor,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    child: Text(
                      'Gunung Ijen adalah sebuah\ngunung berapi yang terletak\ndi perbatasan Banyuwangi',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'RalewayRegular',
                          color: darkblueColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 18,
              ),
              Container(
                child: Image.asset(
                  'images/red_like.png',
                  width: 16.67,
                  height: 15,
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigation(),
    );
  }
}
