part of 'pages.dart';

class Home extends StatelessWidget {
  final List<HotelModel> hotels = HotelModel.mockHotel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: Container(
        width: double.infinity,
        height: 72.h,
        color: navBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/icons/icon_home.png',
              width: 20.w,
              height: 20.h,
            ),
            Image.asset('assets/icons/icon_search.png',
                width: 20.w, height: 20.h),
            Image.asset('assets/icons/icon_explore.png',
                width: 20.w, height: 20.h),
            Image.asset('assets/icons/icon_profile.png',
                width: 20.w, height: 20.h),
          ],
        ),
      )),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 125.h,
                color: primary,
              ),
              Expanded(
                  child: Container(
                color: defaultBackground,
              ))
            ],
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        defaultPadding, 10, defaultPadding, 0),
                    child: Navbar(),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        defaultPadding, 0, defaultPadding, 0),
                    child: Balance(),
                  ),
                  Recomendation(
                    hotels: hotels,
                  ),
                  NewHotels(
                    hotels: hotels,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
