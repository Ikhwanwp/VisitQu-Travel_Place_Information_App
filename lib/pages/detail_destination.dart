part of 'pages.dart';

class DetailDestination extends StatefulWidget {
  @override
  _DetailDestinationState createState() => _DetailDestinationState();
}

class _DetailDestinationState extends State<DetailDestination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
          child: Container(
        color: mainColor,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 312,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage('images/kawah_ijen_large.png'),
                          fit: BoxFit.cover)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 42,
                        margin: EdgeInsets.only(top: 16, left: 28),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF9FBFF).withOpacity(0.6),
                            image: DecorationImage(
                                image: AssetImage('images/ic_back.png'))),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 42,
                      margin: EdgeInsets.only(top: 16, right: 28),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffF9FBFF).withOpacity(0.6),
                          image: DecorationImage(
                              image: AssetImage('images/ic_like.png'))),
                    ),
                  ],
                ),
                Positioned(
                    bottom: 30,
                    left: 18,
                    child: Container(
                      child: Text(
                        'Labuhan Bajo',
                        style: TextStyle(
                            color: mainColor,
                            fontFamily: 'RalewayBold',
                            fontSize: 20),
                      ),
                    )),
                Positioned(
                  bottom: 12,
                  left: 18,
                  child: Image.asset(
                    'images/location.png',
                    height: 16.64,
                    width: 11.64,
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 35,
                    child: Container(
                      child: Text(
                        'Nusa Tenggara Timur',
                        style: TextStyle(
                            color: mainColor,
                            fontFamily: 'RalewayBold',
                            fontSize: 10),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 67),
                      child: Text(
                        'Rating',
                        style: TextStyle(
                            fontFamily: 'RalewayBold',
                            fontSize: 20,
                            color: darkblueColor),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 67),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/star.png',
                            height: 20,
                            width: 21.11,
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(color: Color(0xff6E83B8)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  margin: EdgeInsets.only(right: 67),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ticket Price',
                          style: TextStyle(
                              fontFamily: 'RalewayBold',
                              fontSize: 20,
                              color: darkblueColor)),
                      Text(
                        'Rp. 50.000,00',
                        style: TextStyle(color: Color(0xff6E83B8)),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'About',
                style: TextStyle(
                    fontFamily: 'RalewayBold',
                    fontSize: 20,
                    color: darkblueColor),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, right: 20),
              child: Text(
                'Labuan Bajo merupakan salah satu desa dari 19 desa dan kelurahan yang berada di kecamatan Komodo, Kabupaten Manggarai Barat, provinsi Nusa Tenggara Timur, Indonesia.',
                style: TextStyle(
                    fontFamily: 'RalewayRegular',
                    fontSize: 12,
                    color: Color(0xff6E83B8)),
              ),
            )
          ],
        ),
      )),
    );
  }
}

// class DetailDestination extends StatelessWidget {
//   // final Widget like = new SvgPicture.asset('images/like.svg');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: null,
//       body: SafeArea(
//           child: Container(
//         color: mainColor,
//         child: ListView(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: 312,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(20),
//                           bottomRight: Radius.circular(20)),
//                       image: DecorationImage(
//                           image: AssetImage('images/kawah_ijen_large.png'),
//                           fit: BoxFit.cover)),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Positioned(
//                       child: Container(
//                         height: 40,
//                         width: 42,
//                         margin: EdgeInsets.only(top: 16, left: 28),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             color: Color(0xffF9FBFF).withOpacity(0.6),
//                             image: DecorationImage(
//                                 image: AssetImage('images/ic_back.png'))),
//                       ),
//                     ),
//                     Container(
//                       height: 40,
//                       width: 42,
//                       margin: EdgeInsets.only(top: 16, right: 28),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           color: Color(0xffF9FBFF).withOpacity(0.6),
//                           image: DecorationImage(
//                               image: AssetImage('images/ic_like.png'))),
//                     ),
//                   ],
//                 ),
//                 Positioned(
//                     bottom: 30,
//                     left: 18,
//                     child: Container(
//                       child: Text(
//                         'Labuhan Bajo',
//                         style: TextStyle(
//                             color: mainColor,
//                             fontFamily: 'RalewayBold',
//                             fontSize: 20),
//                       ),
//                     )),
//                 Positioned(
//                   bottom: 12,
//                   left: 18,
//                   child: Image.asset(
//                     'images/location.png',
//                     height: 16.64,
//                     width: 11.64,
//                   ),
//                 ),
//                 Positioned(
//                     bottom: 10,
//                     left: 35,
//                     child: Container(
//                       child: Text(
//                         'Nusa Tenggara Timur',
//                         style: TextStyle(
//                             color: mainColor,
//                             fontFamily: 'RalewayBold',
//                             fontSize: 10),
//                       ),
//                     )),
//               ],
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 67),
//                       child: Text(
//                         'Rating',
//                         style: TextStyle(
//                             fontFamily: 'RalewayBold',
//                             fontSize: 20,
//                             color: darkblueColor),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 67),
//                       child: Row(
//                         children: [
//                           Image.asset(
//                             'images/star.png',
//                             height: 20,
//                             width: 21.11,
//                           ),
//                           Text(
//                             '4.9',
//                             style: TextStyle(color: Color(0xff6E83B8)),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(right: 67),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Ticket Price',
//                           style: TextStyle(
//                               fontFamily: 'RalewayBold',
//                               fontSize: 20,
//                               color: darkblueColor)),
//                       Text(
//                         'Rp. 50.000,00',
//                         style: TextStyle(color: Color(0xff6E83B8)),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 24),
//               child: Text(
//                 'About',
//                 style: TextStyle(
//                     fontFamily: 'RalewayBold',
//                     fontSize: 20,
//                     color: darkblueColor),
//               ),
//             ),
//             SizedBox(
//               height: 14,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 36, right: 20),
//               child: Text(
//                 'Labuan Bajo merupakan salah satu desa dari 19 desa dan kelurahan yang berada di kecamatan Komodo, Kabupaten Manggarai Barat, provinsi Nusa Tenggara Timur, Indonesia.',
//                 style: TextStyle(
//                     fontFamily: 'RalewayRegular',
//                     fontSize: 12,
//                     color: Color(0xff6E83B8)),
//               ),
//             )
//           ],
//         ),
//       )),
//       // bottomNavigationBar: BottomNavigation(),
//     );
//   }
// }
