part of 'widgets.dart';

class Recomendation extends StatelessWidget {
  final List<HotelModel> hotels;
  const Recomendation({Key? key, required this.hotels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(defaultPadding, 0, defaultPadding, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended Hotels',
                style:
                    blackStyle.copyWith(fontWeight: semibold, fontSize: 18.sp),
              ),
              Text(
                'View all',
                style:
                    primaryStyle.copyWith(fontWeight: medium, fontSize: 12.sp),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12.h, bottom: defaultMargin.h),
          height: 330.w,
          child: ListView.separated(
              padding: EdgeInsets.only(
                  left: defaultPadding.w, right: defaultPadding.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(12),
                    width: 280.h,
                    decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(defaultRadius)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          child: Image.asset(
                            hotels[index].imgUrl,
                            height: 200.h,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    hotels[index].name,
                                    style: blackStyle.copyWith(
                                        fontSize: 16, fontWeight: medium),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/icon_location.png',
                                        width: 12.w,
                                        height: 12.h,
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Text(
                                        hotels[index].address,
                                        style: greyStyle.copyWith(
                                            fontWeight: regular),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${hotels[index].rating}',
                                  style: greyStyle.copyWith(
                                      fontSize: 12.sp, fontWeight: medium),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Image.asset(
                                  'assets/icons/icon_star.png',
                                  width: 18.w,
                                  height: 18.h,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        Divider(
                          color: grey,
                          height: 5.h,
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Price Start from:',
                              style: greyStyle.copyWith(
                                  fontSize: 12.sp, fontWeight: regular),
                            ),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: 'IDR ${hotels[index].price}',
                                  style: primaryStyle.copyWith(
                                      fontWeight: semibold)),
                              TextSpan(
                                  text: ' /night',
                                  style: greyStyle.copyWith(
                                      fontWeight: regular, fontSize: 10.sp))
                            ]))
                          ],
                        )
                      ],
                    ),
                  ),
              separatorBuilder: (_, index) => SizedBox(width: defaultMargin.w),
              itemCount: hotels.length),
        )
      ],
    );
  }
}
