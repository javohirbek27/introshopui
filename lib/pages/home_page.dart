import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text("Cars", style: TextStyle(color: Colors.black, fontSize: 25,),),
        actions: [
          IconButton(
              onPressed:(){},
              icon: Icon(Icons.notifications_none,),
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Red"),
                    singleTab(false, "Blue"),
                    singleTab(false, "Green"),
                    singleTab(false, "Grey"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car5.jpg"),
            ],
          )
        )
      ),
    );
  }

  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10,),
        decoration: BoxDecoration(
          color: type? Colors.grey :  Colors.white,
            borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text, style: TextStyle(
            fontSize: type ? 20 : 17,
            color: type ? Colors.white : Colors.grey,
          ),),
        ),
      ),
    );
  }

  Widget makeItem(String image) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.3),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sport Car", style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    fontWeight: FontWeight.w100
                    ),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(Icons.favorite_outline, size: 20, color: Colors.grey,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  "Electric",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              "100\$",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w200,
              ),
            )
          ],
        ),
      ),
    );
  }


}
