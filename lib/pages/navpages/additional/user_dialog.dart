import 'package:flutter/material.dart';
import 'package:nomldemo/receipt.dart';
import 'package:nomldemo/pages/navpages/additional/confirn_helper.dart';

import '../../../generated/l10n.dart';

class AddItem extends StatefulWidget {
  final Function(Item) addNewItem;

  AddItem(this.addNewItem);

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {

  @override
  Widget build(BuildContext context) {

    Widget buildTextfeild(String hint, TextEditingController controller){
      return Container(
        margin: EdgeInsets.all(5),
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
          ),
          controller: controller,
        ),
      );
    }

    //TextEditingController? _noteController = new TextEditingController();
    TextEditingController? itemNameController = TextEditingController();
    TextEditingController? unitCostController = TextEditingController();
    TextEditingController? totalCostController = TextEditingController();
    TextEditingController? quantityController = TextEditingController();
    //var itemNameController = TextEditingController();
    //var unitCostController = TextEditingController();
    //var totalCostController = TextEditingController();
    //var quantityController = TextEditingController();

    return Container(
      padding: EdgeInsets.all(10),
      height: 300,
      width: 300,
      child: Column(
        children: [
          Text(S.of(context).details_pagetext_4),//Add an item
          buildTextfeild(S.of(context).details_pagetext_5, itemNameController),//Item name
          buildTextfeild(S.of(context).details_pagetext_6, unitCostController),//Unit cost
          //buildTextfeild('Total cost', totalCostController),//Total cost
          buildTextfeild(S.of(context).details_pagetext_7, quantityController),//Amount
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              //onPrimary: Colors.indigo.shade100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            onPressed: () {
            String? getValue0 = unitCostController.text;
            num? getValue1 = num.parse(unitCostController.text);
            num? getValue2 = num.parse(totalCostController.text);
            int? getValue3 = int.parse(quantityController.text);
            final newItem = Item(getValue0, getValue1, getValue2, getValue3);

            widget.addNewItem(newItem);
            Navigator.of(context).pop();
          }, child: Text(S.of(context).details_pagetext_8),)//Accept
        ],
      ),
    );
  }
}
