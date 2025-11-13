import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({super.key});
  static const LinearGradient linearGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [0.5, 0.6], // or [0.2, 1.0], etc.
    colors: [Color(0xFFFFFFFF), Color(0xFFCDFFCF)],
  );

  @override
  Widget build(BuildContext context) {
    final Shader shader = linearGradient.createShader(
      Rect.fromLTWH(0, 0, 115, 18),
    );
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 40,
        leading: Align(
          alignment: Alignment.centerRight,
          child: Image.asset('assets/icons/map_pin.png'),
        ),
        titleSpacing: 5,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Haldwani",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
            Text(
              "Uttarkhand,India",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 8),
            ),
          ],
        ),
        actions: [
          Container(
            width: 80,
            height: 25,
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: Colors.white),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 5, 89, 6),
                  Color.fromARGB(255, 75, 171, 78),
                ],
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/lightning.png',
                  width: 14,
                  height: 14,
                ),
                Text(
                  "Get Plus",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 20),
            width: 26,
            height: 25,
            decoration: BoxDecoration(
              border: BoxBorder.all(
                width: 1,
                color: Color(0xFFE0E0E0),
                strokeAlign: BorderSide.strokeAlignInside,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ],

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SearchBar(
              leading: Image.asset('assets/icons/search.png'),
              hintText: "Search for events",
              hintStyle: WidgetStatePropertyAll(
                TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
              ),
              backgroundColor: WidgetStateColor.transparent,
              elevation: WidgetStatePropertyAll(0),
              constraints: BoxConstraints(minHeight: 45, minWidth: 400),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              side: WidgetStatePropertyAll(
                BorderSide(
                  color: Color(0xFFBBBDBB),
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: CustomCard(
                  title: "10% cashback",
                  lable: "on every purchase with Tixoo+",
                  lableSize: 14,
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomCard(
                        title: "Events",
                        lable: "Browse all events",
                      ),
                    ),
                    Expanded(
                      child: CustomCard(
                        title: "Sports",
                        lable: "Browse all Sports events",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: CustomCard(
                  title: "Club Events",
                  lable: "Browse all Club events",
                ),
              ),
              Expanded(flex: 2, child: SizedBox.shrink()),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(bottom: 40, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 40),
                        blurRadius: 200,
                        spreadRadius: 10,
                        color: Color(0xFF246E27),
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF246E27), Color(0xFF245126)],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Live Everyday !",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = shader,
                        ),
                      ),
                      Text(
                        'Created with in Lucknow, India',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 8.57,
                          color: Color(0xFF7AFB7E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String lable;
  final double lableSize;
  final addGradientLable;
  static const LinearGradient linearGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.5, 0.6], // or [0.2, 1.0], etc.
    colors: [Color(0xF0000000), Color(0xFF15612E)],
  );
  const CustomCard({
    super.key,
    required this.title,
    required this.lable,
    this.lableSize = 8,
    this.addGradientLable = false,
  });

  @override
  Widget build(BuildContext context) {
    final Shader shader = linearGradient.createShader(
      Rect.fromLTWH(0, 0, 120, 70),
    );

    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: BoxBorder.all(
          width: 1,
          color: Colors.white,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF8F8FE),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurStyle: BlurStyle.normal,
            spreadRadius: 2,
            blurRadius: 3,
            color: Color.fromRGBO(34, 34, 34, 0.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  foreground: Paint()..shader = shader,
                ),
              ),
              Text(
                lable,
                style: addGradientLable
                    ? TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: lableSize,
                        foreground: Paint()..shader = shader,
                      )
                    : TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: lableSize,
                        color: Color(0xFF6B6B6B),
                      ),
              ),
            ],
          ),
          Spacer(),

          IconButton(
            style: ButtonStyle(
              fixedSize: WidgetStatePropertyAll(Size(16, 16)),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            constraints: BoxConstraints(
              minWidth: 20.0,
              minHeight: 20.0,
              maxWidth: 20.0,
              maxHeight: 20.0,
            ),
            onPressed: () {},
            icon: Icon(Icons.arrow_outward_rounded, size: 16),
          ),
        ],
      ),
    );
  }
}
