import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newzler/configs/utils.dart';
import 'package:newzler/presentation/views/news_details/news_details_view.dart';
import 'package:newzler/presentation/views/widgets/widgets.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _current = 0;

  final CarouselSliderController _controller = CarouselSliderController();

  final imgList = [
    "assets/images/home-screen-banner.png",
    // more images here
  ];

  final carouselTextList = [
    // news 1 map
    {
      'news_channel_logo': 'assets/images/news-18-logo.png',
      'news_channel_name': 'News 18',
      'news_time_ago': '1h',
      'news_location': 'US & Canada',
      'news_title':
          'Trump presidency\'s final days; in his mind, he will not have lost\'',
    },
    // more maps here
  ];

  // tabs for top navigation bar
  final TabBar tabBar = TabBar(
      // dividerColor: null,
      dividerHeight: 0.0,
      unselectedLabelColor: Utils.whiteColor,
      labelColor: Utils.kAppPrimaryColor,
      indicatorColor: Utils.kAppPrimaryColor,
      indicatorWeight: 5.0,
      indicatorPadding: const EdgeInsets.all(5.0),
      // indicator: ShapeDecoration(
      //     shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.all(Radius.circular(10.0))),
      //     color: Utils.kAppPrimaryColor,),
      indicatorSize: TabBarIndicatorSize.label,
      tabs: <Tab>[
        Tab(
            icon: Text(
          'My News',
          style: Utils.kAppPrimaryTextStyle
              .copyWith(fontSize: 10.25, fontWeight: FontWeight.w800),
        )),
        Tab(
            icon: Text(
          'World',
          style: Utils.kAppPrimaryTextStyle
              .copyWith(fontSize: 10.25, fontWeight: FontWeight.w800),
        )),
        Tab(
            icon: Text(
          'Business',
          style: Utils.kAppPrimaryTextStyle
              .copyWith(fontSize: 10.25, fontWeight: FontWeight.w800),
        )),
        Tab(
            icon: Text(
          'Health',
          style: Utils.kAppPrimaryTextStyle
              .copyWith(fontSize: 10.25, fontWeight: FontWeight.w800),
        )),
        Tab(
            icon: Text(
          'Travel',
          style: Utils.kAppPrimaryTextStyle
              .copyWith(fontSize: 10.25, fontWeight: FontWeight.w800),
        )),
      ]);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: DefaultTabController(
        length: 5,
        child: Column(
          children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              _slider(),
              CustomSpace(tabBar: tabBar),
            ],
          ),
          const SizedBox(height: 30,),
          const TrendingText(),
          const SizedBox(height: 30,),
          const TrendingList(),
          const SizedBox(height: 30,),
          const TabVIewHome(),
          const SizedBox(height: 80,),
         
          ],
        ),
      ),
    );
  }
  































  CarouselSlider _slider() {
    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
          viewportFraction: 1.0,
          // autoPlay: true,
          height: 540.0,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
      items: [0, 1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(imgList[0]))),
                // height: 540.0,
                // width: 300.0,
                // news details column
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        // news channel logo
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              '${carouselTextList[0]['news_channel_logo']}'),
                        ),
                        // space
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // news channel name
                            Text(
                              carouselTextList[0]['news_channel_name']
                                  as String,
                              style: Utils.kAppPrimaryTextStyle.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: Utils.whiteColor),
                            ),
                            Row(
                              children: [
                                // news channel location
                                Text(
                                  textAlign: TextAlign.center,
                                  carouselTextList[0]['news_time_ago']
                                      as String,
                                  style: Utils.kAppPrimaryTextStyle.copyWith(
                                      fontSize: 12.0,
                                      color: Utils.lightGreyColor3),
                                ),
                                Text(
                                  ' | ',
                                  style: Utils.kAppPrimaryTextStyle
                                      .copyWith(color: Utils.greyColor),
                                ),
                                // news channel location
                                Text(
                                  textAlign: TextAlign.center,
                                  carouselTextList[0]['news_location']
                                      as String,
                                  style: Utils.kAppPrimaryTextStyle.copyWith(
                                      fontSize: 12.0,
                                      color: Utils.lightGreyColor3),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // space
                    const SizedBox(
                      height: 30.0,
                    ),
                    // news headline title
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewsDetailsView()),
                        );
                      },
                      child: Text(
                        carouselTextList[0]['news_title'] as String,
                        style: Utils.kAppPrimaryTextStyle
                            .copyWith(color: Utils.whiteColor),
                      ),
                    ),

                    // space
                    const SizedBox(
                      height: 30.0,
                    ),

                    // interaction options row
                    NewsInteractionButtons(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      whiteColoredIcons: true,
                    ),

                    // space
                    const SizedBox(
                      height: 30.0,
                    ),

                    // indiactor row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [0, 1, 2, 3].asMap().entries.map((entry) {
                            return GestureDetector(
                                onTap: () =>
                                    _controller.animateToPage(entry.key),
                                child: Container(
                                    width: _current == entry.key ? 23.0 : 7.0,
                                    // width: 7.0,
                                    height: 7.0,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 4.0),
                                    decoration: _current == entry.key
                                        ? BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Utils.kAppPrimaryColor)
                                        : BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Utils.whiteColor,
                                          )));
                          }).toList(),
                        ),
                        // space
                        const SizedBox(
                          width: 60.0,
                        ),
                        // view all text in row
                        Column(
                          children: [
                            const SizedBox(
                              height: 15.0,
                            ),
                            Text('View all ->',
                                style: Utils.kAppPrimaryTextStyle.copyWith(
                                    fontSize: 14.0,
                                    color: Utils.kAppPrimaryColor,
                                    fontWeight: FontWeight.w800)),
                          ],
                        )
                      ],
                    ),

                    // space
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                  ],
                ));
          },
        );
      }).toList(),
    );
  }
}

