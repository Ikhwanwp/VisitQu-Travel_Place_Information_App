part of 'pages.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: mainColor,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                margin: EdgeInsets.only(top: 28, left: 28, right: 28),
                child: Text(
                  'Lets Enjoy\nYour Trip!',
                  style: TextStyle(
                      fontFamily: 'RalewayRegular',
                      fontSize: 20,
                      color: darkblueColor),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 34,
                    decoration: BoxDecoration(
                        border: Border.all(color: darkblueColor),
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Image.asset(
                              'images/search.png',
                              color: mediumblueColor,
                              width: 17.48,
                              height: 17.48,
                            ),
                            border: InputBorder.none,
                            hintText: 'Search Your Destination',
                            hintStyle: TextStyle(
                                fontFamily: 'RalewayRegular',
                                fontSize: 14,
                                color: mediumblueColor)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                margin: EdgeInsets.only(left: 40),
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                    labelPadding: EdgeInsets.only(left: 20, right: 14),
                    indicatorPadding: EdgeInsets.only(left: 14, right: 14),
                    isScrollable: true,
                    labelColor: darkblueColor,
                    unselectedLabelColor: mediumblueColor,
                    labelStyle: TextStyle(
                        color: mainColor,
                        fontFamily: 'RalewayRegular',
                        fontSize: 15),
                    tabs: [
                      Tab(
                        child: Container(
                          child: Text(
                            'All',
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                            'New',
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                            'Popular',
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                            'Top 10',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 218,
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 50),
                    itemCount: recomended.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 143,
                        height: 182,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return DetailDestination();
                                  }));
                                });
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    height: 182,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                recomended[index].image),
                                            fit: BoxFit.cover)),
                                  ),
                                  Positioned(
                                      bottom: 25,
                                      left: 8,
                                      child: Container(
                                        child: Text(
                                          recomended[index].name,
                                          style: TextStyle(color: mainColor),
                                        ),
                                      )),
                                  Positioned(
                                    bottom: 12,
                                    left: 8,
                                    child: Image.asset(
                                      recomended[index].icon,
                                      height: 12.48,
                                      width: 8.73,
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 10,
                                      left: 20,
                                      child: Container(
                                        child: Text(
                                          recomended[index].name,
                                          style: TextStyle(color: mainColor),
                                        ),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 28),
                child: Text(
                  'Province',
                  style: TextStyle(
                      fontFamily: 'RaleWaySemiBold',
                      fontSize: 15,
                      color: darkblueColor),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                height: 92,
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 50),
                    itemCount: province.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 257,
                        height: 92,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(14)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 4, top: 3),
                                  height: 86,
                                  width: 86,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image:
                                              AssetImage(province[index].image),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        province[index].country,
                                        style: TextStyle(
                                            color: darkblueColor,
                                            fontFamily: 'RalewayBold',
                                            fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Container(
                                      child: Image.asset(
                                        province[index].icon,
                                        height: 14,
                                        width: 38,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
