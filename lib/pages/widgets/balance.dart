part of 'widgets.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, bottom: defaultMargin),
      padding: const EdgeInsets.all(15),
      height: 80.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius), color: secondary),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Balance',
              style: greyStyle.copyWith(
                fontWeight: regular,
              ),
            ),
            Text(
              'IDR 9.200.301',
              style:
                  primaryStyle.copyWith(fontWeight: semibold, fontSize: 18.sp),
            ),
          ],
        ),
        Container(
          width: 24.w,
          height: 24.h,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: Color(0xffE4EDFF)),
          child: Image.asset('assets/icons/icon_plus.png'),
        )
      ]),
    );
  }
}
