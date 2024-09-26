
import 'package:ads_app/UI/bills_page/bill_item.dart';
import 'package:ads_app/models/bills.dart';
import 'package:flutter/material.dart';

class BillSheet extends StatefulWidget {
  final Bill bill;
  const BillSheet({super.key, required this.bill});

  @override
  State<BillSheet> createState() => _BillSheetState();
}

class _BillSheetState extends State<BillSheet> {


  List<TableRow> _getBillItems(){
    List<TableRow> billItems= [];

   billItems.add(TableRow(children: [
                    Text("Item",style: TextStyle(fontWeight: FontWeight.bold)),
                    Center(child: Text("Qty",style: TextStyle(fontWeight: FontWeight.bold))),
                    Text("Amount",style: TextStyle(fontWeight: FontWeight.bold))
                  ])); 
    for(var value in widget.bill.billItems)
    {
      billItems.add(BillItem(item: value.itemName, quantity: value.qty, price: value.price));
    }
    return billItems;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Container(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 18),
        color:Colors.white,
        
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Chocolate Room",style: TextStyle(fontWeight: FontWeight.bold),),
            Text("Some Wierd Address",
             maxLines: 25,
             overflow: TextOverflow.ellipsis,
             textAlign: TextAlign.center,),
             Text("Retail Invoice",style: TextStyle(fontWeight: FontWeight.bold),),
             SizedBox(
              height: 20,
             ),
             Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            
              columnWidths: { 
                0: FlexColumnWidth(200),//FixedColumnWidth(200),
                1: FlexColumnWidth(40),
                2: FlexColumnWidth(64), },
              children: _getBillItems()),
              Divider(),
              Table(
                columnWidths: { 
                0: FlexColumnWidth(200),//FixedColumnWidth(200),
                1: FlexColumnWidth(100),
                2: FlexColumnWidth(64), },
                children: [
                TableRow(
                  children: [
                  Text("Total Qty: ${widget.bill.totalItems}",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("SubTotal",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(widget.bill.subtotal.toString(),style: TextStyle(fontWeight: FontWeight.bold))
                      ]
                    ),
                TableRow(children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("CGST",style: TextStyle(fontWeight: FontWeight.bold))),
                    Align(
                      alignment: Alignment.center,
                      child: Text("${widget.bill.cgstPercentage}%",style: TextStyle(fontWeight: FontWeight.bold))),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(widget.bill.cgstAmount.toString(),style: TextStyle(fontWeight: FontWeight.bold)))
                      ]
                                   ),
                                   TableRow(children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("SGST",style: TextStyle(fontWeight: FontWeight.bold))),
                    Align(
                      alignment: Alignment.center,
                      child: Text("${widget.bill.sgstPercentage}%",style: TextStyle(fontWeight: FontWeight.bold))),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(widget.bill.sgstAmount.toString(),style: TextStyle(fontWeight: FontWeight.bold)))
                      ]
                                   ),
                      
                      
                  ],),
                  Divider(),
                  Text("round off\t+0.14"),
                  Text("GrandTotal: ${widget.bill.totalAmount}",style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        )
      )
    );
  }
}