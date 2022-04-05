part of 'widgets.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 16.w,
          height: 14.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icons/icon_menu.png'))),
        ),
        Text(
          'Discover',
          style: secondaryStyle.copyWith(fontWeight: semibold, fontSize: 20.sp),
        ),
        Container(
          child: Stack(
            children: [
              Container(
                width: 16.w,
                height: 14.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/icon_notif.png'))),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 5.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffF2735B)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
