part of 'widgets.dart';

class NewHotels extends StatelessWidget {
  final List<HotelModel> hotels;
  NewHotels({Key? key, required this.hotels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(defaultPadding, 0, defaultPadding, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New Hotels Experience',
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
          Container(
            margin: EdgeInsets.only(top: 12.h),
            width: double.infinity,
            child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.all(12),
                      height: 94.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          color: secondary),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(defaultRadius),
                                child: Image.asset(
                                  hotels[index].imgUrl,
                                  width: 70.w,
                                  height: 70.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      hotels[index].name,
                                      style: blackStyle.copyWith(
                                          fontWeight: medium),
                                    ),
                                    Text(hotels[index].address,
                                        style: greyStyle.copyWith(
                                            fontWeight: regular,
                                            fontSize: 12.sp))
                                  ],
                                ),
                              ),
                            ],
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
                    ),
                separatorBuilder: (_, index) =>
                    SizedBox(height: defaultMargin.w),
                itemCount: hotels.length),
          ),
          SizedBox(
            height: 70.h,
          )
        ],
      ),
    );
  }
}
