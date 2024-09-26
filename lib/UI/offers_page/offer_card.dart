import 'package:ads_app/UI/offers_page/widgets/semi_circle_arc.dart';
import 'package:ads_app/models/offers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OfferCard extends StatefulWidget {
  final Offers offers;
  const OfferCard({super.key, required this.offers});

  @override
  State<OfferCard> createState() => _ShopCardState();
}

class _ShopCardState extends State<OfferCard> {

String _datetoString(DateTime value){

  String val = DateFormat("dd/MM/yy hh:mm a").format(value);
  return val;
}

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14)),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Flexible(
                          flex: 2,
                          child: IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                    color:Colors.redAccent,
                                    borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SemiArc(),
                                      SemiArc(),
                                      SemiArc(),
                                      SemiArc(),
                                    ],),
                                    
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 40),
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: RotatedBox(
                                            quarterTurns: 3,
                                            child: Text(widget.offers.couponName,style:TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 20,)),
                                            ),
                                      ),
                                    ),
                                    
                                    ),
                                    
                                     
                                ],
                              ),
                            ),
                          ),
                        ),
                          Expanded(
                            flex: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                    Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if(widget.offers.logoUrl != null)
                                      CachedNetworkImage(imageUrl:widget.offers.logoUrl?? '',height: 50,width: 50,),
                                                                     
                                      Container(
                                            padding: EdgeInsets.only(top: 8,left: 8),
                                            child: Column(
                                        children: [
                                            Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                widget.offers.shopName,
                                                style: TextStyle(fontSize: 24),)),
                                          ),
                                           FittedBox(
                                          fit:BoxFit.cover,
                                          child: Text(_datetoString(widget.offers.validTill))),
                                        ],
                                      ),
                                          ),
                                    ],
                                  ),
                                  Divider(),
                                     Text(widget.offers.couponDetails,
                                     maxLines: 5,
                                     softWrap: true,
                                     overflow: TextOverflow.ellipsis, ),
                                ],
                              ),
                            ),
                          )
                      ],)),);
  }
}
