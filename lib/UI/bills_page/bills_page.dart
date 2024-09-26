import 'package:ads_app/UI/bills_page/bill_sheet.dart';
import 'package:ads_app/UI/bills_page/bloc/bills_bloc.dart';
import 'package:ads_app/UI/bills_page/bloc/bills_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BillsPage extends StatefulWidget {
  const BillsPage({super.key});

  @override
  State<BillsPage> createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Bills")),
            elevation: 5,
          ),
          body: BlocConsumer<BillsBloc, BillsState>(
            listener: (context, state) {
              if (state.isLoading) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "loading...",
              textAlign: TextAlign.center,
            ),
            duration: Duration(days: 1),
          ));
        } else if (state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Error: ${state.errorMessage}",
              textAlign: TextAlign.center,
            ),
            duration: Duration(days: 1),
          ));
        } else {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
        }
            },
            builder: (context, state) {
              print("UI data: ${state.data}");
              return Container(
                  color: Colors.grey[300],
                  padding: EdgeInsets.all(8),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        final isNew = state.newlyAddedIndices.contains(index);
                        return AnimatedContainer(
                          duration: Duration(seconds: 2),
                          color: isNew?Colors.yellow:Colors.grey[300],
                          child: BillSheet(bill: state.data[index]),
                          );
                      }));
            },
          ),
        );
  }
}