class TabVIewHome extends StatelessWidget {
  const TabVIewHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: TabBarView(
          // tab bar views
          children:
              ['My news', "World", "Business", "Health", "Travel"].map((title) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                title,
                style: Utils.kAppPrimaryTextStyle
                    .copyWith(fontSize: 18.0, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // image
            const Center(
              child: SizedBox(
                width: 390,
                height: 116,
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/tab-image.png')),
              ),
            )
          ],
        );
      }).toList()
          /*
            Container(
              height: 100.0,
              // color: Colors.pink,
              child: Center(
                child: Text(
                  'World',
                ),
              ),
            ),
            Container(
              height: 100.0,
              // color: Colors.pink,
              child: Center(
                child: Text(
                  'Business',
                ),
              ),
            ),
            Container(
              height: 100.0,
              // color: Colors.pink,
              child: Center(
                child: Text(
                  'Health',
                ),
              ),
            ),
            Container(
              height: 100.0,
              // color: Colors.pink,
              child: Center(
                child: Text(
                  'Travel',
                ),
              ),
            ),
              */
          ),
    );
  }
}

class TrendingList extends StatelessWidget {
  const TrendingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: [1, 2, 3, 4].map((i) {
          return Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                  color: Utils.lightGreyColor4,
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                child: Text(
                  'Trending-$i',
                  style: Utils.kAppPrimaryTextStyle
                      .copyWith(fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
            ],
          );
        }).toList()),
      ),
    );
  }
}

class TrendingText extends StatelessWidget {
  const TrendingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        children: [
          Text(
            'Trending',
            textAlign: TextAlign.start,
            style: Utils.kAppPrimaryTextStyle.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 20.0,
                color: Utils.greyColor),
          ),
        ],
      ),
    );
  }
}

class CustomSpace extends StatelessWidget {
  const CustomSpace({
    super.key,
    required this.tabBar,
  });

  final TabBar tabBar;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      child: SizedBox(height: 50, child: tabBar),
    ));
  }
}
