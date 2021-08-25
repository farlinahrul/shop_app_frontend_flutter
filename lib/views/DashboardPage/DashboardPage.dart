import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/theme/PaletteColor.dart';
import 'package:shop_app/theme/TypographyStyle.dart';
import 'package:shop_app/views/DashboardPage/SubPage/ChatPage.dart';
import 'package:shop_app/views/DashboardPage/SubPage/HomePage.dart';
import 'package:shop_app/views/DashboardPage/SubPage/ProfilePage.dart';
import 'package:shop_app/views/DashboardPage/SubPage/WishlistPage.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndexPage = 0;

  Widget header() {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hallo, Alex',
                style: TypographyStyle.primaryTextStyle
                    .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Text(
                '@alexkeinn',
                style: TypographyStyle.subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/icon_profile.png',
            width: 54,
          )
        ],
      ),
    );
  }

  Widget cardButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: PaletteColor.secondaryColor,
      child: Image.asset(
        'assets/icon_cart.png',
      ),
    );
  }

  Widget customButtonNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          currentIndex: currentIndexPage,
          backgroundColor: PaletteColor.bgColor4,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
            currentIndexPage = value;
            print('Page : $currentIndexPage');
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: SvgPicture.asset(
                  'assets/icon_home.svg',
                  color: currentIndexPage == 0 ? PaletteColor.primaryColor : Color(0xff808191),
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10, right: 35),
                child: SvgPicture.asset(
                  'assets/icon_chat.svg',
                  color: currentIndexPage == 1 ? PaletteColor.primaryColor : Color(0xff808191),
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10, left: 35),
                child: SvgPicture.asset(
                  'assets/icon_love.svg',
                  color: currentIndexPage == 2 ? PaletteColor.primaryColor : Color(0xff808191),
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: SvgPicture.asset(
                  'assets/icon_user.svg',
                  color: currentIndexPage == 3 ? PaletteColor.primaryColor : Color(0xff808191),
                  width: 18,
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget body() {
    switch (currentIndexPage) {
      case 0:
        return HomePage();
        break;
      case 1:
        return ChatPage();
        break;
      case 2:
        return WishlistPage();
        break;
      case 3:
        return ProfilePage();
        break;
      default:
        return HomePage();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColor.bgColor1,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
