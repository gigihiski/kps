import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kps/core/utils/constants.dart';
import 'package:kps/features/products/presentation/pages/product_page.dart';
import 'package:kps/features/promotion/presentation/pages/promotion_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  static String tag = "dashboard-page";

  @override
  Widget build(BuildContext context) {
    final kpsCard = Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        width: 300.0,
        child: Column(children: [
          Text("BALANCE",
              style: TextStyle(fontSize: 10.0, color: Colors.grey.shade500)),
          const Text("RM150",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600)),
          Container(
              child: const Text("Gigih Iski Prasetaywan",
                  style: TextStyle(fontSize: 17.0, color: Colors.white)),
              margin: const EdgeInsets.only(top: 20.0)),
          Container(
              child: const Text("ID: 123-456-789-abc",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
              margin: const EdgeInsets.only(top: 5.0))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        decoration: BoxDecoration(
            color: Constants.secondaryColor.withAlpha(80),
            borderRadius: const BorderRadius.all(Radius.circular(10))));

    Widget buildCardSlider() {
      return Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              autoPlay: false,
            ),
            items: [kpsCard, kpsCard, kpsCard],
          ));
    }

    Widget buildBalanceItem(IconData icon, String title) {
      return Column(children: [
        Icon(icon),
        Container(
            child: Text(title,
                style: const TextStyle(
                    fontSize: 12.0, color: Constants.secondaryColor)),
            margin: const EdgeInsets.only(top: 5.0))
      ]);
    }

    Widget buildBalanceAction() {
      return Card(
          elevation: 1.0,
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          child: Padding(
              child: Row(
                children: [
                  buildBalanceItem(Icons.money_outlined, "Top Up"),
                  buildBalanceItem(Icons.attach_money_outlined, "Transfer"),
                  buildBalanceItem(Icons.calendar_today_outlined, "History")
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              padding: const EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 25.0)));
    }

    Widget buildPaymentItem(String icon, String title, Function() onPressed) {
      return GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Column(children: [
                Image.asset(icon, width: 45.0, height: 45.0),
                Container(
                    child: Text(title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12.0, color: Colors.black)),
                    margin: const EdgeInsets.only(top: 5.0))
              ]),
            ),
          ),
          onTap: onPressed);
    }

    Widget buildPaymentMenu() {
      return SizedBox(
          height: 200.0,
          child: GridView.count(
              crossAxisCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                buildPaymentItem("assets/images/logo.png", "Top Up", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ProductPage(title: "Top Up")));
                }),
                buildPaymentItem("assets/images/logo.png", "Bill", () {}),
                buildPaymentItem(
                    "assets/images/logo.png", "Mobile Data", () {}),
                buildPaymentItem("assets/images/logo.png", "Invest", () {}),
                buildPaymentItem(
                    "assets/images/logo.png", "Internet & Cable TV", () {}),
                buildPaymentItem(
                    "assets/images/logo.png", "Credit Card", () {}),
                buildPaymentItem("assets/images/logo.png", "Protection", () {}),
                buildPaymentItem("assets/images/logo.png", "More", () {})
              ]));
    }

    final promotionCard = CachedNetworkImage(
      width: 275.0,
      height: 100.0,
      imageUrl: "http://via.placeholder.com/300x100",
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
              colorFilter: const ColorFilter.mode(
                  Constants.secondaryColor, BlendMode.colorBurn)),
        ),
      ),
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );

    Widget buildSliderMenu() {
      return Container(
          margin: const EdgeInsets.only(bottom: 30.0),
          child: Column(
            children: [
              Container(
                  child: Row(children: const [
                    Text("Info and Special Promotions",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold)),
                    Text("See All",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold))
                  ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  margin: const EdgeInsets.only(bottom: 10.0)),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 3.5,
                  enlargeCenterPage: false,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                ),
                items: [
                  promotionCard,
                  promotionCard,
                  promotionCard,
                  promotionCard
                ],
              )
            ],
          ));
    }

    final recommendationCard = Column(children: [
      CachedNetworkImage(
        width: 150.0,
        height: 100.0,
        imageUrl: "http://via.placeholder.com/150x100",
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(
                    Constants.secondaryColor, BlendMode.colorBurn)),
          ),
        ),
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
      Container(
          child: const Text("Insurance - Health",
              style: TextStyle(color: Colors.grey, fontSize: 11.0)),
          margin: const EdgeInsets.only(top: 10.0)),
      Container(
          child: const Text("Critical Desease Insurance",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold)),
          margin: const EdgeInsets.only(top: 5.0)),
      Container(
          child: Image.asset("assets/images/insurance.png", height: 25.0),
          margin: const EdgeInsets.only(top: 5.0))
    ], crossAxisAlignment: CrossAxisAlignment.start);

    Widget buildRecommendationMenu() {
      return Column(children: [
        Container(
            child: Row(children: const [
              Text("Recommendations",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold)),
              Text("See All",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold))
            ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            margin: const EdgeInsets.only(bottom: 10.0)),
        CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.5,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              autoPlay: false,
            ),
            items: [
              recommendationCard,
              recommendationCard,
              recommendationCard,
              recommendationCard
            ])
      ]);
    }

    Widget buildPromotionMenuButton() {
      return Container(
          width: 105.0,
          child: ElevatedButton(
              child: Row(
                children: const [
                  Icon(Icons.price_change_rounded,
                      color: Constants.secondaryColor),
                  Text("Promo",
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          color: Constants.secondaryColor))
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PromotionPage()));
              },
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(0.0),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.transparent))))),
          margin: const EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0));
    }

    return Scaffold(
      appBar: AppBar(
          title: const Text("KPS"),
          elevation: 0.0,
          centerTitle: true,
          actions: [buildPromotionMenuButton()]),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return buildCardSlider();
                }
                if (index == 1) {
                  return buildBalanceAction();
                }
                if (index == 2) {
                  return buildPaymentMenu();
                }
                if (index == 3) {
                  return buildSliderMenu();
                }
                if (index == 4) {
                  return buildRecommendationMenu();
                }
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
