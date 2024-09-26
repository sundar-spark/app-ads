import 'package:ads_app/UI/bills_page/bills_page.dart';
import 'package:ads_app/UI/bills_page/bloc/bills_bloc.dart';
import 'package:ads_app/UI/bills_page/bloc/bills_event.dart';
import 'package:ads_app/UI/offers_page/bloc/offers_bloc.dart';
import 'package:ads_app/UI/offers_page/bloc/offers_event.dart';
import 'package:ads_app/UI/offers_page/offers_page.dart';
import 'package:ads_app/UI/profile_page/profile_page.dart';
import 'package:ads_app/repositories/bill_repository.dart';
import 'package:ads_app/repositories/offer_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MultiProvider(
      providers: [
        //Bills Providers
        Provider<BillRepository>(
          create: (_) => BillRepositoryImpl(),
        ),
        BlocProvider<BillsBloc>(
          create:(context)=> BillsBloc(
            repository: context.read<BillRepository>())..add(BillsEvent.started())),
        
        //Offers Providers
        Provider<OfferRepository>(
          create: (BuildContext context) =>OfferRepositoryImpl(),),
        BlocProvider<OffersBloc>(
          create: (context)=> OffersBloc(
            repository: context.read<OfferRepository>())..add(OffersEvent.started()))

        ],
      child: Scaffold(
          bottomNavigationBar: NavigationBar(
            selectedIndex: currentPageIndex,
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            height: size.height * 0.075,
            destinations: [
              NavigationDestination(
                selectedIcon: Icon(CupertinoIcons.ticket),
                icon: Icon(CupertinoIcons.ticket_fill),
                label: 'Bills',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.store_mall_directory_outlined),
                icon: Icon(Icons.store_mall_directory),
                label: 'Stores',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.person_2_outlined),
                icon: Icon(Icons.person_2_sharp),
                label: 'Profile',
              ),
            ],
          ),
          body: currentPageIndex == 0
              ? BillsPage()
              : currentPageIndex == 1
                  ? OffersPage()
                  : ProfilePage(), ),
    );
  }
}
