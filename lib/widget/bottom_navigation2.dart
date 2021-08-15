part of 'widgets.dart';

class BottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  BottomNav({this.selectedIndex = 0, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onLongPress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailDestination();
              }));
            },
            child: Container(
              width: 27.76,
              height: 25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/home' +
                          ((selectedIndex == 0) ? '.png' : '_normal.png')),
                      fit: BoxFit.contain)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
              width: 21.52,
              height: 25,
              margin: EdgeInsets.symmetric(horizontal: 83),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/like' +
                          ((selectedIndex == 1) ? '.png' : '_normal.png')),
                      fit: BoxFit.contain)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Container(
              width: 21.05,
              height: 25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/profile' +
                          ((selectedIndex == 2) ? '.png' : '_normal.png')),
                      fit: BoxFit.contain)),
            ),
          ),
        ],
      ),
    );
  }
}
