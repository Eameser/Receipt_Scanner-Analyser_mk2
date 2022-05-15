import 'dart:collection';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nomldemo/main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:nomldemo/receipt.dart';
import '../../details.dart';
import '../../generated/l10n.dart';
import 'additional/confirn_helper.dart';

final formatCurrency = new NumberFormat.simpleCurrency();



class ScanPage extends StatefulWidget {
  //const ScanPage({Key? key}) : super(key: key);

  int currentIndex = 1;
  ScanPage(this.currentIndex);

  @override
  _ScanPageState createState() => _ScanPageState();
}
class _ScanPageState extends State<ScanPage> {

  //String _text = '';
  PickedFile? _image;
  final picker = ImagePicker();
  VisionText? visionText;

  PageController? controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(initialPage: widget.currentIndex);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(S.of(context).first_pagetext_1, // Load your receipt
          style: TextStyle(
              fontSize: 28,
            color: Theme.of(context).cardColor,
          )),
      //backgroundColor: Colors.lime.shade200,
      backgroundColor: Theme.of(context).primaryColor,
      centerTitle: true,
    ),

    body: Container(
      //color: Colors.lightGreen.shade800,
      //color: Colors.indigo.shade50,
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: Column(
          children: [
            Spacer(flex: 1,),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      //color: Colors.lightGreen.shade300.withOpacity(0.3),
                      color: Theme.of(context).accentColor,
                    ),
                    height: 460,
                    width: 320,
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 320,
                          child: _image != null
                              ? Image.file(
                            File(_image!.path),//добавил !
                            fit: BoxFit.fitWidth,
                          )
                              : Container(
                                //color: Colors.amber.shade200,
                                  child: Image(
                                    image: AssetImage('1.jpg'),
                                  ),

                          ),
                        ),
                        Container(
                          //padding: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 25, 0, 10),
                                  height: 120,
                                  width: 140,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Theme.of(context).buttonColor,
                                      //onPrimary: Colors.indigo.shade100,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                      )
                                    ),
                                      onPressed: getImageCamera,
                                      child: Text(S.of(context).first_pagetext_2, //Camera
                                          style: TextStyle(
                                              fontSize: 24
                                          )),
                                  ),
                                ),
                                Spacer(flex: 1),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 25, 20, 10),
                                  height: 120,
                                  width: 150,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Theme.of(context).buttonColor,
                                          //onPrimary: Colors.indigo.shade100,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.0),
                                          )
                                      ),
                                      onPressed: getImageGallery,
                                      child: Text(S.of(context).first_pagetext_3,  //Gallery
                                          style: TextStyle(
                                              fontSize: 22
                                          ))
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    )
                )
            ),
            Spacer(flex: 1,),
            Container(
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                //color: Colors.lightGreen.shade300.withOpacity(0.3),
                color: Theme.of(context).accentColor,
              ),
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              //color: Colors.indigo.shade100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).buttonColor,
                    //onPrimary: Colors.indigo.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
                  onPressed: scanText,
                  child: Text(S.of(context).first_pagetext_4, //SCAN
                      style: TextStyle(
                          fontSize: 25
                      ))
              ),
            ),
            Spacer(flex: 1,),
          ],

        ),
      ),
    ),


  );

  Future scanText() async {
    //showDialog(
    // context: context,
    //  builder: Center(
    //   child: CircularProgressIndicator(),
    // ));
    final FirebaseVisionImage visionImage =
    FirebaseVisionImage.fromFile(File(_image!.path));//добавил !
    final TextRecognizer textRecognizer =
    FirebaseVision.instance.textRecognizer();
    final VisionText localVisionText =
    await textRecognizer.processImage(visionImage);

    //for (TextBlock block in localVisionText.blocks) {
    //  for (TextLine line in block.lines) {
    //    _text += line.text! + '\n';
    //  }
    //}
    setState(() {//can't put await inside because it can only be in async
      visionText = localVisionText;
    });

    Navigator.of(context).pop();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Details(visionText)));
  }

  Future getImageCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = pickedFile;
      } else {
        print('No image selected');
      }
    });
  }
  Future getImageGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = pickedFile;
      } else {
        print('No image selected');
      }
    });
  }
}