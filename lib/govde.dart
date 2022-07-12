import 'package:flutter/material.dart';
import 'package:resmi_tatiller/model.dart';
import 'package:resmi_tatiller/servis.dart';

class Govde extends StatefulWidget {
  const Govde({Key? key}) : super(key: key);

  @override
  State<Govde> createState() => _GovdeState();
}

class _GovdeState extends State<Govde> {
  final TextStyle _textStyle = const TextStyle(
      fontSize: 21, fontWeight: FontWeight.w400, color: Colors.black);
  List<Resmitatiller> tatil = [];
  @override
  void initState() {
    ResmiTatilServis.getTatil().then((value) {
      setState(() {
        tatil = value!;
      });
    });
    print(tatil);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: FutureBuilder(
          future: ResmiTatilServis.getTatil(),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                children: [
                  SizedBox(height: 12,),
                  Expanded(child: Text("Resmi Tatiller",style: _textStyle.copyWith(fontSize: 35,color: Colors.white,fontWeight: FontWeight.w700),)),
                  Expanded(
                    flex: 14,
                    child: ListView.builder(
                        itemCount: tatil.length,
                        itemBuilder: ((context, index) {
                          var oankiIndex = tatil[index];
                          return Card(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.indigo
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            margin: const EdgeInsets.all(6),
                            elevation: 12,
                            shadowColor: Colors.white,
                            color: Colors.amber[300],
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(oankiIndex.gun.toString(),
                                      style: _textStyle.copyWith(fontSize: 26)),
                                      SizedBox(height: 12,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Gün :", style: _textStyle),
                                      Text(oankiIndex.haftagunu.toString(),
                                          style: _textStyle),
                                    ],
                                  ),
                                   SizedBox(height: 18,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Tarih:", style: _textStyle),
                                      Text(oankiIndex.tarih.toString(), style: _textStyle),
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ),
                          );
                        })),
                  ),
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(
              child: Text(
                "İnternet Yok",
                style: _textStyle,
              ),
            );
          }),
        ),
      ),
    );
  }
}
