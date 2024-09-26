import 'package:ads_app/UI/offers_page/shop_page.dart';
import 'package:flutter/material.dart';

class ShopCard extends StatefulWidget {
  const ShopCard({super.key});

  @override
  State<ShopCard> createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ShopScreen()));
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://images.unsplash.com/photo-1507146426996-ef05306b995a?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')) ),),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Card(
                color: const Color.fromARGB(180, 255, 255, 255),
                child: Center(child: Column(
                  children: [
                    Text("Shop Name"),
                    Text("Shop Details")
                  ],
                )),))
          ],
        ),
      ) ,);
  }
}