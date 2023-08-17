import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00dabf),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              CustomRow(
                text1: "Price Monitor",
                icon: Icons.search_rounded,
                text2: "Search",
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomCliprrect(
                    imagePath: "assets/images/camera.png",
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Photo Camera',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Montserrat-SemiBold",
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            "Features",
                            style: TextStyle(
                              fontFamily: "Montserrat-SemiBold",
                              fontSize: 18,
                              color: Color(0xffc3cbd2),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Icon(
                            CupertinoIcons.list_bullet,
                            color: Color(0xffc3cbd2),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CustomContainer(
                            text: 'ISO',
                          ),
                          SizedBox(
                            width: 19,
                          ),
                          CustomContainer(
                            text: 'Back Focus',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          CustomContainer(
                            text: 'Metering',
                          ),
                          SizedBox(
                            width: 29,
                          ),
                          CustomContainer(
                            text: 'Focusing',
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              CustomRow(
                text1: 'Shops',
                text2: 'Best Price',
                icon: Icons.arrow_drop_down_sharp,
              ),
              SizedBox(
                height: 25,
              ),
              CustomWidget2(
                text1: "Lorem Shop",
                shipping: "Free",
                price: "\$1.865",
                color: Color(0xfffed52b),
                imagePath: "assets/images/image1.png",
                width: 37,
              ),
              SizedBox(
                height: 27,
              ),
              CustomWidget2(
                text1: "Ipsum Shop",
                shipping: "\$3.6",
                price: "\$1.901",
                color: Color(0xff04d9c2),
                imagePath: "assets/images/image2.png",
                width: 38,
              ),
              SizedBox(
                height: 27,
              ),
              CustomWidget2(
                text1: "Dolor Shop",
                shipping: "Free",
                price: "\$1.987",
                color: Color(0xff009ea1),
                imagePath: "assets/images/image3.png",
                width: 47,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCliprrect extends StatelessWidget {
  const CustomCliprrect({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        imagePath,
        width: 130,
        height: 130,
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 70),
      height: 30,
      decoration: const BoxDecoration(
        color: Color(0xffdae9f5),
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.text1,
    required this.icon,
    required this.text2,
  });

  final String text1;
  final IconData icon;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat-Bold',
          ),
        ),
        const Spacer(),
        Icon(
          icon,
          size: 28,
          color: const Color(0xffc3cbd2),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text2,
          style: const TextStyle(
            color: Color(0xffc3cbd2),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat-Bold',
          ),
        ),
      ],
    );
  }
}

class CustomWidget2 extends StatelessWidget {
  const CustomWidget2({
    super.key,
    required this.text1,
    required this.shipping,
    required this.price,
    required this.color,
    required this.imagePath,
    required this.width,
  });

  final String imagePath;
  final String text1;
  final String shipping;
  final String price;
  final Color color;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCliprrect(
          imagePath: imagePath,
        ),
        const SizedBox(
          width: 35,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: "Montserrat-SemiBold",
                  ),
                ),
                SizedBox(
                  width: width,
                ),
                const Icon(
                  CupertinoIcons.list_bullet,
                  color: Color(0xffc3cbd2),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "Shipping: $shipping",
              style: const TextStyle(
                fontFamily: "Montserrat-SemiBold",
                fontSize: 18,
                color: Color(0xffc3cbd2),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                const Icon(
                  CupertinoIcons.globe,
                  color: Color(0xffc3cbd2),
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Go on website",
                  style: TextStyle(
                    fontFamily: "Montserrat-SemiBold",
                    fontSize: 18,
                    color: color,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "\$$price",
              style: TextStyle(
                fontSize: 18,
                color: color,
                fontFamily: "Montserrat-SemiBold",
              ),
            ),
          ],
        )
      ],
    );
  }
}
