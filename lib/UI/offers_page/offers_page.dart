import 'package:ads_app/UI/offers_page/bloc/offers_bloc.dart';
import 'package:ads_app/UI/offers_page/bloc/offers_state.dart';
import 'package:ads_app/UI/offers_page/offer_card.dart';
import 'package:ads_app/UI/offers_page/shop_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({super.key});

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {

  Widget individualTab(IconData iconData) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 50 + MediaQuery.of(context).padding.bottom,
        padding: EdgeInsets.all(0),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Colors.blueGrey),
        child: Tab(
          icon: Icon(iconData),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: BlocConsumer<OffersBloc, OffersState>(
          listener: (context, state) {
            
          },
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.purple.shade300],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                title: Text('Stores'),
              ),
              body: Container(
                color: Colors.blue[100],
                child: Column(
                  children: [
                    Flexible(
                      child: TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelPadding: EdgeInsets.all(0),
                        indicatorPadding: EdgeInsets.all(0),
                        tabs: [
                          individualTab(Icons.local_offer),
                          individualTab(Icons.store)
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: TabBarView(
                        children: [
                          ListView.builder(
                            itemCount: state.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return OfferCard(offers: state.data[index]);
                            },
                          ),
                          GridView.builder(
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index){
                              return ShopCard();
                            }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.0,
                            ),)

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
